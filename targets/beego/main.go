package main

import (
	"github.com/beego/beego/v2/server/web"
	"github.com/evilmagics/go-http-benchmark/config"
)

func main() {
	RegisterRoutes()

	web.Run(config.HostBeego)
}
