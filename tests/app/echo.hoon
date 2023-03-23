/+  *test
/=  agent  /app/echo

|%
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~zod ~zod %echo]
    [~ ~]
    [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~zod %echo ud+run]]
  ==
+$  state
  $:  [%0 values=(list @)]
  ==
--
::
|%
++  test-echo-push
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %echo-action !>([%push ~zod 10.000]))
  =+  !<(=state on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[10.000]
    !>  values.state
++  test-echo-pop
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %echo-action !>([%pop ~zod]))
  =+  !<(=state on-save:agent)
  %+  expect-eq
    !>  ~
    !>  values.state
--