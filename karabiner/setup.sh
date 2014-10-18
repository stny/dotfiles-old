#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set repeat.wait 25
/bin/echo -n .
$cli set repeat.initial_wait 180
/bin/echo -n .
$cli set private.vim_setting_for_japanese 1
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_command 1
/bin/echo -n .
/bin/echo
