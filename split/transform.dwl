%dw 2.0

output application/json
---
payload map{
 (($ splitBy ":")[0]):($ splitBy ":")[1]
}

//given input is array so it can splt that input as array of objects