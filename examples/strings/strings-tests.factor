USING: examples.strings tools.test ;
IN: examples.strings.tests

{ t } [ "racecar" palindrome? ] unit-test

{ f } [ "racecars" palindrome? ] unit-test
{ t } [ "a" palindrome? ] unit-test
