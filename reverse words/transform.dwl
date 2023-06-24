%dw 2.0
import * from dw::core::Strings
output application/json
---
(payload.Reverse splitBy  " " ) [-1 to 0] joinBy  " "



//Reverse the Words of a Sentence