package main

import (
	"github.com/evilmagics/go-http-benchmark/config"
	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	RegisterRoutes(r)

	if err := r.Run(config.HostGin); err != nil {
		panic(err)
	}
}
