USING: examples.sequences tools.test math kernel ;
IN: examples.sequences.tests

{ 1 } [ { -1 0 1 } [ 0 > ] find-first ] unit-test
{ f } [ { 2 3 4 } [ 1 = ] find-first ] unit-test
{ 6 } [ { 6 3 9 } [ 3 rem 0 = ] find-first ] unit-test
{ 12 } [ { 4 67 13 12 } [ 3 rem 0 = ] find-first ] unit-test
