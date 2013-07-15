use inc::Module::Install;
name 'Fizz-Buzz';
all_from 'lib/Fizz/Buzz.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
