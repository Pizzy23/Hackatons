package db

import (
	"gorm.io/gorm"
)

type User struct {
	gorm.Model
	Name     string `gorm:"size:255;not null"`
	RG       string `gorm:"size:20"`
	Email    string `gorm:"size:255;not null;unique"`
	Password string `gorm:"size:255;not null"`
}

type Point struct {
	gorm.Model
	UserID uint `gorm:"not null"`
	Points int  `gorm:"not null"`
	User   User `gorm:"foreignKey:UserID"`
}

type Reward struct {
	gorm.Model
	RewardName     string `gorm:"size:255;not null"`
	PointsRequired int    `gorm:"not null"`
}

type UserReward struct {
	UserID   uint   `gorm:"primaryKey"`
	RewardID uint   `gorm:"primaryKey"`
	User     User   `gorm:"foreignKey:UserID"`
	Reward   Reward `gorm:"foreignKey:RewardID"`
}

type Feedback struct {
	gorm.Model
	DocumentID uint `gorm:"not null"`
	UserID     uint `gorm:"not null"`
	Points     int
	Adjustment string   `gorm:"type:text"`
	Document   Document `gorm:"foreignKey:DocumentID"`
	User       User     `gorm:"foreignKey:UserID"`
}

type Document struct {
	gorm.Model
	UserID      uint   `gorm:"not null"`
	Data        []byte `gorm:"type:longblob"`
	Description string `gorm:"type:text"`
	Actor       string `gorm:"size:255"`
	User        User   `gorm:"foreignKey:UserID"`
}
