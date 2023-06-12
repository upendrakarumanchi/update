%dw 2.0
output application/json
---
customer:payload.customer map {
    "name":"fullname":($.lastName ++ " " ++   $.firstName ),
     sex: $.gender,
     dob: $.middleName
}

//based on input add the new root and concatinate the given key values


/*{
  "customer": [
    {
      "Name": {
        "FullName": "Dawson Jack"
      },
      "sex": "male",
      "DoB": null
    }
  ]
}*/