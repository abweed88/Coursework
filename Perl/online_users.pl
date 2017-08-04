#!/usr/bin/perl

use warnings;
use strict;

my $username = exec'who -H';
my %userinfo = split /[=&]/, $username;
my $key, my $value = each %userinfo;
sub prompt {print "Please input a username\n";
chomp(my $user_name = <STDIN>);

if ($user_name eq $key) {
  print "$key => $value\n";
}
  elsif ($user_name ne $key){
  print "Could not find $user_name\n";
  exit;}}

while ($username) {
&prompt;
}
