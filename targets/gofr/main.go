package main

import "gofr.dev/pkg/gofr"

func main() {
	app := gofr.New()

	RegisterRoutes(app)

	app.Run()
}
