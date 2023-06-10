%dw 2.0
output application/json
---
payload map ((item, index) -> 
   item mapObject ((value, key, index) -> 
   
   (key): if(value == "" or value == null)
                    item."Kafka Attribute Name"
          else  value
   
   )


)

 // here the rquirement is  if any value null or eampty ("") at there add the values
 