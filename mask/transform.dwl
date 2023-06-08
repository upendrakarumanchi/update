%dw 2.0
import * from dw::util::Values  
output application/json
---
payload mask field("CreditCard") with "*****_****_****" 

//mask the given input value