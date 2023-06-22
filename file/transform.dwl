%dw 2.0
import * from dw::core::Strings
output application/json
---
payload filter (($ endsWith  'csv') or ($ endsWith ("xlsx") )) joinBy  "," 

//Filter files based on File extension