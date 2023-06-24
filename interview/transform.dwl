%dw 2.0

output application/json
---

read(payload, "application/json ") as Number


//read the only numbers in given inputs