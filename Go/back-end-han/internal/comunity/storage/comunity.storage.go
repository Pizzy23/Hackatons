package storage

import (
	"rah/db"
	inter "rah/internal/comunity/interface"

	"gorm.io/gorm"
)

func CreateUser(q *gorm.DB, data inter.User) (*db.User, error) {
	user := &db.User{
		Name:     data.Name,
		RG:       data.RG,
		Email:    data.Email,
		Password: data.Password,
	}
	result := q.Create(&user)
	if result.Error != nil {
		return user, result.Error
	}
	return user, nil

}
