package search

import (
	"net/http"
	inter "rah/internal/search/interface"
	"rah/internal/search/service"

	"github.com/gin-gonic/gin"
)

// @Summary Upload de PDF
// @Description Recebe um arquivo PDF e salva no servidor
// @Tags PDF
// @Accept json
// @Produce json
// @Param Email header string true "Email do usuario"
// @Param Description header string true "Descrição do objeto"
// @Param Actor header string true "Autor"
// @Param pdf formData file true "Arquivo PDF a ser enviado"
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {string} json "{"message": "File uploaded successfully"}"
// @Failure 500 {object} errors.InternalServerError
// @Router /upload-pdf [post]
func UploadPDF(c *gin.Context) {
	email := c.GetHeader("Email")
	desc := c.GetHeader("Description")
	actor := c.GetHeader("Actor")

	data := inter.DocumentInsert{
		Email:       email,
		Description: desc,
		Actor:       actor,
	}

	file, err := c.FormFile("pdf")

	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusNotAcceptable)
		return
	}

	service.PdfMani(c, file, data)
}
