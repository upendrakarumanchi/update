%dw 2.0
output application/json
---
{
    "velues": valuesOf(payload),
    "key": keysOf(payload)
}

//Filter Key & Values of Objects in Separate Array 