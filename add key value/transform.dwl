%dw 2.0
output json
---
payload map {
    "id": $$ + 1,
    "name": $.name,
    "jobs": $.jobs map {
        "num": $$ + 1,
        "type": $."type"
    }
}

//maping the data and add numbers and id keys as required output
