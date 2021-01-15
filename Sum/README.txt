The application reads N whole numbers and adds them up. In addition, 
it is possible to distinguish characters other than numbers and to block them

To understand the code, suppose that any non-numeric character, 
when converted to the integer via to_i, is equal to zero

Zero ends up being neutral and does not add or activate an exception.
So, when the user types '0', the value returns to the default and 
falls into the exception

Coverage of test initiated. More test is welcome!