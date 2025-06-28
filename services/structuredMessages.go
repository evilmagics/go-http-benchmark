package services

func StructuredMessages() map[string]interface{} {
	return map[string]interface{}{
		"code":    0,
		"message": "success",
		"data": map[string]interface{}{
			"name": "John Doe",
			"age":  30,
		},
	}
}
