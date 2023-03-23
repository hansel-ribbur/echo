/+  *csv
|_  csv=(list (list @t))
++  grab
  |%
  ++  mime  |=((pair mite octs) (de-csv q.q))
  ++  noun
    |=  n=*
    ^-  (list (list @t))
    =/  result  ((list (list @t)) n)
    ?>  (validate result)
    result
  --
++  grow
  |%
  ++  mime
    ?>  (validate csv)
    [/text/csv (as-octs:mimes:html (en-csv csv))]
  ++  noun
    ?>  (validate csv)
    csv
  --
++  grad  %noun
--