%dw 2.0
output application/json
---
(now() >> "IST") as String {format: "HH:MM:SS"}


//in this i can check the indian time by use now function 