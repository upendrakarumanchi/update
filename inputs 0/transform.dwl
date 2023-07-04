%dw 2.0
output application/json
import * from dw::core::Arrays
---
payload divideBy 2 map (
    {($)}
) map (
    $ -- ["not_started","in_progress","completed"] ++ {
        "Courses Enrolled" : !($.not_started as Number ==0 and 
            $.in_progress as Number ==0  and $.completed as Number ==0 ) 
    }
)


//here given input keys are 0 then print the output as true or false 