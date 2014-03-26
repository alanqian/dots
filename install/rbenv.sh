# set rbenv environment, /etc/profile.d/ebenv.sh
export RBENV_ROOT="/opt/rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi
