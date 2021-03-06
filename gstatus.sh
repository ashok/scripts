#!/bin/sh
if [ "$DMZ_ROOT" = "" ] ; then
   DMZ_ROOT="$HOME"/
fi
GITREPO="$DMZ_ROOT"cm/src
DIRS="`/bin/ls -1 $GITREPO`"
for dir in $DIRS ; do
   if [ -d $GITREPO/$dir/.git ] ; then
      echo "$dir -> git status"
      cd $GITREPO/$dir ; git status
      echo
   fi
done
