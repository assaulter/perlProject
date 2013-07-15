package Fizz::Buzz;
use strict;
use warnings;
our $VERSION = '0.01';

# コンストラクタ	
sub new {
	my ($class) = @_;
	bless {}, $class;
}

sub say {
	# オブジェクトのメソッドの場合は、特殊変数の一番目にはクラス名が入るらしい。
	my ($self, $num) = @_;
	return 'FizzBuzz' if $num % 15 == 0;
	return 'Buzz' if $num % 5 == 0;
	return 'Fizz' if $num % 3 == 0;
	return $num;
}

# デストラクタ
# 書かなくても呼ばれる
sub DESTROY {
	my $self = shift;
}

1;
__END__

=head1 NAME

Fizz::Buzz -

=head1 SYNOPSIS

  use Fizz::Buzz;

=head1 DESCRIPTION

Fizz::Buzz is

=head1 AUTHOR

assaulter E<lt>default {at} example.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
