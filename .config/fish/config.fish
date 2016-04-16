set -x PATH /usr/local/heroku/bin $PATH
set -x PATH /home/ag/.gem/ruby/2.1.0/bin $PATH
set -x PATH /home/ag/.go/bin $PATH
set -x PATH /home/ag/.cargo/bin $PATH
set -x PATH /home/ag/eclipse/cpp-mars/eclipse $PATH
set -x PATH /usr/lib64/ccache/bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /opt/bin $PATH

alias v "nvim"
alias la "exa -la"
alias ll "exa -l"
alias snvim "sudoedit"

set -x HUBOT_SLACK_TOKEN REDACTED
set -x CCACHE_DIR /tmp/ccache.ag
set -x GOPATH /home/ag/.go
set -x NNTPSERVER news.gmane.org
set -x PORTAGE_GPG_DIR /home/ag/.gnupg
set -x PORTAGE_GPG_KEY 7C4EE1E5

if env | grep -q st-256color
  set -x NVIM_TUI_ENABLE_TRUE_COLOR 1
end

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
set tacklebox_theme urdh

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract
set tacklebox_plugins extract sdl grc pip

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish
