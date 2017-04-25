#!/bin/sh

# props to https://little418.com/2015/04/directory-listings-on-github-pages.html for the hack!

ls | egrep '(md|png)' | sort | perl -e 'print "<html><body><ul>"; while(<>) { chop $_; print "<li><a href=\"./$_\">$_</a></li>";} print "</ul></body></html>"' > index.html

