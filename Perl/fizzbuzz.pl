#!/usr/bin/perl
use warnings;

print "Enter the number\n";
my $_ = <STDIN>;

if ($_ % 3  == 0 &&  $_ % 5 == 0 ) {
	print "fizzbuzz\n";
	}
elsif ($_ % 3  == 0) {
	print "fizz\n";
} if ($_ % 5  == 0) {
	print "buzz\n";
} 
	
