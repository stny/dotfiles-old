# Boot2Docker {{{
if [ "`boot2docker status`" = "running"  ]; then
  $(boot2docker shellinit 2>/dev/null)
fi
# }}}
# vim:set ft=zsh foldmethod=marker:
