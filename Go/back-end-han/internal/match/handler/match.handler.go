package match

import (
	"net/http"
	"rah/internal/match/service"
	inter "rah/internal/search/interface"
	"strconv"

	"github.com/gin-gonic/gin"
)

// @Summary Upload de PDF
// @Description Recebe um arquivo PDF e salva no servidor
// @Tags Match
// @Accept json
// @Produce json
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {object} inter.Feedback "Matching"
// @Failure 500 {object} errors.InternalServerError
// @Router /match [get]
func MatchSystem(c *gin.Context) {
	service.MatchSystem(c)
}

// @Summary Upload de PDF
// @Description Recebe um arquivo PDF e salva no servidor
// @Tags Match
// @Accept json
// @Produce json
// @Param documentID header string true "Id Do documento"
// @Param userID header string true "Id do usuario"
// @Param adjustment header string true "Ajuste"
// @Param Authorization header string true "Token de autenticação (Colocar o token deixando o Bearer)" default(Bearer <token>)
// @Success 200 {string} json "{"message": "File uploaded successfully"}"
// @Failure 500 {object} errors.InternalServerError
// @Router /like [put]
func LikeSystem(c *gin.Context) {
	doc := c.GetHeader("DocumentID")
	user := c.GetHeader("UserID")
	adjus := c.GetHeader("adjustment")

	docID, err := strconv.ParseUint(doc, 10, 64)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusNotAcceptable)
	}

	userID, err := strconv.ParseUint(user, 10, 64)
	if err != nil {
		c.Set("Error", err)
		c.Status(http.StatusNotAcceptable)
	}

	data := inter.Feedback{
		DocumentID: uint(docID),
		UserID:     uint(userID),
		Adjustment: adjus,
	}
	service.LikeSystem(c, data.DocumentID, data.UserID, data.Adjustment)

}
