package main

import (
	"github.com/evilmagics/go-http-benchmark/services"
	"github.com/gofiber/fiber/v2"
)

func RegisterRoutes(app *fiber.App) {
	app.Get("/hello-world", HandleHelloWorld)
	app.Get("/structured-messages", HandleStructuredMessages)
	app.Post("/large-process", HandleLargeProcess)
}

func HandleHelloWorld(c *fiber.Ctx) error {
	return c.Status(fiber.StatusOK).SendString(services.HelloWorld())
}

func HandleStructuredMessages(c *fiber.Ctx) error {
	return c.Status(fiber.StatusOK).JSON(services.StructuredMessages())
}

func HandleLargeProcess(c *fiber.Ctx) error {
	return c.Status(fiber.StatusOK).JSON(services.LargeProcess())
}
