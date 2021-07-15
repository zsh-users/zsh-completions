#compdef rmlint.sh -P rmlint.*.sh

# Copyright (c) 2021 Github zsh-users - http://github.com/zsh-users
#
# Permission is hereby granted, without written agreement and without
# licence or royalty fees, to use, copy, modify, and distribute this
# software and to distribute modified versions of this software for any
# purpose, provided that the above copyright notice and the following
# two paragraphs appear in all copies of this software.
#
# In no event shall the Zsh Development Group be liable to any party for
# direct, indirect, special, incidental, or consequential damages arising out
# of the use of this software and its documentation, even if the Zsh
# Development Group have been advised of the possibility of such damage.
#
# The Zsh Development Group specifically disclaim any warranties, including,
# but not limited to, the implied warranties of merchantability and fitness
# for a particular purpose.  The software provided hereunder is on an "as is"
# basis, and the Zsh Development Group have no obligation to provide
# maintenance, support, updates, enhancements, or modifications.
#
# Description
# -----------
#
# Zsh completion for shell scripts produced by rmlint (https://github.com/sahib/rmlint)
#
# Authors
# -------
#
# * oxiedi (https://github.com/oxiedi)

_arguments -s : \
  '(-)-h[show help message]' \
  '-d[do not ask before running]' \
  '-x[keep rmlint.sh; do not autodelete it]' \
  '-p[recheck that files are still identical before removing duplicates]' \
  '-r[allow deduplication of files on read-only btrfs snapshots (requires sudo)]' \
  '(-d -x)-n[do not perform any modifications, just print what would be done (implies -d and -x)]' \
  '-c[clean up empty directories while deleting duplicates]' \
  '-q[do not show progress]' \
  '-k[keep the timestamp of directories when removing duplicates]' \
  '-i[ask before deleting each file]'
