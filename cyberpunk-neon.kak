# Based on Roboron3042's Cyberpunk Neon colorscheme
# https://github.com/Roboron3042/Cyberpunk-Neon/

# Color palette
declare-option -hidden str darkblue "rgb:000b1e"
declare-option -hidden str blue "rgb:091833"
declare-option -hidden str lightblue "rgb:133e7c"
declare-option -hidden str cyan "rgb:0abdc6"
declare-option -hidden str pink "rgb:ea00d9"
declare-option -hidden str purple "rgb:711c91"
declare-option -hidden str red "rgb:ff0000"
declare-option -hidden str orange "rgb:f57800"
declare-option -hidden str white "rgb:d7d7d5"
declare-option -hidden str yellow "rgb:ffff00"
declare-option -hidden str green "rgb:00ff00"

declare-option -hidden str background "%opt{darkblue}"

# For Code
face global value "%opt{orange}"
face global type "%opt{pink},default+b"
face global variable "%opt{pink}"
face global module "%opt{pink}"
face global function "%opt{pink}"
face global string "@value"
face global keyword "%opt{pink}+b"
face global operator "%opt{pink}"
face global attribute "%opt{pink}"
face global comment "%opt{lightblue}"
face global documentation "@comment"
face global meta "%opt{orange}"
face global builtin "default+b"

# For markup
face global title "%opt{pink}"
face global header "default"
face global mono "%opt{background},%opt{green}"
face global block "%opt{background},%opt{green}"
face global link "%opt{pink}+u"
face global bullet "default"
face global list "default"

# builtin faces
face global Default "%opt{cyan},%opt{background}"
face global PrimarySelection "rgba:d7d7d599,%opt{purple}+fg"
face global SecondarySelection "rgba:0abdc699,%opt{lightblue}+fg"
face global PrimaryCursor "+br@Default"
face global SecondaryCursor "%opt{background},%opt{white}+b"
face global PrimaryCursorEol "%opt{pink},%opt{background}+b"
face global SecondaryCursorEol "%opt{pink},%opt{white}+b"
face global LineNumbers "default,default"
face global LineNumberCursor "default,rgb:09254b+b"
face global MenuForeground "default,%opt{purple}"
face global MenuBackground "default,%opt{blue}"
face global MenuInfo "@Information"
face global Information "%opt{white},%opt{pink}"
face global Error "%opt{red},default+u"
face global StatusLine "@Default"
face global StatusLineMode "%opt{green},default"
face global StatusLineInfo "%opt{purple},default"
face global StatusLineValue "%opt{orange},default"
face global StatusCursor "+r@Default"
face global Prompt "%opt{pink},default+b"
face global MatchingChar "%opt{background},%opt{pink}+bF"
face global Whitespace "@comment"
face global BufferPadding "@comment"

# kak-crosshairs integration
face global crosshairs_line "@LineNumberCursor"
face global crosshairs_column "@LineNumberCursor"

# kakoune-roguelight integration
face global RogueLightBackground "%opt{background}"

# kak-rainbow integration
set-option global rainbow_colors "%opt{pink}" "%opt{orange}"  "%opt{yellow}" "%opt{green}" "%opt{cyan}" "%opt{purple}"

# powerline.kak integration
hook global ModuleLoaded powerline %{ require-module powerline_cyberpunk_neon }

provide-module powerline_cyberpunk_neon %{
	set-option -add global powerline_themes "cyberpunk-neon"
	define-command -hidden powerline-theme-cyberpunk-neon %{
    	# bufname
    	declare-option -hidden str powerline_color00 "rgb:ff00ff" # fg
    	declare-option -hidden str powerline_color03 "rgb:133e7c" # bg

    	# position
    	declare-option -hidden str powerline_color05 "rgb:8700af" # fg
    	declare-option -hidden str powerline_color01 "rgb:00005f" # bg

    	# git
    	declare-option -hidden str powerline_color02 "rgb:5fd700" # fg
    	declare-option -hidden str powerline_color04 "rgb:8700af" # bg

    	# line-column
    	declare-option -hidden str powerline_color06 "rgb:00d7d7" # fg
    	declare-option -hidden str powerline_color09 "rgb:005faf" # bg

    	# mode-info
    	declare-option -hidden str powerline_color07 "default" # fg
		declare-option -hidden str powerline_color08 "000b1e" # bg

    	# filetype
    	declare-option -hidden str powerline_color10 "rgb:8700af" # fg
    	declare-option -hidden str powerline_color11 "rgb:00d7d7" # bg

    	# client
    	declare-option -hidden str powerline_color12 "rgb:ff00ff"  # fg
    	declare-option -hidden str powerline_color13 "rgb:eeeeee"  # bg

    	# session
    	declare-option -hidden str powerline_color15 "rgb:00d7d7" # fg
    	declare-option -hidden str powerline_color14 "rgb:005faf" # bg

    	declare-option -hidden str powerline_next_bg "rgb:000b1e"
    	declare-option -hidden str powerline_base_bg "rgb:000b1e"
	}
}
