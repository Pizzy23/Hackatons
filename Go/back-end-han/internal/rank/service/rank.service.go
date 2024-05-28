package service

import (
	"net/http"
	"rah/db"
	inter "rah/internal/rank/interface"
	"rah/internal/rank/storage"

	"github.com/gin-gonic/gin"
)

func AddPoints(c *gin.Context, email string) {
	user, err := storage.SearchUser(db.Repo, email)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusInternalServerError)
		return
	}
	oldPoints, err := storage.SearchPoints(db.Repo, user.ID)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusInternalServerError)
		return
	}
	data := inter.Point{
		UserID: user.ID,
		Points: oldPoints.Points + 3,
	}
	points, err := storage.AddPoints(db.Repo, data)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", points)
	c.Status(http.StatusOK)
}

func GetBestUser(c *gin.Context) {
	best, err := storage.GetBestUser(db.Repo)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", best)
	c.Status(http.StatusOK)
}

func ResetRanks(c *gin.Context) {
	err := storage.ResetRanks(db.Repo)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", "All ranks reset")
	c.Status(http.StatusOK)
}

func GetAward(c *gin.Context) {
	award, err := storage.GetAllAward(db.Repo)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", award)
	c.Status(http.StatusOK)
}

func AddAward(c *gin.Context, input inter.Award) {
	award, err := storage.AddAward(db.Repo, input)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusInternalServerError)
		return
	}
	c.Set("Response", award)
	c.Status(http.StatusOK)
}
