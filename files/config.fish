# colors
#
set gray fsbd2f 
set red EF5350
set green b8bb26 
set yellow FFEB3B 
set lightblue 03A9F4 
set orange fe8019
set purple 6c71c4
set blue 82B1FF
set cyan 6DC2B8
set light_blue 76D4FF
set white_gray CAD3DE
set faded_gray 586e75
set dark_gray 545454

# fish terminal colors
set fish_color_normal $gray # the default color
set fish_color_command $orange # the color for commands
set fish_color_quote $green # the color for quoted blocks of text
set fish_color_end $lightblue # the color for process separators like ';' and '&'
set fish_color_error $red # the color used to highlight potential errors
set fish_color_param $green # the color for regular command parameters
set fish_color_comment $faded_gray # the color used for code comments
set fish_color_match $lightblue # the color used to highlight matching parenthesis
set fish_color_search_match --background=$lightblue # the color used to highlight history search matches
set fish_color_operator $purple # the color for parameter expansion operators like '*' and '~'
set fish_color_redirection $yellow # the color for IO redirections
set fish_color_escape $green # the color used to highlight character escapes like '\n' and '\x70'
set fish_color_autosuggestion $gray # the color used for autosuggestions
# Additionally# the following variables are available to change the highlighting in the completion pager:
set fish_pager_color_prefix $gray # the color of the prefix string# i.e. the string that is to be completed
set fish_pager_color_completion $lightblue # the color of the completion itself
# set fish_pager_color_description # the color of the completion description
# set fish_pager_color_progress # the color of the progress bar at the bottom left corner
set fish_pager_color_secondary $red # the background color of the every second completion
# set fish_color_cwd gray # the color used for the current working directory in the default prompt
# set fish_color_user # the color used to print the current username in some of fish default prompts
# set fish_color_host # the color used to print the current host system in some of fish default prompts


set fish_greeting ""

# set -x PATH "$HOME/.pyenv/bin" $PATH

bass source ~/.aliases
bass source ~/.envvariables

# status --is-interactive; and source (pyenv init -|psub)
# status --is-interactive; and source (pyenv virtualenv-init -|psub)

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
