%dw 2.0
output application/json
---
payload.a filter (payload.b contains $)

//here we can  Filter Values present in both array