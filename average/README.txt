The application reads N whole numbers and finds the average. 
It is possible to distinguish different characters from numbers and to block them.

To understand the code, suppose that any non-numeric character,
when converted to the integer via to_i, is equal to zero

Zero ends up being neutral and does not add or activate an exception.
Then, when the user types '0', the value returns to the default and
falls into the exception

More tests with Rspec are welcome!
