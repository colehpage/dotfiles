#!/bin/sh
# neovim logo by @sunjon https://github.com/nvimdev/dashboard-nvim/wiki/Ascii-Header-Text
# color variation and script by @xero https://git.io/.files
case "$1" in
-b) cat << x0
                                              
       ███████████           █████      ██
      ███████████             █████ 
      ████████████████ ███████████ ███   ███████
     ████████████████ ████████████ █████ ██████████████
    ██████████████    █████████████ █████ █████ ████ █████
  ██████████████████████████████████ █████ █████ ████ █████
 ██████  ███ █████████████████ ████ █████ █████ ████ ██████
x0
;;
-c) cat << x0
[48;5;0m                                              [38;2;167;201;171m
       [38;2;31;107;152m███████████           [38;2;57;108;63m█████[38;2;167;201;171m      ██
      [38;2;34;115;163m███████████             [38;2;61;116;68m█████ 
      [38;2;36;122;174m███████[48;5;0m██[38;2;20;69;110m[38;2;122;187;225m███████ ███[38;2;65;124;72m████████ [38;2;152;192;157m███   ███████
     [38;2;38;130;184m█████████[38;2;132;191;226m███████[48;5;0m ████[38;2;69;132;76m████████ [38;2;160;196;164m█████ ██████████████
    [38;2;40;138;195m█████████[38;2;142;196;228m█████[48;5;0m[38;2;20;69;110m██[38;2;142;196;228m██████[38;2;73;140;81m███████ [38;2;167;201;171m█████ █████ ████ █████
  [38;2;43;145;206m███████████[38;2;151;200;229m█████████████████[38;2;77;147;86m██████ [38;2;175;205;179m█████ █████ ████ █████
 [38;2;45;153;217m██████  ███ [38;2;160;204;231m█████████████████ [38;2;81;155;90m████ [38;2;183;209;186m█████ █████ ████ ██████
 [38;2;20;69;110m██████   ██  ███████████████   [38;2;46;78;42m██ █████████████████
x0
;;
*) cat << x0
 nvim-logo: display cool text mode art banners in your shell/editor
 usage: ./logo.sh [-c|-b|-h]
 flags:
   -c  display in color
   -b  display in black and white
   -h  display this message
 requirements:
  this design uses non-standard characters from NerdFonts (v3)
  please view in a patched font https://www.nerdfonts.com/
 credits:
  neovim logo by @sunjon https://github.com/nvimdev/dashboard-nvim/wiki/Ascii-Header-Text
  color variations and script by @xero https://git.io/.files
x0
;;
esac
exit 0
