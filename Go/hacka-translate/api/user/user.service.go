package user

import (
	"hacka/model"
	"hacka/util"
	"net/http"

	"github.com/gin-gonic/gin"
)

func CreateUser(c *gin.Context, data map[string]interface{}) {
	valid := util.ValidatePassword(data["password"].(string))
	if valid {
		hashedPassword, err := util.HashPassword(data["password"].(string))
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}

		filters := map[string]interface{}{
			"Nickname": data["nickname"].(string),
			"Email":    data["email"].(string),
			"Password": hashedPassword,
			"Language": data["language"].(string),
		}

		result, err := AddNewUser(model.DB, filters)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		if result.Error != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": result.Error.Error()})
			return
		}
		c.JSON(http.StatusOK, gin.H{"message": "Register successfully"})
	} else {
		c.JSON(http.StatusBadRequest, gin.H{"message": "Password needs an uppercase letter, a lowercase letter, 8 digits and a number"})
	}
}

func SearchUserByEmail(c *gin.Context, data map[string]interface{}) {
	validEmail := util.ValidateEmail(data["email"].(string))
	if validEmail {
		result, err := FindUser(model.DB, data)
		if err != nil {
			c.JSON(http.StatusNotFound, gin.H{"message": "User not found"})
		}
		if password, ok := result["password"].(string); ok {
			validPassword := util.CheckPassword(data["password"].(string), password)
			if validPassword == nil {
				filters := map[string]interface{}{
					"Nickname": result["nickname"].(string),
					"Email":    result["email"].(string),
					"Language": result["language"].(string),
				}
				c.JSON(http.StatusOK, gin.H{"message": filters})
			}
			c.JSON(http.StatusBadRequest, gin.H{"message": "Password dont match"})
		}
		c.JSON(http.StatusNotFound, gin.H{"message": "E-mail dont exist"})
	}
}
