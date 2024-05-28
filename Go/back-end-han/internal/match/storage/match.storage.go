package storage

import (
	"errors"
	"math/rand"
	inter "rah/internal/search/interface"
	"time"

	"gorm.io/gorm"
)

var ErrNoDocumentsFound = errors.New("no documents found")
var ErrUserNotFound = errors.New("no user found")

func MatchSystem(db *gorm.DB) (*inter.Document, error) {

	var documents []*inter.Document
	if err := db.Find(&documents).Error; err != nil {
		return nil, err
	}
	if len(documents) == 0 {
		return nil, ErrNoDocumentsFound
	}

	rand.Seed(time.Now().UnixNano())

	randomIndex := rand.Intn(len(documents))

	return documents[randomIndex], nil
}

func Likes(db *gorm.DB, documentID, userID uint, adjustment string) (*inter.Feedback, error) {
	var feedback inter.Feedback
	if err := db.First(&feedback, documentID).Error; err != nil {

		return nil, err
	}

	var user inter.User
	if err := db.First(&user, userID).Error; err != nil {
		return nil, err
	}

	feedback.Points += 1
	feedback.Adjustment = adjustment

	if err := db.Save(&feedback).Error; err != nil {
		return nil, err
	}

	return &feedback, nil
}
