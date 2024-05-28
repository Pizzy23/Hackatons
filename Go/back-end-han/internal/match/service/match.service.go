package service

import (
	"net/http"
	"rah/db"
	"rah/internal/match/storage"

	"github.com/gin-gonic/gin"
)

func MatchSystem(c *gin.Context) {
	meet, err := storage.MatchSystem(db.Repo)
	if err != nil {
		c.Set("Error", "Failed to matching...")
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", meet)
	c.Status(http.StatusOK)
}

func LikeSystem(c *gin.Context, documentID, userID uint, adjustment string) {
	like, err := storage.Likes(db.Repo, documentID, userID, adjustment)
	if err != nil {
		c.Set("Error", "Failed to like")
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", like)
	c.Status(http.StatusOK)
}
