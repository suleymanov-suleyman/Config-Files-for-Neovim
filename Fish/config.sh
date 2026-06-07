# Paste codes to ~/.config/fish/config.fish

fish_vi_key_bindings

if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
end

# --- ALIASES ---
alias ar='distrobox enter arch-dev'
alias ub='distrobox enter Ubuntu-Bazzite'
alias c='clear'
alias upc='yay -Syu'
alias upu='sudo nala update && sudo nala upgrade'
alias arc="distrobox enter arch-dev -- /usr/bin/fish"
alias e="exit"

# --- FUNCTIONS ---
function startlamp 
    sudo mkdir -p /run/httpd
    sudo httpd -k start
    sudo mysqld_safe &
end

function stoplamp 
    sudo httpd -k stop 
    sudo mariadb-admin -u root shutdown
end

function fish_greeting
    set_color cyan
    echo -n "Greetings "
    set_color yellow
    echo -n "Suleymanov"
    set_color normal
    echo ""
end

function fish_user_key_bindings
    # Hayalet yaziyi tamamlama kisayollari
    bind -M insert \ef accept-autosuggestion
    bind -M insert \ed forward-word
    bind \ef accept-autosuggestion
    bind \ed forward-word

    # Olduğun satırı silme
    bind -M insert \es kill-whole-line
    bind \es kill-whole-line

    # Vi mode ozel yon tuslari atamalari
    bind -M default j backward-char     
    bind -M default k down-or-search    
    bind -M default l up-or-search      
    bind -M default ";" forward-char     

    bind -M visual j backward-char
    bind -M visual k down-line
    bind -M visual l up-line
    bind -M visual ";" forward-char
end
