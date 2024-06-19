package app

import (
	"github.com/andrewarrow/feedback/router"
)

func HandleBook(c *router.Context, second, third string) {
	if second == "" && third == "" && c.Method == "GET" {
		handleBookIndex(c)
		return
	}
	if second == "bookings" && third == "" && c.Method == "GET" {
		handleBookings(c)
		return
	}
	if second == "business" && third != "" && c.Method == "GET" {
		handleBusinessShow(c, third)
		return
	}
	if second == "register" && third == "" && c.Method == "GET" {
		handleBookRegister(c)
		return
	}
	if second == "login" && third == "" && c.Method == "GET" {
		handleBookLogin(c)
		return
	}
	if second == "book" && third == "" && c.Method == "POST" {
		handleBookBook(c)
		return
	}
	if second == "register" && third == "" && c.Method == "POST" {
		router.HandleCreateUserAutoForm(c)
		return
	}
	if second == "login" && third == "" && c.Method == "POST" {
		router.HandleCreateSessionAutoForm(c)
		return
	}
	if second == "logout" && third == "" && c.Method == "DELETE" {
		router.DestroySession(c)
		return
	}
	c.NotFound = true
}
func handleBookIndex(c *router.Context) {
	send := map[string]any{}
	items := c.All("business", "order by updated_at desc", "")
	send["items"] = items
	c.SendContentInLayout("book.html", send, 200)
}

func handleBookRegister(c *router.Context) {
	send := map[string]any{}
	c.SendContentInLayout("register.html", send, 200)
}
func handleBookLogin(c *router.Context) {
	send := map[string]any{}
	c.SendContentInLayout("login.html", send, 200)
}

func handleBookRegisterPost(c *router.Context) {
	c.SendContentAsJson("ok", 200)
}
