# MoreSugar
## Syntactic sugar for nim based off of it's macro system.

```
import more_sugar, json, strutils


#basic iterator macros

nums <- @[2,4,6,8]
nums.each num: num -> echo


data <- parseFile "dummy.json"
data.elems.each elem:
  elem.pairs k,v:
    echo k, v


#Sugar for return types

proc add(a, b : int): --> int = a + b


#Function chaining macro

echo (25.7 + 25.5) -> toInt

let name = " Boben " -> strip
assert name == "Boben"
```
