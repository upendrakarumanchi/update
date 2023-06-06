%dw 2.0
output application/json
---
if(payload.mule.Header.password == "pass"){'msg': "authorized" } else if(payload.mule.Header.password == "fail")
{'msg': "unauthorized"}  else {'msg': "null"}


//here based on value "pass" write output as "authorized"
//if value pass as "fail" the print the output as "unauthorized" and any other value can pass print the output as null