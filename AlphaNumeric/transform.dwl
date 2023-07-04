%dw 2.0
import * from dw::core::Strings
output application/json
---
(payload.number splitBy ('')) filter (isNumeric($)==true)


// Extract Numbers from a AlphaNumeric String