package model

type Login struct {
	IDLogin  int  `gorm:"column:idLogin;primaryKey;autoIncrement" json:"idLogin"`
	IsLogged int8 `gorm:"column:IsLogged;not null" json:"IsLogged"`
}
