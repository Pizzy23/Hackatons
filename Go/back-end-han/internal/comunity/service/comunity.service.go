package service

import (
	"net/http"
	"rah/db"
	inter "rah/internal/comunity/interface"
	"rah/internal/comunity/storage"

	"github.com/gin-gonic/gin"
)

func CreateUser(c *gin.Context, body inter.User) {
	result, err := storage.CreateUser(db.Repo, body)
	if err != nil {
		c.Set("Error", err.Error())
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", result)
	c.Status(http.StatusOK)
}
