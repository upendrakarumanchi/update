%dw 2.0
output application/json
---
//payload reduce ((item, accumulator) -> item ++ accumulator)
//{(payload)}
{(payload map ((item, index) ->item ) )}

//array of obj to single obj by using reduce function