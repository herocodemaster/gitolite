#!/bin/bash

#
# Wrapper for gl-auth-command
#

USER=$1

export GIT_PROJECT_ROOT="/var/lib/gitolite/repositories"
export GITOLITE_HTTP_HOME="/var/lib/gitolite"
export GIT_HTTP_BACKEND="/usr/lib/git-core/git-http-backend"
export GIT_HTTP_EXPORT_ALL=1

# OpenSuSE gitolite RPM places gl-auth-command in /usr/bin
exec /usr/share/gitolite/gl-auth-command $USER

# End
