function checkout() {
  local folder="$1"
  local repo="$2"
  local branch="$3"

  if [ -d "$folder" ]; then
    echo "$1 already exist."
  else
    git clone "$repo" "$folder"
    cd "$folder" || exist

    git checkout "$branch"

    cd "../.." || exit
  fi
}

function checkout_all() {
  checkout "packages/beautiful-logger" "git@github.com:juwel-development/LIB-beautiful-logger.git" "main"
  checkout "packages/react-observable-tools" "git@github.com:juwel-development/LIB-react-observable-tools.git" "main"
  checkout "apps/juwel-dev" "git@github.com:juwel-development/F-juwel-dev.git" "main"
}

checkout_all
