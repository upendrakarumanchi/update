%dw 2.0
output application/json
---
payload map (
    data:$ mapObject ((value, key, index) ->
    if((key) ~= "address") 
     ("zipcode": (value splitBy " ")[-1])
     else
     ((key): value)
 )).data





//Step 2: for address field map it to zipcode by extracting zipcode

