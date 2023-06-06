%dw 2.0
output application/json
---

payload map 
  {
      rate: ($.rate * 100) as String {format: "#.####"},
      appy: ($.APY * 100) as String {format: "#.####"}
  }

  // here the requirement is to formate the vales up to two decimels