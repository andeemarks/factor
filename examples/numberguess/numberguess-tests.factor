USING: examples.numberguess tools.test math kernel ;
IN: examples.numberguess.tests

! { -1 } [ -34 normalise-guess-diff ] unit-test
! { 1 } [ 68 normalise-guess-diff ] unit-test
! { 0 } [ 0 normalise-guess-diff ] unit-test

! { "Higher" } [ [ 1 2 - ] evaluate-guess ] unit-test
! { "Lower" } [ [ 2 1 - ] evaluate-guess ] unit-test
! { "Winner" } [ [ 2 2 - ] evaluate-guess ] unit-test
