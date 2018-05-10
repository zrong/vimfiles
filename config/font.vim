" font settings
if has('gui_running')
	set guioptions=egmrLt
	if has('win32')
		set guifont=Yahei_Consolas_Hybrid:h11:cDEFAULT
	elseif has('mac')
    set guifont=Monaco_for_Powerline:h14,Courier:h14
    "set guifont=Monaco:h14,Courier:h14
	elseif has('unix')
		set guifont=Yahei\ Mono\ 11,DejaVu\ Sans\ Mono\ 11
	endif
endif

