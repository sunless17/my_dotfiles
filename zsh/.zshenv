export FZF_ALT_C_COMMAND="fd --type d --hidden --follow ."
export EDITOR="helix"
export JAVA_HOME=/opt/android-studio/jbr
# export ANDROID_HOME="$HOME/Android/Sdk"
# export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
. "$HOME/.cargo/env"

# path variable
typeset -U path PATH
path=( \
  $path \
  $HOME/.local/bin \
  $HOME/.cargo/bin \
  $HOME/.config/npm-global/bin \
)
export PATH
# export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.config/npm-global/bin"
