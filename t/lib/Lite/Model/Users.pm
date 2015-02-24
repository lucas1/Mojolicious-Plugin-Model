package Lite::Model::Users;
use Mojo::Base 'Lite::Model';

sub check {
  my ($self, $name) = @_;

  my $allow = grep { $_ eq $name } @{$self->app->defaults('users')};
  return $allow;
}

1;
