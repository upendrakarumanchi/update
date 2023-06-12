%dw 2.0
input payload application/csv header=false
output application/json
---
payload map valuesOf($)

//we can pass the headers input payload csv formate and hearders are false map to use values of function