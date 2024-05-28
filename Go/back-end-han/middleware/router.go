package middleware

import (
	_ "rah/docs"
	comunity "rah/internal/comunity/handler"
	match "rah/internal/match/handler"
	rank "rah/internal/rank/handler"
	search "rah/internal/search/handler"

	"github.com/gin-gonic/gin"
	swaggerfiles "github.com/swaggo/files"
	ginSwagger "github.com/swaggo/gin-swagger"
)

// @title
// @version 1.0
// @description API
// @termsOfService http://swagger.io/terms/
// @host localhost:8080
// @BasePath /api
func SetupRouter() *gin.Engine {
	r := gin.Default()

	r.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerfiles.Handler))

	//Use response, but not Token
	r.Use(ResponseHandler())

	r.GET("/token", generateTokenHandler)

	auth := r.Group("/api")
	auth.Use(authMiddleware)
	//Response and token service
	auth.POST("/upload-pdf", search.UploadPDF)
	auth.POST("/add-user", comunity.CreateUser)
	auth.POST("/test-token", testeToken)
	auth.POST("/add-award", rank.AddAward)

	auth.GET("/award", rank.Award)
	auth.GET("/best-rank", rank.BestRank)
	auth.GET("/match", match.MatchSystem)

	auth.PUT("/like", match.LikeSystem)
	auth.PUT("/new-rank", rank.NewRank)

	auth.DELETE("/reset-ranks", rank.ResetRank)
	return r
}
