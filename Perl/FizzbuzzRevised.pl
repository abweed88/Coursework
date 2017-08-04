#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;


print "Welcome to the fizzbuzz\n";

my $num = 1;
  while ($num < 100, ++$num) {
      if ($num % 15 == 0){
          print "fizzbuzz\n";}
      elsif ($num % 9 == 0){ print "void\n";
          next;}
      if ($num % 10 == 0) { print "void\n";
       }
      elsif ($num % 3 == 0) {
          print "fizz\n";}
            elsif ($num % 5 == 0) {
                print "buzz\n";}
}
