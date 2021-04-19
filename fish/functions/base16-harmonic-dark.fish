# base16-fish-shell (https://github.com/FabioAntunes/base16-fish-shell)
# Inspired by base16-shell (https://github.com/chriskempson/base16-shell)
# Harmonic16 Dark scheme by Jannik Siebert (https://github.com/janniks)

function base16-harmonic-dark -d "base16 Harmonic16 Dark theme"
    # colors
    set color00 "0b/1c/2c" # Base 00 - Black
    set color01 "bf/8b/56" # Base 08 - Red
    set color02 "56/bf/8b" # Base 0B - Green
    set color03 "8b/bf/56" # Base 0A - Yellow
    set color04 "8b/56/bf" # Base 0D - Blue
    set color05 "bf/56/8b" # Base 0E - Magenta
    set color06 "56/8b/bf" # Base 0C - Cyan
    set color07 "cb/d6/e2" # Base 05 - White
    set color08 "62/7e/99" # Base 03 - Bright Black
    set color09 $color01 # Base 08 - Bright Red
    set color10 $color02 # Base 0B - Bright Green
    set color11 $color03 # Base 0A - Bright Yellow
    set color12 $color04 # Base 0D - Bright Blue
    set color13 $color05 # Base 0E - Bright Magenta
    set color14 $color06 # Base 0C - Bright Cyan
    set color15 "f7/f9/fb" # Base 07 - Bright White
    set color16 "bf/bf/56" # Base 09
    set color17 "bf/56/56" # Base 0F
    set color18 "22/3b/54" # Base 01
    set color19 "40/5c/79" # Base 02
    set color20 "aa/bc/ce" # Base 04
    set color21 "e5/eb/f1" # Base 06
    set color_foreground "cb/d6/e2" # Base 05
    set color_background "0b/1c/2c" # Base 00

    # 16 color space
    __put_template 0  $color00
    __put_template 1  $color01
    __put_template 2  $color02
    __put_template 3  $color03
    __put_template 4  $color04
    __put_template 5  $color05
    __put_template 6  $color06
    __put_template 7  $color07
    __put_template 8  $color08
    __put_template 9  $color09
    __put_template 10 $color10
    __put_template 11 $color11
    __put_template 12 $color12
    __put_template 13 $color13
    __put_template 14 $color14
    __put_template 15 $color15

    # 256 color space
    __put_template 16 $color16
    __put_template 17 $color17
    __put_template 18 $color18
    __put_template 19 $color19
    __put_template 20 $color20
    __put_template 21 $color21

    # foreground / background / cursor color
     __put_template_var 10 $color_foreground
      if test "$BASE16_SHELL_SET_BACKGROUND" != false
        __put_template_var 11 $color_background
     end
      __put_template_custom 12 ";7" # cursor (reverse video)

    set -gx fish_color_autosuggestion "627e99" brblack
    set -gx fish_pager_color_description "bfbf56" yellow

    __base16_fish_shell_set_background "0b" "1c" "2c"
    __base16_fish_shell_create_vimrc_background harmonic-dark
    set -U base16_fish_theme harmonic-dark

    set -e color00
    set -e color01
    set -e color02
    set -e color03
    set -e color04
    set -e color05
    set -e color06
    set -e color07
    set -e color08
    set -e color09
    set -e color10
    set -e color11
    set -e color12
    set -e color13
    set -e color14
    set -e color15
    set -e color16
    set -e color17
    set -e color18
    set -e color19
    set -e color20
    set -e color21
    set -e color_foreground
    set -e color_background
end