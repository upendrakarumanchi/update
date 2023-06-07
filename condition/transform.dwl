%dw 2.0
output application/json
---
payload mapObject
{
    ($$): if($ is String) read($,'application/json') else $
}


// the above condition checks the given value is string or not if it is string convert it into json by using read function else remaining data
