package main

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/evilmagics/go-http-benchmark/services"
)

func RegisterRoutes() {
	http.HandleFunc("/hello-world", HandleHelloWorld)
	http.HandleFunc("/structured-messages", HandleStructuredMessages)
	http.HandleFunc("/large-process", HandleLargeProcess)
}

func HandleHelloWorld(w http.ResponseWriter, r *http.Request) {
	switch r.Method {
	case "GET":
		w.WriteHeader(http.StatusOK)
		fmt.Fprint(w, services.HelloWorld())
	default:
		w.WriteHeader(http.StatusMethodNotAllowed)
		fmt.Println("StatusMethodNotAllowed")
	}
}

func HandleStructuredMessages(w http.ResponseWriter, r *http.Request) {
	switch r.Method {
	case "GET":
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusOK)

		json.NewEncoder(w).Encode(services.StructuredMessages())
	default:
		w.WriteHeader(http.StatusMethodNotAllowed)
	}
}

func HandleLargeProcess(w http.ResponseWriter, r *http.Request) {
	switch r.Method {
	case "POST":
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusOK)

		json.NewEncoder(w).Encode(services.LargeProcess())
	default:
		w.WriteHeader(http.StatusMethodNotAllowed)
	}
}
