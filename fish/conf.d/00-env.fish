set -Ux EDITOR vim
set -Ux BROWSER firefox-developer-edition
set -Ux MAKE_FLAGS -j24
set -Ux FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -Ux QT_QPA_PLATFORMTHEME qt5ct

set -x PATH $PATH $HOME/bin
set -x PATH $PATH $HOME/dev/go/bin
set -x PATH $PATH $HOME/.yarn/bin
set -x PATH $PATH $HOME/.cargo/bin
set -x WLR_DRM_NO_MODIFIERS 1
