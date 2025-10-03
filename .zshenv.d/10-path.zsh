typeset -U path

# Define the directories you want to prepend
local append_path=(
  $HOME/bin
  $HOME/sbin
  $HOME/.local/bin
  $HOME/.local/sbin
  /opt/homebrew/bin
  /opt/homebrew/sbin
  /opt/local/bin
  /opt/local/sbin
  /usr/local/bin
  /usr/local/sbin
)

# Prepend custom directories (existing ones will be moved to front due to -U)
for dir in ${(Oa)append_path}; do
  if [[ -d $dir ]]; then
    path=($dir $path)
  fi
done

# Remove non-existent directories
path=(${^path}(/N))
