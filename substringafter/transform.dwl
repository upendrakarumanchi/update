%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.AU groupBy( substringAfter($,"-")[0 to 3])


//print the substringAfter first three values as index 
/*{
 "2021": [
 "PROD-202100BG12",
 "PROD-202100BG12"
 ],
 "2020": [
 "PROD-202000BG12"
 ],
 "2019": [
 "PROD-201900BG12"
 ]
}*/