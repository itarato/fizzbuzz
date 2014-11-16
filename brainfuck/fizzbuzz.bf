+++++++++++++++++++++++++++++++++++++++++++++ empty line sign
>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ f
>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ i
>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ z
>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ b
>+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ u
>++++++++++ lf

>
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ set loop num

> leave 0 for exit flag

>>>
+++ set cycle num

>>>>
+++++ set second cycle num
<<<<<<

<< back to cycle
[
  >+>+ set else flag (when no cycle is zero)

  >> cycle check
  [
    - decrement cycle num

    >+>+<< sets zero flags bit to 1
    [
      >[-]>[-]<< sets temp bit to 0 in case it's still not 0
      < go to exit this is why we need 2 zero
    ]

    >> check if zero flag is on
    [
      <<<<<<<<<<<<.>.>..>>>>>>>>>> fizz

      <<<<[-]<[-]>>>>> remove else flags

      <<+++>> restore cycle number
      [-]<[-] zero the flags
    ]
    < back to cycle num
    < back to exit flag
  ]

  >>>>> cycle check
  [
    - decrement cycle num

    >+>+<< sets zero flags bit to 1
    [
      >[-]>[-]<< sets temp bit to 0 in case it's still not 0
      < go to exit this is why we need 2 zero
    ]

    >> check if zero flag is on
    [
      <<<<<<<<<<<<<.>.<<..>>>>>>>>>>>>>> buzz

      <<<<<<<<[-]<[-]>>>>>>>>> remove else flags

      <<+++++>> restore cycle number
      [-]<[-] zero the flags
    ]
    < back to cycle num
    < back to exit flag
  ]
  <<<<<<< back to loop

  >
  [
    <<<<<<<<.>>>>>>>> new line
    [-]
  ]
  <

  <.>

  - decrement loop
]
