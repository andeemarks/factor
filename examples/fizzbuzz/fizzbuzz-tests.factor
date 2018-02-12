USING: examples.fizzbuzz tools.test ;

IN: examples.fizzbuzz.tests

CONSTANT: fizzbuzz-30 {
    { "1" "2" "Fizz" "4" "Buzz" "Fizz" "7" "8" "Fizz" "Buzz" 
    "11" "Fizz" "13" "14" "FizzBuzz" "16" "17" "Fizz" "19" "Buzz" 
    "Fizz" "22" "23" "Fizz" "Buzz" "26" "Fizz" "28" "29" "FizzBuzz" }
}

{ t } [ 0 1 multiple-of? ] unit-test
{ t } [ 0 2 multiple-of? ] unit-test
{ t } [ 0 10 multiple-of? ] unit-test
{ t } [ 0 111 multiple-of? ] unit-test
{ t } [ 1 1 multiple-of? ] unit-test
{ f } [ 1 2 multiple-of? ] unit-test

{ 1 } [ 1 3 "Foo" sub-if-multiple ] unit-test
{ 2 } [ 2 3 "Foo" sub-if-multiple ] unit-test
{ "Foo" } [ 3 3 "Foo" sub-if-multiple ] unit-test

{ 1 } [ 1 check-for-fizz ] unit-test
{ 2 } [ 2 check-for-fizz ] unit-test
{ "Fizz" } [ 3 check-for-fizz ] unit-test
{ "Fizz" } [ 6 check-for-fizz ] unit-test
{ "Fizz" } [ 30 check-for-fizz ] unit-test

{ 1 } [ 1 check-for-buzz ] unit-test
{ 2 } [ 2 check-for-buzz ] unit-test
{ "Buzz" } [ 5 check-for-buzz ] unit-test
{ "Buzz" } [ 50 check-for-buzz ] unit-test
{ "Buzz" } [ 555 check-for-buzz ] unit-test

{ 1 } [ 1 check-for-fizzbuzz ] unit-test
{ 2 } [ 2 check-for-fizzbuzz ] unit-test
{ "FizzBuzz" } [ 15 check-for-fizzbuzz ] unit-test
{ "FizzBuzz" } [ 30 check-for-fizzbuzz ] unit-test
{ "FizzBuzz" } [ 90 check-for-fizzbuzz ] unit-test

{ "1" } [ 1 check-for-all ] unit-test
{ "2" } [ 2 check-for-all ] unit-test
{ "Fizz" } [ 3 check-for-all ] unit-test
{ "Buzz" } [ 5 check-for-all ] unit-test
{ "FizzBuzz" } [ 15 check-for-all ] unit-test

fizzbuzz-30 [ 30 fizzbuzz-traditional ] unit-test
fizzbuzz-30 [ 30 fizzbuzz-with-pipeline ] unit-test