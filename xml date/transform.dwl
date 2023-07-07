%dw 2.0
output application/json
var x=(payload.placedDate splitBy(' '))[0]
---
x as Date {format: "yyyy-MM-dd"} as String {format: "MM/dd/yyyy"}



//"05/25/2022"
//XML DateTime to Date Format (Tough One)