%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> if (key ~= 'age')  (key): value else{} )
//age:(payload.age)

//map the object feild
