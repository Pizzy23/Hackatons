package user

import (
	"hacka/model"

	"gorm.io/gorm"
)

func AddNewUser(q *gorm.DB, data map[string]interface{}) (*gorm.DB, error) {
	user := model.User{
		Nickname: data["Nickname"].(string),
		Email:    data["Email"].(string),
		Password: string(data["Password"].([]byte)),
		Language: data["Language"].(string),
	}
	result := q.Create(&user)

	return result, result.Error

}

func FindUser(q *gorm.DB, data map[string]interface{}) (map[string]interface{}, error) {
	user := model.User{
		Email: data["email"].(string),
	}
	result := map[string]interface{}{}
	err := q.Model(&user).First(&result).Error
	return result, err
}
