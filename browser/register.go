package browser

import (
	"github.com/andrewarrow/feedback/wasm"
)

var Global *wasm.Global
var Document *wasm.Document

func RegisterEvents() {
	LogoutEvents()
	if Global.Start == "welcome.html" {
		//LoginEvents()
	} else if Global.Start == "login.html" {
		Global.AutoForm("login", "/book", nil, nil)
	} else if Global.Start == "register.html" {
		NewUserEvents()
		LoginEvents()
	}
}

func LoginEvents() {
	login := func() {
		Global.Location.Set("href", "/book/login")
	}
	Global.Event("sign-in", login)
}

func NewUserEvents() {
	Global.AutoForm("register", "/book", nil, nil)
}

func LogoutEvents() {
	if Document.Id("logout") == nil {
		return
	}
	Global.Event("logout", Global.Logout("/book"))
}
