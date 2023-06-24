%dw 2.0
import countCharactersBy,isAlpha from dw::core::Strings
output application/json
---
payload.string countCharactersBy isAlpha($)

//Count the Number of Characters in a String
