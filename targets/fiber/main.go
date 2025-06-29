package main

import (
	"github.com/evilmagics/go-http-benchmark/config"
	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()

	RegisterRoutes(app)

	if err := app.Listen(config.HostFiber); err != nil {
		panic(err)
	}
}
