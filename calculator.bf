
++++++++[>++++<-]> # Cell 0=0, cell 1=100 (for /100 later)
>>>, # Input R to cell 3
>, # Input T to cell 4
<< # Back to P (assume pre-set or input separately: <<<,)
[   # Multiply P*R: outer loop on P (cell 0)
  > # To R (cell 3)
  [>+<-] # Add R to temp (cell 2)
  << # Back to P,R
  > # To temp (cell 2)
  [>+<-] # Add temp to product (cell 5), clear temp
  <- # Dec P
]
> # To product PR (cell 5)
[>+<-] # Copy PR to temp (cell 2)
>> # To T (cell 4)
[>[>+<-]<-] # Add temp to acc (cell 6) T times (PRT)
<< # Back
] # End T loop
>> # To acc PRT (cell 6)
[--- # Divide by 100: subtract 100 (cell1) repeatedly
  > # To 100 (cell1)
  [-<+>] # Move 100 to acc
  <
-] # End div loop
>> # To result (cell 6+)
.[-] # Output and clear
