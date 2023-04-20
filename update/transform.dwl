%dw 2.0
output application/json
import update from dw::util::Values
---
payload update "name" with ("upendra " ++ $)
//-------------------------------------------------------------------------------------------
//---
//payload  update {
 //   case .location.address.street -> "upendra"}
//------------------------------------------------------------------------------------------------

//import mergeWith from dw::core::Objects
 
///---
 
//payload mergeWith  {number : 10}
//-----------------------------------------------------------------------------------------