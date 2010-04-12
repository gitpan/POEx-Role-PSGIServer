
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'POEx::Role::PSGIServer',
                       'DISTNAME' => 'POEx-Role-PSGIServer',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Nicholas Perez <nperez@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::Requires' => '0',
                                             'Test::More' => '0',
                                             'FindBin' => '0',
                                             'Plack' => '0',
                                             'Plack::Test::Suite' => '0',
                                             'HTTP::Request::Common' => '0'
                                           },
                       'ABSTRACT' => 'Encapsulated PSGI server behaviors for POE',
                       'EXE_FILES' => [],
                       'VERSION' => '1.101020',
                       'PREREQ_PM' => {
                                        'MooseX::Types::Moose' => '0',
                                        'Scalar::Util' => '0',
                                        'MooseX::Declare' => '0',
                                        'bytes' => '0',
                                        'POE::Filter::Map' => '0',
                                        'HTTP::Message::PSGI' => '0',
                                        'MooseX::Types::Structured' => '0',
                                        'POE::Filter::Stream' => '0',
                                        'aliased' => '0',
                                        'HTTP::Status' => '0',
                                        'POEx::Role::TCPServer' => '0',
                                        'Moose::Autobox' => '0',
                                        'Plack::Util' => '0',
                                        'MooseX::Types' => '0',
                                        'HTTP::Request' => '0',
                                        'POEx::Role::Streaming' => '0',
                                        'POEx::Types' => '0',
                                        'POE::Filter::HTTP::Parser' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



