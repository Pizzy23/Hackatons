package storage

import (
	"rah/db"
	inter "rah/internal/search/interface"

	"gorm.io/gorm"
)

func SearchUser(q *gorm.DB, email string) (*db.User, error) {
	var user db.User
	if err := q.Where("email = ?", email).First(&user).Error; err != nil {
		return nil, err
	}
	return &user, nil
}

func PutImage(db *gorm.DB, data inter.Document, email string) (*inter.Document, error) {
	user, err := SearchUser(db, email)
	if err != nil {
		return nil, err
	}

	document := inter.Document{
		UserID:      user.ID,
		Data:        data.Data,
		Description: data.Description,
		Actor:       data.Actor,
		User:        *user,
	}

	if err := db.Create(&document).Error; err != nil {
		return nil, err
	}
	return &document, nil
}
