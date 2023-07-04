%dw 2.0
output application/json  
---
//payload filterObject ((value, key, index) -> sizeOf(value)!=0)
flightNumber:(payload.flightNumber)


//Filter out blank fields from an array