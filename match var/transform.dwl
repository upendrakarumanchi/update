%dw 2.0
var a = {
  "shipToaddres": "YES",
  "billToadress": "NA"
}
var payloadMapper = {(payload map(
    ($.PropertyName) : $
))}
output application/json  
---
a mapObject ((value, key, index) -> 
    (key) : payloadMapper[key][value]
)


//here call the variable to match that variable ksy value with given inputs