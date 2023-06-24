%dw 2.0
output application/json
---
//[(payload)[0]]
payload filter ((item, index) ->item.Year > 2019  ) 


//Filter an Array by an Objects field Value(e.g., Year)