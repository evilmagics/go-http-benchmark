package main

import (
	"github.com/evilmagics/go-http-benchmark/services"
	"gofr.dev/pkg/gofr"
)

func RegisterRoutes(app *gofr.App) {
	app.GET("/hello-world", HandleHelloWorld)
	app.GET("/structured-messages", HandleStructuredMessages)
	app.POST("/large-process", HandleLargeProcess)
}

func HandleHelloWorld(c *gofr.Context) (any, error) {
	return services.HelloWorld(), nil
}

func HandleStructuredMessages(c *gofr.Context) (any, error) {
	return services.StructuredMessages(), nil
}

func HandleLargeProcess(c *gofr.Context) (any, error) {
	return services.LargeProcess(), nil
}
