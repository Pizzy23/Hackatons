package main

import (
	"hacka/model"
	"hacka/module"
)

func main() {
	r := module.SetupRouter()

	model.ConnectDatabase()
	r.Run(":8080")
}
