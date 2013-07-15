use strict;
use Test::Behaviour::Spec;
use Test::More;

BEGIN { use_ok 'Fizz::Buzz' }

{
	describe 'FizzBuzz';
	it 'should be create instance';
		ok ref(Fizz::Buzz->new), spec;
}

{
	describe 'FizzBuzz->Say(n)';
		my $fb = Fizz::Buzz->new;
	it 'should be 1 when n = 1';
		is $fb->say(1), 1, spec;
	it 'should be Fizz when n = 3';
		is $fb->say(3), 'Fizz', spec;
	it 'should be Buzz when n = 5';
		is $fb->say(5), 'Buzz', spec;
	it 'should be FizzBuzz when n = 15';
		is $fb->say(15), 'FizzBuzz', spec;
}

done_testing;