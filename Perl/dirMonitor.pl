#!/usr/bin/perl
use warnings;
use strict;
my $datestring = localtime();
my $userName = "aweed_twu";          #Change username to current user
my $monitor = "Homework";   #directory you wish to monitor
my $dir = "/home/$userName/$monitor";
my $fh = "dir_monitor.log";
my @dircontent = <*>;


sub check {
if (-e $fh) {
	print "File exists\n";
}
else {
	print "file does not exist\n";
open (WRITE, ">>dir_monitor.log") or die "unable ot open dir_monitor.log, $!\n";
}
}

sub check2 {
	if (-w $fh){
		print "file is writeable\n";
	}
	else {
		print "file is not writeable\n";
	}
}

sub check3 {
	if (-s $fh < 5000000 ) {
	print "file is small enough to use\n";
	}
		elsif (-s $fh >= 5000000 ) {
			print "file is too large, new log being created.\n";
			rename ("dir_monitor.log","dir_monitor.log.bak");
		}
	}



&check;
&check2;
&check3;

open (WRITE, ">>dir_monitor.log") or die "unable to open dir_monitor.log, $!\n";

foreach (@dircontent){
	print WRITE "$_\n";
	}
print WRITE "Scanned, $dir, $datestring";
close WRITE;
