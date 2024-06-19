package browser

import (
	"fmt"
	"syscall/js"
	"time"
)

var layout = "2006-01-02"

func DatePicker() {
	dc := Document.ById("date-picker")
	//dateString := "2021-07-20"
	//startDate := Global.Global.Get("Date").New(dateString)

	jsonString := `{
"selectedDates": [%d],
"multipleDates": false,
"range": false,
"locale": {"days":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"daysShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"daysMin":["Su","Mo","Tu","We","Th","Fr","Sa"],"months":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthsShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"today":"Today","clear":"Clear","dateFormat":"yyyy-MM-dd","timeFormat":"hh:mm aa","firstDay":0} 
}`
	dateOptions := Global.Global.Get("JSON").Call("parse",
		fmt.Sprintf(jsonString, time.Now().Unix()*1000))
	dateChangeFunc := func(this js.Value, p []js.Value) any {
		dateChange(p[0])
		return nil
	}
	dateOptions.Set("onSelect", js.FuncOf(dateChangeFunc))
	Global.Global.Get("AirDatepicker").New(dc, dateOptions)
	formattedDate := time.Now().Format(layout)
	dateChangeLogic(formattedDate)
}

func dateChange(p js.Value) {
	formattedDate := p.Get("formattedDate").String()
	go getHours(formattedDate)
	dateChangeLogic(formattedDate)
}

func dateChangeLogic(d string) {
	Document.Id("display-date").Set("innerHTML", d)
	Document.Id("hidden-date").Set("value", d)
}
