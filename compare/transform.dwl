%dw 2.0
output application/json
var x =payload.Group groupBy ($.POF ++ $.DATE ++ $.COD_PERFORMANCE ++ $.ID_PRACTICE_REQUEST)
---
valuesOf(x) map {
    "Group":$
}


//Here i want to compare 2 arrays with same fields and create a new one from merge