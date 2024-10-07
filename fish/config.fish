if status is-interactive
    # Commands to run in interactive sessions can go here
    # Use XDG paths for consolidating configuration locations
    # https://wiki.archlinux.org/title/XDG_Base_Directory
    set -gx XDG_CACHE_HOME $HOME/.cache
    set -gx XDG_CONFIG_HOME $HOME/.config
    set -gx XDG_DATA_HOME $HOME/.local/share
    set -gx XDG_STATE_HOME $HOME/.local/state

    #: Helpers
    # FAST CD
    zoxide init fish --cmd cd | source

    set -gx TMUX_FZF_OPTIONS "-p -w 60% -h 50% -m"
    set -gx PAGER "less -R"

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx MANPAGER "nvim +Man!"
    alias vimdiff="nvim -d"
    # nvim as MANPAGER
    # export MANPAGER='nvim +Man!'
    # export MANWIDTH=999

    alias py python
    alias bpy bpython
    alias ipy ipython
    alias lt "eza --tree"
    alias vim "nvim --clean -u $HOME/.config/vim/init.lua"
    alias l "eza -1 --hyperlink"

    abbr icat 'kitten icat'
    abbr get 'xh -d'
    abbr bonk "mkdir -p"
    abbr yt yt-dlp

    abbr dvc '/home/omi/media/dvc.sh -c '
    #abbr buzz "curl --progress-bar -o o -H 'Authorization: Bearer 6392379947190010' -T sample.mp4 https://w.buzzheavier.com/ && cat o && rm o "


    # FISHER
    # prompt
    set --global pure_symbol_prompt ':)' # no http request
    set --global pure_check_for_new_release false # no http request
    # fzf
    # fzf_configure_bindings --history= --variables=


    # Vi binidng
    function fish_user_key_bindings
        # Execute this once per mode that emacs bindings should be used in
        fish_default_key_bindings -M insert
        # Then execute the vi-bindings so they take precedence when there's a conflict.
        # Without --no-erase fish_vi_key_bindings will default to
        # resetting all bindings.
        # The argument specifies the initial mode (insert, "default" or visual).
        fish_vi_key_bindings --no-erase insert
        bind -M insert -m default jk backward-char force-repaint
    end

    # Created by `pipx` on 2024-03-08 20:31:49
    #set PATH $PATH /home/omi/.local/bin

end

 #thefuck --alias | source
# dash -c "gnome-screenshot --area --include-pointer -f /tmp/gnome-ss.png  && swappy -f /tmp/gnome-ss.png -o /home/omi/pix/ss/$(date +"%H:%M:%S-%b%d-%a").png  "
