package comunity

import (
	inter "rah/internal/comunity/interface"
	service "rah/internal/comunity/service"
	errors "rah/middleware/interfaces/errors"

	"github.com/gin-gonic/gin"
)

// @Summary Adicionar usuario
// @Description Adicionar um novo usuario
// @Tags User
// @Accept json
// @Produce json
// @Param request body inter.User true "Dados para o arquivo"
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {object} inter.User
// @Failure 500 {object} errors.InternalServerError
// @Router /add-user [post]
func CreateUser(c *gin.Context) {
	var body inter.User
	if err := c.BindJSON(&body); err != nil {
		c.Set("Response", "Paramets is invalid, need a json")
		c.Status(errors.StatusNotAcceptable)
		return
	}
	service.CreateUser(c, body)

}
