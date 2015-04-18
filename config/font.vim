" font settings
if has('gui_running')
	set guioptions=egmrLt
	if has('win32')
		set guifont=Yahei_Consolas_Hybrid:h11:cDEFAULT
	elseif has('mac')
		set guifont=Menlo:h16,Courier:h16
	elseif has('unix')
		set guifont=Yahei\ Mono\ 11,DejaVu\ Sans\ Mono\ 11
	endif
endif

