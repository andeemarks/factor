USING: kernel io combinators.short-circuit math math.functions ;
USING: math.ranges present sequences ;

IN: examples.fizzbuzz

: fizzbuzz-traditional ( n -- seq )
    [1,b] [
        dup 15 mod 0 = 
        [ drop "FizzBuzz" ]
        [
            dup 3 mod 0 =
            [ drop "Fizz" ]
            [
                dup 5 mod 0 =
                [ drop "Buzz" ]
                [ present ]
                if
            ]
            if

        ]
        if
    ] map ;

: multiple-of? ( x/str n -- ? ) over number? [ mod 0 = ] [ 2drop f ] if ;
: sub-if-multiple ( x/str n str -- x/str ) pick [ multiple-of? ] 2dip ? ;
: check-for-fizz ( x/str -- x/str ) 3 "Fizz" sub-if-multiple ;
: check-for-buzz ( x/str -- x/str ) 5 "Buzz" sub-if-multiple ;
: check-for-fizzbuzz ( x/str -- x/str ) 15 "FizzBuzz" sub-if-multiple ;
: check-for-all ( x -- str ) check-for-fizzbuzz check-for-fizz check-for-buzz present ;
: fizzbuzz-with-pipeline ( n -- seq ) [1,b] [ check-for-all ] map ;
