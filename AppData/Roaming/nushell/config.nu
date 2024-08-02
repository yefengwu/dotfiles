$env.config = {
  show_banner: false,
}
# starship
let starship = 'C:\Program Files\starship\bin\starship.exe'
$env.STARSHIP_SHELL = "nu"
$env.STARSHIP_SESSION_KEY = (random chars -l 16)
$env.PROMPT_MULTILINE_INDICATOR = (^$starship prompt --continuation)

# Does not play well with default character module.
# TODO: Also Use starship vi mode indicators?
$env.PROMPT_INDICATOR = ""

$env.PROMPT_COMMAND = { ||
    # jobs are not supported
    let width = (term size).columns
    ^$starship prompt $"--cmd-duration=($env.CMD_DURATION_MS)" $"--status=($env.LAST_EXIT_CODE)" $"--terminal-width=($width)"
}

# Whether we have config items
let has_config_items = (not ($env | get -i config | is-empty))

$env.config = if $has_config_items {
    $env.config | upsert render_right_prompt_on_last_line true
} else {
    {render_right_prompt_on_last_line: true}
}

$env.PROMPT_COMMAND_RIGHT = { ||
    let width = (term size).columns
    ^$starship prompt --right $"--cmd-duration=($env.CMD_DURATION_MS)" $"--status=($env.LAST_EXIT_CODE)" $"--terminal-width=($width)"
}

$env.STARSHIP_CONFIG = "C:/Users/xuwei/.config/starship/starship.toml"

# Support zoxide
source ~/.zoxide.nu

alias cat = bat
alias su = scoop update -a
alias vi = nvim
alias si = scoop install
alias ci = chezmoi
alias eo = explorer
alias lg = lazygit.exe
alias gcl = git clone 
alias ga = git add . 
alias gd = git diff 
alias gad = git add . and git commit --amend-no-edit
alias gst = git status
alias md = mkdir
def pwd [] {
  $env.PWD
}
def env [] {
  $env | table
}
