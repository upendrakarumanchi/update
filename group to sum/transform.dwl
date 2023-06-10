%dw 2.0
output application/json
---
{
  "id":payload.id,
 
  "currency-code":payload."currency-code",
"invoice-lines":
   (payload."invoice-lines" groupBy $.id pluck
    {
     "id":$[0].id,
     "total":sum($.total) as Number,
     "quantity":sum($.quantity) as Number,
     "po-number":$[0]."po-number",
     "order-line-num":$[0]."order-line-num",
     "accounting-total":sum($."accounting-total") as Number,
     "account-segment-1":"MRP_clé",
     "amount-tva":sum($."amount-tva") as Number,
     "doc-article-reception":$[0]."doc-article-reception"
 
   })
}
//here requirment is group to sum the given inputs 