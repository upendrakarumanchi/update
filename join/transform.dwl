%dw 2.0
output application/json
---
payload map 
{
    "firstName": ($.fullName splitBy  " " )[0]  ,
    "lastName": ($.fullName splitBy  " " )[1] ,
    "AddrWithValuesOf":$.city ++ " , " ++  $.state ++ " , " ++ $.postal ++ " , " ++ $.country,
    "AddrWithPluck":$.city ++ " , " ++  $.state ++ " , " ++ $.postal ++ " , " ++ $.country,
    "miles": $.miles,
    "DateofJoin": $.joinedDate as Date as String{format:'dd-MMM-YYYY'}
}

//here splitby the value  to add the splted value into another key 
//concatenate to add multiple value into single key based on output
//change the date format


/* output
[
  {
    "firstName": "Peter",
    "lastName": "parker",
    "AddrWithValuesOf": "San Francisco , veniam , sit , Mexico",
    "AddrWithPluck": "San Francisco , veniam , sit , Mexico",
    "miles": 68,
    "DateofJoin": "22-Dec-2021"
  },
  {
    "firstName": "Joseph",
    "lastName": "charles",
    "AddrWithValuesOf": "Bangalore , Karnataka , 560100 , India",
    "AddrWithPluck": "Bangalore , Karnataka , 560100 , India",
    "miles": 49,
    "DateofJoin": "15-Nov-2021"
  }
]*/
