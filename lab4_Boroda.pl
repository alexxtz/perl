#!/usr/bin/perl -w
use strict;

my $fileName;
my $count;
if (defined $ARGV[0]) {
    $fileName = $ARGV[0];
} else {
    die "You don't enter fileName.\n";
}
    
if (defined $ARGV[1]) {
    $count = $ARGV[1];
} else {
    die "You don't enter count.\n";
}

open (my $fh, "<", "$fileName") or die "Can't open the file.\n";
while (<$fh>) {
    chomp;
    next unless ($_);
    system "ping -c $count $_"; # тут наверное нужно куда-то присваивать результат
}






#neskolko v stochke
