if declare -Ff after_install >/dev/null; then
  after_install setup_bundler_cores
else
  echo "rbenv: rbenv-bundler-cores plugin requires ruby-build 20130129 or later" >&2
fi

setup_bundler_cores() {
  # Only setup cores after successfully installing Ruby.
  [ "$STATUS" = "0" ] || return 0

  if ! command -v bundler >/dev/null; then
    echo "rbenv-bundler-cores won't work without bundler"
    exit 1
  fi

  number_of_cores=$(sysctl -n hw.ncpu)
  bundle config --global jobs $((number_of_cores - 1))
}
