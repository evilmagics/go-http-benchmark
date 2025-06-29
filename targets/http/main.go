package main

import (
	"fmt"
	"net/http"

	"github.com/evilmagics/go-http-benchmark/config"
)

func main() {
	RegisterRoutes()

	fmt.Printf("Server starting on %s \n", config.HostHttp)
	if err := http.ListenAndServe(config.HostHttp, nil); err != nil {
		panic(err)
	}
}
