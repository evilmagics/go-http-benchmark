package main

import (
	"github.com/evilmagics/go-http-benchmark/config"
	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	RegisterRoutes(e)

	e.Start(config.HostEcho)
}
