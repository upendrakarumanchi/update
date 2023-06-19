%dw 2.0
import * from dw::core::Strings
output application/json
---

payload map (num:$.num last 3)
//payload map ((item, index) -> num: flatten(item.num scan /[1-9]{3}/) reduce $)


//my requriment is print last three numebers in given input.