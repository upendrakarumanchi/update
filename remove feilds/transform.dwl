%dw 2.0
output application/json
---
//age:(payload.age)
payload - "fname" - "lname"

//Remove Fields(first name and last name) from an Array