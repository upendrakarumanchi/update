%dw 2.0
output application/json
import * from dw::core::Strings
---
{
"id": leftPad(payload.id,10,0)
}

//my input like 18472 then I want add extra zero before the actual number.

 