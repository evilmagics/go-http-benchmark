package main

import (
	"net/http"

	"github.com/evilmagics/go-http-benchmark/services"
	"github.com/labstack/echo/v4"
)

func RegisterRoutes(app *echo.Echo) {
	app.GET("/hello-world", HandleHelloWorld)
	app.GET("/structured-messages", HandleStructuredMessages)
	app.POST("/large-process", HandleLargeProcess)
}

func HandleHelloWorld(c echo.Context) error {
	return c.String(http.StatusOK, services.HelloWorld())
}

func HandleStructuredMessages(c echo.Context) error {
	return c.JSON(http.StatusOK, services.StructuredMessages())
}

func HandleLargeProcess(c echo.Context) error {
	return c.JSON(http.StatusOK, services.LargeProcess())
}
