#
# ~/.bashrc
#
export VISUAL=hx
export EDITOR="$VISUAL"
eval "$(starship init bash)"

# Start sway automatically
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec sway
#fi
