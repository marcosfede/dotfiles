set fish_color_autosuggestion fsbd2f  #suggestions like full directory
set fish_color_command fe8019  # succesful commands
set fish_color_comment green  # comments
set fish_color_cwd green  # 
set fish_color_error fb4934 # errors
set fish_color_normal ebdbb2 # ??
set fish_color_param b8bb26 # parameters like directories
set fish_color_redirection 097ed3 # redirection like > stdin
set fish_color_operator 097ed3 # operators like |
set fish_color_search_match --background=665c54 # tab selection 
set fish_color_selection --background=665c54
set fish_greeting ""
. ~/.aliasesfish
bass . ~/.envvariables
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
