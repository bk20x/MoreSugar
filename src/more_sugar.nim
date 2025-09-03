import macros







macro each*(collection: untyped, iname: untyped, code: varargs[untyped]) =
  ## Loop over `iname` being the yield of `items collection`
  result = newStmtList()
  result.add quote do:
    for `iname` in items `collection`:
      `code`

macro pairs*(collection: untyped,kname,vname: untyped, code: varargs[untyped]) =
  ## Loop over `kname`, `vname` being the keys, values of `collection`
  result = newStmtList()
  result.add quote do:
    for `kname`, `vname` in `collection`:
      `code`

macro `->`*(t: typedesc): typedesc =
   ## Sugar for return type as `proc *NAME*(): -> t`
   t.getType() 

macro `<-`*(ident, value : untyped) =
  ## Sugar for `let` being the form `let ident = value`
  result = newStmtList()
  result.add quote do:
    let `ident` = `value`



macro `->`*(what: untyped, expr: untyped): untyped =
  ## Pipes `what` into `actions` being the form `expr what`
  quote do:
    `action` `what`

