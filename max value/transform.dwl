%dw 2.0

output application/json
---
// {(payload filter ((item, index) ->item.Marks > 70 ))}
//payload minBy ((item) ->item.Marks) 
payload filter ((item, index) ->item.Marks < 70 )reduce {
}


 //Object Inside an array with max/greatest value