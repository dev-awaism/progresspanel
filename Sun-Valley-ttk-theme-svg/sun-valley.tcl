# Copyright © 2021 rdbende <rdbende@gmail.com>

source Sun-Valley-ttk-theme-svg/theme/dark.tcl

proc set_theme {mode} {
	if {$mode == "dark"} {
		ttk::style theme use "sun-valley-dark"

        array set colors {
            -fg             "#ffffff"
            -bg             "#1c1c1c"
            -disabledfg     "#595959"
            -selectfg       "#ffffff"
            -selectbg       "#2f60d8"
        }

        ttk::style configure . \
            -background $colors(-bg) \
            -foreground $colors(-fg) \
            -troughcolor $colors(-bg) \
            -focuscolor $colors(-selectbg) \
            -selectbackground $colors(-selectbg) \
            -selectforeground $colors(-selectfg) \
            -insertwidth 1 \
            -insertcolor $colors(-fg) \
            -fieldbackground $colors(-selectbg) \
            -font {"Segoe Ui" 10} \
            -borderwidth 1 \
            -relief flat

        tk_setPalette \
            background [ttk::style lookup . -background] \
            foreground [ttk::style lookup . -foreground] \
            highlightColor [ttk::style lookup . -focuscolor] \
            selectBackground [ttk::style lookup . -selectbackground] \
            selectForeground [ttk::style lookup . -selectforeground] \
            activeBackground [ttk::style lookup . -selectbackground] \
            activeForeground [ttk::style lookup . -selectforeground]

        ttk::style map . -foreground [list disabled $colors(-disabledfg)]

        option add *font [ttk::style lookup . -font]
        option add *Treeview.show tree
        option add *Menu.selectcolor $colors(-fg)
        option add *tearOff 0

	}
}