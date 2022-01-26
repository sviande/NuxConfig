set -Ux EDITOR nvim
set -Ux BROWSER firefox-developer-edition
set -Ux MAKE_FLAGS -j24
set -Ux FZF_DEFAULT_COMMAND 'rg --files --hidden'
set -Ux FZF_DEFAULT_OPTS '--layout=reverse'
set -Ux QT_QPA_PLATFORMTHEME qt5ct

set -x PATH $PATH $HOME/bin
set -x PATH $PATH $HOME/dev/go/bin
set -x PATH $PATH $HOME/.yarn/bin
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH /home/moi/dev/depot_tools/
set -x WLR_DRM_NO_MODIFIERS 1
set -x WLR_NO_HARDWARE_CURSORS 1

set -x _microarchitecture 14
set -x _localmodcfg y
set -x use_numa n
set -x use_tracers n
