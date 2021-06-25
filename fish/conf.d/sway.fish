set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  eval (keychain --eval --quiet --noask --agents gpg,ssh id_rsa ~/.ssh/capssionCampaign.pem)
  exec sway -V &> /tmp/sway_output
#  exec sway -V --my-next-gpu-wont-be-nvidia &> /tmp/sway_output
  exit 0
end
