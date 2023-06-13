{
  "language": [
    "en_US",
    "ek_ab"
  ]
}%dw 2.0
output application/json
var transformedLanguage = payload.language map ((item) -> item replace "_" with "-")
---
{
  "language": transformedLanguage
}

//here change the value format given format 


//output:-
// {"language": [
// "en-US",
// "ek-ab"
// ]
// }