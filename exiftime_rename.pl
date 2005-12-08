#!/usr/bin/perl
#
# Input to this command (first arg) is a list created by exiftime -l
#

use strict;

my $count=1;
while (<>) {
    chomp;
    my $old_filename=$_;
    my $new_filename=sprintf("%03d",$count) . '.jpg';
    print $old_filename, "\t", $new_filename, "\n";
    rename $old_filename,$new_filename;
    $count++;
}