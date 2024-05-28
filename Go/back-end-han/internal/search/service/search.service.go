package service

import (
	"fmt"
	"io/ioutil"
	"mime/multipart"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/gin-gonic/gin"

	"rah/db"
	inter "rah/internal/search/interface"
	"rah/internal/search/storage"
)

func PdfMani(c *gin.Context, file *multipart.FileHeader, input inter.DocumentInsert) {
	dir := "uploads"
	if _, err := os.Stat(dir); os.IsNotExist(err) {
		err := os.Mkdir(dir, os.ModePerm)
		if err != nil {
			c.Set("Response", "Failed to create upload directory")
			c.Status(http.StatusInternalServerError)
			return
		}
	}

	filePath := filepath.Join(dir, file.Filename)
	if err := c.SaveUploadedFile(file, filePath); err != nil {
		c.Set("Response", "Failed to save the file")
		c.Status(http.StatusInternalServerError)
		return
	}

	err := pdfToImage()
	if err != nil {
		c.Set("Response", "Failed to convert PDF to image")
		c.Status(http.StatusInternalServerError)
		return
	}
	err = uploadImage(input, file.Filename)
	if err != nil {
		c.Set("Response", "Failed to convert PDF to image")
		c.Status(http.StatusInternalServerError)
		return
	}

	c.Set("Response", "File uploaded successfully")
	c.JSON(http.StatusOK, gin.H{"message": "File uploaded successfully", "path": filePath})
}

func pdfToImage() error {
	dir := "C:/Users/luizc/ProjectWorks/Back/Go/Hackaton/back-end-han/pdftoimage"
	cmd := exec.Command("node", "index.js")
	cmd.Dir = dir
	cmd.Stderr = os.Stderr

	err := cmd.Run()
	if err != nil {
		if exitError, ok := err.(*exec.ExitError); ok {
			exitCode := exitError.ExitCode()
			fmt.Printf("O comando terminou com código de saída %d\n", exitCode)
		} else {
			fmt.Println("Erro ao executar o comando:", err)
		}
		return err
	}
	return nil
}

func uploadImage(input inter.DocumentInsert, filename string) error {
	currentDir, err := os.Getwd()
	if err != nil {
		return err
	}
	outputDir := filepath.Join(currentDir, "output")

	files, err := ioutil.ReadDir(outputDir)

	if err != nil {
		return err
	}
	for _, fileInfo := range files {
		if fileInfo.IsDir() {
			pdfDir := filepath.Join(outputDir, fileInfo.Name())

			pdfFiles, err := ioutil.ReadDir(pdfDir)
			if err != nil {
				return err
			}
			for _, pdfFile := range pdfFiles {
				imagePath := filepath.Join(pdfDir, pdfFile.Name())

				imageData, err := ioutil.ReadFile(imagePath)
				if err != nil {
					return err
				}

				document := inter.Document{
					Data:        imageData,
					Description: input.Description,
					Actor:       input.Actor,
				}

				_, err = storage.PutImage(db.Repo, document, input.Email)
				if err != nil {
					return err
				}

				if err := os.Remove(imagePath); err != nil {
					return err
				}
			}
		}
	}
	return nil
}
