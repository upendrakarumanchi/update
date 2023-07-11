%dw 2.0
import mergeWith from dw::core::Objects
var array1 = [
  {
    "Name": "Alex",
    "Surname": "Thomas"
  }
]
var array2 = [
  {
    "Address": "KyleMore Street USA",
    "Country": "United Sates"
  }
]
output application/json  
---
array1 map ($ mergeWith  array2 [$$])


//merge two varibles 