
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Encapsulated PSGI server behaviors for POE',
  'AUTHOR' => 'Nicholas Perez <nperez@cpan.org>',
  'BUILD_REQUIRES' => {
    'FindBin' => '0',
    'HTTP::Request::Common' => '0',
    'Plack' => '0',
    'Plack::Test::Suite' => '0',
    'Test::More' => '0',
    'Test::Requires' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'POEx-Role-PSGIServer',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'POEx::Role::PSGIServer',
  'PREREQ_PM' => {
    'HTTP::Message::PSGI' => '0',
    'HTTP::Request' => '0',
    'HTTP::Status' => '0',
    'Moose::Autobox' => '0',
    'MooseX::Declare' => '0',
    'MooseX::Types' => '0',
    'MooseX::Types::Moose' => '0',
    'MooseX::Types::Structured' => '0',
    'POE::Filter::HTTP::Parser' => '0',
    'POE::Filter::Map' => '0',
    'POE::Filter::Stream' => '0',
    'POEx::Role::Streaming' => '0',
    'POEx::Role::TCPServer' => '1.102740',
    'POEx::Types' => '0',
    'Plack::Util' => '0',
    'Scalar::Util' => '0',
    'aliased' => '0',
    'bytes' => '0'
  },
  'VERSION' => '1.103340',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



