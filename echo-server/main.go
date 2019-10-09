package main

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	e.GET("/", func(c echo.Context) error {
		m := make(map[string]string)

		ip := c.RealIP()
		if ip != "" {
			m["ip"] = ip
		}

		return c.JSON(http.StatusOK, m)
	})

	e.Logger.Fatal(e.Start("127.0.0.1:2019"))
}
