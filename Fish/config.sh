# Paste codes to ~/.config/fish/config.fish

fish_vi_key_bindings

function fish_greeting
    set_color cyan
    echo -n "Greetings "
    set_color yellow
    echo -n "Suleymanov"
    set_color normal
    echo ""
end

function fish_user_key_bindings
    bind \ef forward-char   #hayalet yaziyi tamamlama kisayolu
    bind \ed forward-word   #hayalet yaziyi kelime kelime tamamlama

    bind -M default j backward-char     
    bind -M default k down-or-search    
    bind -M default l up-or-search      
    bind -M default ";" forward-char     

    bind -M visual j backward-char
    bind -M visual k down-line
    bind -M visual l up-line
    bind -M visual ";" forward-char
end
