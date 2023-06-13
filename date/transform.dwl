%dw 2.0
output application/json
var transformedDate = payload."As of Date" map ((item) -> item as Date {format: "yyyy-MM-dd"} as String {format: "dd/MM/yyyy"})
---
{
  "asofDate": transformedDate[0]
}
//asofDate: (payload."As of Date"[0]) as Date as Date {format: "dd/MM/yyyy" }

//input is a object in that we have value as array change the date format array into object