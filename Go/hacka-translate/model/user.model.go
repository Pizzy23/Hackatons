package model

type User struct {
	IDUser   int    `gorm:"column:idUser;primaryKey;autoIncrement" json:"idUser"`
	LoginID  int    `gorm:"column:Login_idLogin;not null" json:"Login_idLogin"`
	Nickname string `gorm:"column:nickname;not null" json:"nickname"`
	Email    string `gorm:"column:e-mail;not null;unique" json:"e-mail"`
	Password string `gorm:"column:password;not null" json:"password"`
	Language string `gorm:"column:language;not null;default:'English'" json:"language"`
}
