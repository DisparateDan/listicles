#!/bin/sh

# props to https://little418.com/2015/04/directory-listings-on-github-pages.html for the original code for the hack!

ls | egrep '(md|png)' | sort | perl -e 'print "# Existing Listicles:\n"; while(<>) { chop $_; print "* [$_](" . do { (my $tmp = $_) =~ s/\.md$/\.html/; $tmp }.")\n";}' > index.md

