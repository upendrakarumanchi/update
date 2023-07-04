%dw 2.0
output application/json
---
payload reduce ($$ ++ $)

//Combine multiple objects into single object