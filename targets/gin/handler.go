package main

import (
	"net/http"

	"github.com/evilmagics/go-http-benchmark/services"
	"github.com/gin-gonic/gin"
)

func RegisterRoutes(app *gin.Engine) {
	app.GET("/hello-world", HandleHelloWorld)
	app.GET("/structured-messages", HandleStructuredMessages)
	app.POST("/large-process", HandleLargeProcess)
}

func HandleHelloWorld(c *gin.Context) {
	c.String(http.StatusOK, services.HelloWorld())
}

func HandleStructuredMessages(c *gin.Context) {
	c.JSON(http.StatusOK, services.StructuredMessages())
}

func HandleLargeProcess(c *gin.Context) {
	c.JSON(http.StatusOK, services.LargeProcess())
}
