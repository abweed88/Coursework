#!/usr/bin/perl
use warnings;
use strict;

my %nameid;

sub input {
print "Please enter name:\n";
chomp(my $keys = <STDIN>);
print "Please enter ID:\n";
chomp(my $values = <STDIN>);

$nameid{$keys}=$values;
}


print "How many ID and name pairs do you intended on entering?\n";
chomp(my $pairs = <STDIN>);
my $i = 0;
until ($i==$pairs) {
&input;
$pairs--;
}

open (DATA,">>roster.txt") or die "Unable to open roster.txt,$!";
foreach my $keys (sort {$a cmp $b and $nameid{$a} <=> $nameid{$b}} keys %nameid){
        print DATA $keys . "-----" . $nameid{$keys} . "\n";
}
close DATA;
