package browser

import (
	"fmt"

	"github.com/andrewarrow/feedback/wasm"
)

var Global *wasm.Global
var Document *wasm.Document

func RegisterEvents() {
	LogoutEvents()
	afterRegister := func(id int64) {
		Global.Location.Set("href", "/heart/start")
	}
	afterLogin := func(id int64) {
		Global.Location.Set("href", "/heart/start")
	}
	if Global.Start == "start.html" {
		//Global.AutoForm("start", "heart", nil, start1)
		start()
	} else if Global.Start == "login.html" {
		Global.AutoForm("login", "heart", nil, afterLogin)
	} else if Global.Start == "register.html" {
		Global.AutoForm("register", "heart", nil, afterRegister)
	}
}

func start() {
	p1 := Document.Id("p1")
	fmt.Println(p1)
}

func scrollToTop() {
	w := Global.Global.Get("window")
	w.Call("scrollTo", 0, 0)
}

func LogoutEvents() {
	if Document.Id("logout") == nil {
		return
	}
	Global.Event("logout", Global.Logout("/heart"))
}
