package main

import (
	"net/http"

	"github.com/beego/beego/v2/server/web"
	"github.com/beego/beego/v2/server/web/context"
	"github.com/evilmagics/go-http-benchmark/services"
)

func RegisterRoutes() {
	web.Get("/hello-world", HandleHelloWorld)
	web.Get("/structured-messages", HandleStructuredMessages)
	web.Post("/large-process", HandleLargeProcess)
}

func HandleHelloWorld(c *context.Context) {
	c.Output.SetStatus(http.StatusOK)
	c.Output.Body([]byte(services.HelloWorld()))
}

func HandleStructuredMessages(c *context.Context) {
	c.Output.SetStatus(http.StatusOK)
	c.Output.JSON(services.StructuredMessages(), false, false)
}

func HandleLargeProcess(c *context.Context) {
	c.Output.SetStatus(http.StatusOK)
	c.Output.JSON(services.StructuredMessages(), false, false)
}
