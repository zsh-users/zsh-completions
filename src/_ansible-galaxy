#compdef ansible-galaxy
# ------------------------------------------------------------------------------
# Copyright (c) 2011 Github zsh-users - http://github.com/zsh-users
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the zsh-users nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL ZSH-USERS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# ------------------------------------------------------------------------------
# Description
# -----------
#
#  Completion script for ansible-galaxy v2.0.0.2 (http://ansible.org)
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
#  * Romain Bossart (https://github.com/bosr)
#  * Adam Stevko (https://github.com/xen0l)
#
# ------------------------------------------------------------------------------
#
# Note: I tried to use `_arguments --`, but the output of `ansible --help`
# is not parsed entirely correctly, and anyway no modules or host would available.
#

# ansible-galaxy zsh completion
#
_ansible-galaxy ()
{
  local context curcontext="$curcontext" state line
  typeset -A opt_args

  _arguments -C \
    "1:command:(delete import info init install list login remove search setup)" \
    "*::option:->option"

  case $state in
    option)
      case $line[1] in
        delete)
         _arguments \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            ":github_user:(GITHUB_USER)" \
            ":github_repo:(GITHUB_REPO)"
          ;;
        import)
         _arguments \
            "--branch[REFERENCE The name of a branch to import.]:reference:(master)" \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "--no-wait[Don't wait for import results.]" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "--status[Check the status of the most recent import request forgiven github_user/github_repo.]" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            ":github_user:(GITHUB_USER)" \
            ":github_repo:(GITHUB_REPO)"
          ;;
        info)
          _arguments \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "(-p --roles-path)"{-p,--roles-path}"[ROLES_PATH The path to the directory containing your roles (default: from ansible.cfg)]:roles path:_files -/" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            ":role name:(ROLE,version)"
          ;;
        init)
          _arguments \
            "(-f --force)"{-f,--force}"[ Force overwriting an existing role]" \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "(-p --init-path)"{-p,--init-path}"[INIT_PATH path in which the skeleton role will be created (default=./)]:init path:(./)" \
            "(--offline)--offline[Don't query the galaxy API when creating roles]" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            ":role name:(ROLE)"
          ;;
        install)
          _arguments \
            "(-f --force)"{-f,--force}"[Force overwriting an existing role]" \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "(-i --ignore-errors)"{-i,--ignore-errors}"[Ignore errors and continue with the next specified role]" \
            "(-n --no-deps)"{-n,--no-deps}"[Don't download roles listed as dependencies]" \
            "(-r --role-file)"{-r,--role-file}"[ROLE_FILE A file containing a list of roles to be imported]:role file:_files" \
            "(-p --roles-path)"{-p,--roles-path}"[ROLES_PATH The path to the directory containing your roles (default: from ansible.cfg)]:roles path:_files -/" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            ":role name:(ROLE)"
          ;;
        list)
          _arguments \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-p --roles-path)"{-p,--roles-path}"[ROLES_PATH The path to the directory containing your roles (default: from ansible.cfg)]:roles path:_files -/" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            ":role name:(ROLE)"
          ;;
        login)
          _arguments \
            "--github_token[TOKEN Identify with github token rather than username and password.]:token:(TOKEN)" \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]"
          ;;
        remove)
          _arguments \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-p --roles-path)"{-p,--roles-path}"[ROLES_PATH The path to the directory containing your roles (default: from ansible.cfg)]:roles path:_files -/" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            "*:role name:(ROLE)"
          ;;
        search)
          _arguments \
            "--author[AUTHOR GitHub username]:author:(AUTHOR)" \
            "--galaxy-tags[TAGS list of galaxy tags to filter by]:tags:(TAGS)" \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "--platforms[PLATFORMS list of OS platforms to filter by" \
            "(-p --roles-path)"{-p,--roles-path}"[ROLES_PATH The path to the directory containing your roles (default: from ansible.cfg)]:roles path:_files -/" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]"
          ;;
        setup)
          _arguments \
            "(-h --help)"{-h,--help}"[help message]" \
            "(-c --ignore-certs)"{-c,--ignore-certs}"[Ignore SSL certificate validation errors.]" \
            "--list[List all of your integrations.]" \
            "--remove[REMOVE_ID Remove the integration matching the provided ID value.]:id:(REMOVE_ID)" \
            "(-s --server)"{-s,--server}"[API_SERVER The API server destination]:api server:(http://apiserver)" \
            "(-v --verbose)"{-v,--verbose}"[verbose mode (-vvv for more, -vvvv to enable connection debugging)]" \
            "--version[show program's version number and exit]" \
            ":source:(travis)" \
            ":github_user:(GITHUB_USER)" \
            ":github_repo:(GITHUB_REPO)" \
            ":secret:(SECRET)"
          ;;
      esac
      ;;
  esac
}

_ansible-galaxy "$@"

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=zsh sw=2 ts=2 et
