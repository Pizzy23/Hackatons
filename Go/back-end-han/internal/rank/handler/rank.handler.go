package rank

import (
	"net/http"
	inter "rah/internal/rank/interface"
	"rah/internal/rank/service"
	"strconv"

	"github.com/gin-gonic/gin"
)

// @Summary Add points
// @Description Adiciona pontos novos dentro do usuario
// @Tags Rank
// @Accept json
// @Produce json
// @Param email header string true "Email do usuario"
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {object} inter.Feedback "New rank is be update"
// @Failure 500 {object} errors.InternalServerError
// @Router /new-rank [put]
func NewRank(c *gin.Context) {
	email := c.GetHeader("Email")
	service.AddPoints(c, email)
}

// @Summary Reset all rank
// @Description Reseta o rank de todos os usuarios
// @Tags Rank
// @Accept json
// @Produce json
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {string} json "{"message": "Reset all ranks sucess"}"
// @Failure 500 {object} errors.InternalServerError
// @Router /reset-ranks [delete]
func ResetRank(c *gin.Context) {
	service.ResetRanks(c)
}

// @Summary All awards
// @Description Pega todas as recompensas
// @Tags Rank
// @Accept json
// @Produce json
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {object} inter.Award "Award"
// @Failure 500 {object} errors.InternalServerError
// @Router /award [get]
func Award(c *gin.Context) {
	service.GetAward(c)
}

// @Summary Best in rank
// @Description Pega o usuario com o maior rank
// @Tags Rank
// @Accept json
// @Produce json
// @Param email header string true "Email do usuario"
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {object} inter.User "Best in ranking"
// @Failure 500 {object} errors.InternalServerError
// @Router /best-user [get]
func BestRank(c *gin.Context) {
	service.GetBestUser(c)
}

// @Summary New awards
// @Description Adiciona uma nova recompensa
// @Tags Rank
// @Accept json
// @Produce json
// @Param RewardName header string true "Nome da recompensa"
// @Param PointsRequired  header string true "Pontos para o usuario"
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {object} inter.Award "Nova recompensa adicionada"
// @Failure 500 {object} errors.InternalServerError
// @Router /add-award [post]
func AddAward(c *gin.Context) {
	rewardName := c.GetHeader("RewardName")
	pointsRequired := c.GetHeader("PointsRequired")

	num, err := strconv.Atoi(pointsRequired)

	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusNotAcceptable)
	}

	data := inter.Award{
		RewardName:     rewardName,
		PointsRequired: num,
	}
	service.AddAward(c, data)
}
