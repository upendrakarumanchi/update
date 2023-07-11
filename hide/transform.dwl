%dw 2.0
output application/json
import * from dw::util::Values
 ---
payload mask field("CreditCard") with "****-****-****"

//Mask/Hide Values in Dataweave

