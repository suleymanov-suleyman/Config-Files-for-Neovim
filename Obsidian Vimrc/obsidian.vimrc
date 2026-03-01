" --- TEMEL AYARLAR ---
set tabstop=4
exmap blurEditor jsfile blur.js

exmap showVimium obcommand vimium:show-markers
nmap f :blurEditor<CR>:showVimium<CR>
set clipboard=unnamed

" --- JKL; YÖN TUŞLARI (hjkl Yerine) ---
noremap j h
noremap k gj
noremap l gk
noremap ; l

" --- EKRAN MERKEZLEME ---
nmap N Nzz
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz


" --- ARAMA VURGUSUNU TEMİZLEME ---
nmap <Space>c :nohl<CR>

" --- HIZLI KELİME SEÇİMİ VE DEĞİŞTİRME ---
nmap <A-q> viwc
nmap <A-a> viw

" --- SATIR BAŞI VE SONU ---
noremap n ^
noremap m $

" --- GÖRSEL MOD GİRİNTİLEME ---
vmap < <gv
vmap > >gv

" --- SATIR BİRLEŞTİRME (J) ---
nmap J mzJ`z

" --- PENCERE BÖLME (Split) ---
exmap splitVertical obcommand workspace:split-vertical
nmap <Space>sv :splitVertical<CR>

exmap splitHorizontal obcommand workspace:split-horizontal
nmap <Space>sh :splitHorizontal<CR>

" --- PENCERELER ARASI GEZİNME (jkl; uyumlu) ---
exmap focusLeft obcommand editor:focus-left
nmap <C-j> :focusLeft<CR>

exmap focusBottom obcommand editor:focus-bottom
nmap <C-k> :focusBottom<CR>

exmap focusTop obcommand editor:focus-top
nmap <C-l> :focusTop<CR>

exmap focusRight obcommand editor:focus-right
nmap <C-;> :focusRight<CR>

" --- SEKME (Buffer) GEZİNME ---
exmap nextTab obcommand workspace:next-tab
nmap <Space>bn :nextTab<CR>

exmap prevTab obcommand workspace:previous-tab
nmap <Space>bp :prevTab<CR>

" --- SATIRLARI YUKARI/AŞAĞI TAŞIMA (jkl; uyumlu) ---
exmap moveLineUp obcommand editor:swap-line-up
nmap <A-l> :moveLineUp<CR>

exmap moveLineDown obcommand editor:swap-line-down
nmap <A-k> :moveLineDown<CR>

" --- ARAMA ---
exmap globalSearch obcommand global-search:open
nmap <Space>f :globalSearch<CR>
