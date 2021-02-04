set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  eval (keychain --eval --quiet --noask --agents gpg,ssh id_rsa ~/.ssh/capssionCampaign.pem)
  exec sway &> /tmp/sway_output
  exit 0
end
