package app

import (
	"github.com/andrewarrow/feedback/router"
)

func HandleHeart(c *router.Context, second, third string) {
	if second == "" && third == "" && c.Method == "GET" {
		handleHeartIndex(c)
		return
	}
	if second == "about-us" && third == "" && c.Method == "GET" {
		handleSpaceAboutUs(c)
		return
	}
	if second == "privacy" && third == "" && c.Method == "GET" {
		handleSpacePrivacy(c)
		return
	}
	if second == "terms" && third == "" && c.Method == "GET" {
		handleSpaceTerms(c)
		return
	}
	if second == "register" && third == "" && c.Method == "GET" {
		handleHeartRegister(c)
		return
	}
	if second == "login" && third == "" && c.Method == "GET" {
		handleHeartLogin(c)
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
func handleHeartIndex(c *router.Context) {
	send := map[string]any{}
	items := c.All("business", "order by updated_at desc", "")
	send["items"] = items
	c.SendContentInLayout("book.html", send, 200)
}

func handleHeartRegister(c *router.Context) {
	send := map[string]any{}
	c.SendContentInLayout("register.html", send, 200)
}
func handleHeartLogin(c *router.Context) {
	send := map[string]any{}
	c.SendContentInLayout("login.html", send, 200)
}

func handleHeartRegisterPost(c *router.Context) {
	c.SendContentAsJson("ok", 200)
}
func handleSpacePrivacy(c *router.Context) {
	send := map[string]any{}
	c.SendContentInLayout("privacy.html", send, 200)
}
func handleSpaceTerms(c *router.Context) {
	send := map[string]any{}
	c.SendContentInLayout("terms.html", send, 200)
}
func handleSpaceAboutUs(c *router.Context) {
	send := map[string]any{}
	c.SendContentInLayout("about_us.html", send, 200)
}
