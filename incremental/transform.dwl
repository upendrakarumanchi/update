%dw 2.0
output application/json
---
payload map ((item, index) -> (
 item mapObject(v,k,i)->{
 ("user" ++ index+1):v
 }
)
)

// Assign Incremental Key to fields in an array