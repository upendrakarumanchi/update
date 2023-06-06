%dw 2.0
output application/json
---
{
 "upii": "true"==true,
 "upii1": "true"~=true,
 "upii2": "789"==789,
 "upii3": "789"~=789,
 "upii4": ["true"]==[true],
 "upii5": ["true"]~=[true]
}

// here i want to define is difference between ~= and == when your using == it will check the value of datatype and it will give true or else but if your using ~= it will not check for datatype instead it will give only true 