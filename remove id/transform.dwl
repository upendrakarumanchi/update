%dw 2.0
output application/json
---
//payload map ((item, index) ->item -"id" -"phonenumber" -"region" )
payload map ((item, index) ->item mapObject ((value, key, index) ->  

if((key ~= "id") or (key ~= "phoneNumber") or (key ~= "region"))
{
   
}else
  (key): value


) )




// remove id, phonenumber and region