%dw 2.0
output application/json
/*
step: 1 Give blank/masked values for keys ssn and dob

My Output should look like below

[
  {
    "SSN": "*****",
    "dob": "*****",
    "zipcode": "11235",
    "jobTitleName": "Developer",
    "firstName": "Romin",
    "lastName": "Irani",
    "preferredFullName": "Romin Irani",
    "employeeCode": "E1"
  },
  {
    "SSN": "*****",
    "dob": "*****",
    "zipcode": "24538-221",
    "jobTitleName": "Developer",
    "firstName": "Neil",
    "lastName": "Armstrong",
    "preferredFullName": "Neil Armstrong",
    "employeeCode": "E2"
  }
]
*/
---
// payload map ((item, index) ->item mapObject ((value, key, index) ->  

// if((key ~= "SSN") or (key ~= "dob"))
// {
//    (key): "****"
// }else
//   (key): value


// ) )

payload map ((item, index) -> item  update {
  case ."SSN" -> "****"
   case ."dob" -> "****"
} )






















