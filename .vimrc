if has('python3')
  python3 << EOF
try:
    from powerline.vim import setup as powerline_setup
    powerline_setup()
    del powerline_setup
except ImportError:
    pass
EOF
  set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
endif

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set t_Co=256
set mouse=nv
