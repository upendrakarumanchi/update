%dw 2.0
output application/json
---
(payload.arr1 ++ payload.arr2) distinctBy $


// Merge Two Arrays and remove duplicates