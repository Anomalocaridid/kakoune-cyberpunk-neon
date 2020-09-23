# Based on Roboron3042's Cyberpunk Neon colorscheme
# https://github.com/Roboron3042/Cyberpunk-Neon/

# code

face global value rgb:f57800
face global type @keyword
face global identifier rgb:ea00d9
face global string @value
face global error rgb:ff0000+bu
face global keyword +b@identifier
face global operator @value
face global attribute @identifier
face global comment rgb:133e7c
face global meta @value

# text
 
face global title @identifier
face global header default
face global mono rgb:000b1e,rgb:00ff00
face global block @mono
face global link @title
face global bullet default
face global list default

# kakoune UI

face global Default rgb:0abdc6,rgb:000b1e
face global PrimarySelection rgba:d7d7d599,rgb:711c91
face global SecondarySelection rgba:0abdc699,rgb:133e7c
face global PrimaryCursor +br@Default
face global SecondaryCursor rgb:000b1e,rgb:d7d7d5+b
face global MatchingChar rgb:000b1e,rgb:ea00d9+bF
face global Search default+u
face global Whitespace +b@comment
face global BufferPadding @comment
face global LineNumbers @Default
face global LineNumberCursor default,rgb:09254b+b
face global MenuForeground default,rgb:711c91
face global MenuBackground default,rgb:091833
face global MenuInfo @Information
face global Information rgb:d7d7d5,rgb:ea00d9
face global Error @error
face global StatusLine @Default
face global StatusLineMode rgb:00ff00
face global StatusLineInfo rgb:d100c3
face global StatusLineValue @value
face global StatusCursor +r@Default
face global Prompt @keyword

# kak-crosshairs integration
face global crosshairs_line @LineNumberCursor
face global crosshairs_column @LineNumberCursor

# kakoune-roguelight integration
face global RogueLightBackground rgb:000b1e

# kak-rainbow integration
# colors:                         pink         orange        yellow       green         blue         purple     
set-option global rainbow_colors "rgb:ff00ff" "rgb:f57600"  "rgb:ffff00" "rgb:00ff00" "rgb:0abdc7" "rgb:721c92"

# kakoune-easymotion integration
face global EasyMotionBackground rgb:d7d7d5
face global EasyMotionForeground rgb:ea00d9
face global EasyMotionSelected rgb:711c91

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
