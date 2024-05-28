package user

import (
	"github.com/gin-gonic/gin"
)

// @Summary Criar alimentos
// @Description Criar novos alimentos :)
// @Accept json
// @Produce json
// @Param name query string true "Nome do alimento"
// @Param description query string false "Descrição do alimento"
// @Success 200 {string} json "{"message": "Registro adicionado com sucesso"}"
// @Router /api/v1/user [post]
func PostUser(c *gin.Context) {
	nickname := c.GetHeader("Nickname")
	email := c.GetHeader("Email")
	password := c.GetHeader("Password")
	language := c.GetHeader("Language")

	filters := map[string]interface{}{
		"nickname": nickname,
		"email":    email,
		"password": password,
		"language": language,
	}
	CreateUser(c, filters)
}
func GetUser(c *gin.Context) {
	email := c.GetHeader("Email")
	password := c.GetHeader("Password")

	filters := map[string]interface{}{
		"email":    email,
		"password": password,
	}
	SearchUserByEmail(c, filters)
}
