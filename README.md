# MoreSugar
## Little syntax sugar for nim via macros.

```
import more_sugar, json, strutils


#basic iterator macros


nums <- @[2,4,6,8]  #the same as let nums = @[2,4,6,8]

nums.each num:
  num -> echo # `->` in this context passes lhs as the first argument to rhs


data <- parseFile "dummy.json"
data.elems.each elem:
  elem.pairs k,v:
    echo k, v

#This works too
each data.elems, elem:
  pairs elem, k,v:
    echo k, v

#Sugar for return types

proc add(a, b : int): -> int = a + b


#Function / expr chaining macro

echo (25.7 + 25.5) -> toInt

let name = " Boben " -> strip
assert name == "Boben"
```
