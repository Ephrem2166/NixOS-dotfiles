{...}:
{
programs.tmux = {
enable = true;
extraConfig = ''
# set-option -sa terminal-overrides ",xterm*:Tc"
set -g mouse on

unbind C-b
set -g prefix C-Space
bind C-Space send-prefix

# Vim style pane selection
bind h select-pane -L
bind j select-pane -D 
bind k select-pane -U
bind l select-pane -R

# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on

# Use Alt-arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window

# Shift Alt vim keys to switch windows
bind -n M-H previous-window
bind -n M-L next-window


# set vi-mode
set-window-option -g mode-keys vi
# keybindings
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

bind v split-window -h -c "#{pane_current_path}"
bind h split-window -v -c "#{pane_current_path}"

bind t new-window -c "#{pane_current_path}"
bind x kill-pane
bind q kill-window

# Zoom pane
bind + resize-pane -Z
bind d detach
bind '"' choose-window
bind : command-prompt
bind ? list-keys

# ==========================
# ===  General settings  ===
# ==========================

set -g base-index 1
set -g pane-base-index 1
set -sg escape-time 0
set -g buffer-limit 20
set -g history-limit 20000
set -g display-time 1000
set -g repeat-time 300
set -g remain-on-exit off
set -g mouse on
set -g renumber-windows on
set -g set-clipboard on
set -g status on
set -g status-interval 1
set -g status-position top
set -g set-titles off # Set parent terminal title to reflect current window in tmux session
set -g set-titles-string "#I:#W"
set -s extended-keys on
set -g default-terminal "tmux-256color"
set -as terminal-features 'xterm*:extkeys:RGB'
set -as terminal-overrides ',xterm*:RGB'

# For Yazi image previews to work in tmux
set -g allow-passthrough on
set -ga update-environment TERM
set -ga update-environment TERM_PROGRAM

set -g pane-active-border-style 'fg=magenta,bg=default'
set -g pane-border-style 'fg=brightblack,bg=default'

# synchronize send any keys you type to both panes(Keep it off)
setw -g synchronize off
setw -g mode-keys vi
setw -g xterm-keys on
setw -g status-keys vi
setw -g allow-rename off
setw -g automatic-rename off
setw -g aggressive-resize on


'';
};
}
