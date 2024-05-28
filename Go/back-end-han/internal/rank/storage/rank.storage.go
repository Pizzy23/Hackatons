package storage

import (
	"rah/db"
	inter "rah/internal/rank/interface"

	"gorm.io/gorm"
)

func AddPoints(q *gorm.DB, input inter.Point) (*inter.Point, error) {
	var points inter.Point
	if err := q.Save(&points).Error; err != nil {
		return nil, err
	}

	return &points, nil
}

func GetBestUser(q *gorm.DB) (*inter.User, error) {
	var point inter.Point
	if err := q.Order("points desc").First(&point).Error; err != nil {
		return nil, err
	}
	var user inter.User
	if err := q.Where("user_id = ?", point.UserID).First(&user).Error; err != nil {
		return nil, err
	}
	return &user, nil
}

func GetAllAward(q *gorm.DB) (*[]inter.Award, error) {
	var awards []inter.Award
	if err := q.Find(&awards).Error; err != nil {
		return nil, err
	}
	return &awards, nil
}

func AddAward(q *gorm.DB, input inter.Award) (*inter.Award, error) {
	var award inter.Award
	if err := q.Save(&award).Error; err != nil {
		return nil, err
	}

	return &award, nil
}

func ResetRanks(q *gorm.DB) error {
	var points []inter.Point
	if err := q.Find(&points).Error; err != nil {
		return err
	}
	for i := range points {
		points[i].Points = 0
		if err := q.Save(&points[i]).Error; err != nil {
			return err
		}
	}
	return nil
}

func SearchUser(q *gorm.DB, email string) (*db.User, error) {
	var user db.User
	if err := q.Where("email = ?", email).First(&user).Error; err != nil {
		return nil, err
	}
	return &user, nil
}

func SearchPoints(q *gorm.DB, userId uint) (*inter.Point, error) {
	var point inter.Point
	if err := q.Where("UserID = ?", userId).First(&point).Error; err != nil {
		return nil, err
	}
	return &point, nil
}
