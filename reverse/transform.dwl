%dw 2.0
output application/json
---
payload map ((item, index) -> 
 item mapObject(v,k,n)-> {
 (v) : k
 }
)

//reverse the inputs keys as values 