package services

import "time"

func LargeProcess() map[string]interface{} {
	// Simulate a large process like database query or file processing
	time.Sleep(time.Second)

	return map[string]interface{}{
		"code":    0,
		"message": "success",
		"data": map[string]string{
			"transactionId": "123456789",
			"status":        "completed",
		},
	}
}
