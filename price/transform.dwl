%dw 2.0
output application/json
---
payload.Orders.*Order map ((item, index) -> {
    total : item.Price * item.Quantity
})