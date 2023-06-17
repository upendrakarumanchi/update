%dw 2.0
import * from dw::core::Strings
output application/json
---
flatten(payload map ((item, index) -> 
item.salary[0] pluck ((value, key, index) -> (item - "salary") ++ {(key) : value} ) 
))

//add index key values into actual based on output

/*[

 {
  "Name": "Nani",
  "ID": 123,
  "Basic": 25000
 },
 {
  "Name": "Nani",
  "ID": 123,
  "HRA": 15000
 },
 {
  "Name": "ashu",
  "ID": 124,
  "Basic": 2600
 },
 {
  "Name": "ashu",
  "ID": 124,
  "HRA": 1600
 }
]*/