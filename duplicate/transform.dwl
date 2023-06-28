%dw 2.0
output application/json
---
((payload.name splitBy  " ")distinctBy $)

//Filter Duplicate Names from a String