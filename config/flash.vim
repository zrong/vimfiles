command! -nargs=* Make call Ant(<f-args>)

" Mapping compile shortcut key
cmap <F11> Make fdb 0
map <F11> :Make fdb 0<CR>
map <S-F11> :Make 0 0<CR>
cmap <F12> Make ftp 0
map <F12> :Make ftp 0<CR>

function! GetMainFile(...)
	if exists('a:1')
		return 'src/'.a:1.'.as'
	endif
	" 从ant属性文件中获取此项目的主文件名
	let build = 'build.properties'
	if !filereadable(build)
		call Echo('找不到文件：'.build)
		return 0
	endif
	let prop = readfile(build)
	let pat = '^main\s\?=\s\?\(\i\+\)$'
	for aline in prop
		if aline =~ pat
			let l:main = substitute(aline, pat, '\1', '')
			break
		endif
	endfor
	if !exists('l:main')
		call Echo('找不到主文件名的定义!')
		return 0
	endif
	return 'src/'.l:main.'.as'
endfunction

" 参数1 要执行的ant的任务名，逗号分隔。可用值为init,ftp,fdb
" 参数2 文件名后缀
" 参数3 编译的主文件名
" 参数4 是否编译Debug版
function! Ant(...)
	let param = ''
	let local = 'false'
	let main = GetMainFile()
	if exists('a:1') && a:1 != '0'
		let targets = split(a:1, ',')
		for targetName in targets
			let param .= ' -D'.targetName.'=true'
		endfor
	endif
	if exists('a:2')
		" 允许使用后缀，就加入后缀
		if a:2 != '0'
			let param .= " -Dpost=".a:2
		endif
	" 没有设置后缀参数，默认加_local后缀
	else
		let param .= ' -Dpost=_local'
		let local = 'true'
	endif
	if exists('a:3') 
		if a:3 != '0' 
			let main = GetMainFile(a:3)
			let param .= ' -Dmain='.a:3
		endif
	endif
	if exists('a:4') && a:4 == '0'
		let param .= ' -Ddebug=false'
	endif
	" 在主文件中写入编译时间
	call WriteSource(main, local)
	execute 'echo "make'.param.'"'
	execute 'make '.param
endfunction

function! WriteSource(mainFile, isLocal)
	if !filereadable(a:mainFile)
		return
	endif
	" 改变KTScreen中的值
	execute 'split '.a:mainFile
	" 获得本地调试定义的代码行
	let localLine = search("Global.isDebug = ")
	" 获取编译日期的代码行
	let makeTimeLine = search('var __makeTimeMI')
	let localValue = "\t\tGlobal.isDebug = $IS_LOCAL;"
	let makeTimeValue = "\t\tvar __makeTimeMI:ContextMenuItem = new ContextMenuItem('$MAKE_TIME');"
	" 更新编译时间
	call setline(makeTimeLine, substitute(makeTimeValue, "$MAKE_TIME", strftime('%c', localtime()), ''))
	" 根据参数2更新是否编译成本地调试用程序
	call setline(localLine, substitute(localValue, "$IS_LOCAL", a:isLocal, ''))
	execute 'update'
	execute 'close'
endfunction

let s:TEMPLATE = "d:/flex_sdks/build/"

function! CreateProject(...)
	let l:SDK = $FLEX_HOME
	let l:SRC_ZRONG_AS3 = $ZRONG_AS3
	if !exists('a:1')
		let a:1 = getcwd()
	endif
	if !isdirectory(a:1)
		call mkdir(a:1)
	endif
	echo a:1
	execute 'lcd '.a:1
	call mkdir('src')
	call mkdir('bin')
	execute 'split '.s:TEMPLATE.'build.properties'
	execute '%s+\${CP_MAIN}+'.a:1."+"
	execute '%s+\${CP_ZRONG_AS3}+'.l:SRC_ZRONG_AS3."+"
	execute '%s+\${CP_SDK}+'.l:SDK."+"
	execute 'save build.properties'
	close
	execute 'split '.s:TEMPLATE.'build.xml'
	execute '%s+\${CP_MAIN}+'.a:1.'+'
	execute 'save build.xml'
	close
	execute 'split '.s:TEMPLATE.'Main.as'
	execute '%s+\${CP_MAIN}+'.a:1.'+'
	execute 'save src/'.a:1.'.as'
	close
endfunction

function! CreateClass(className, ...)
	let l:path = 'src/'
	execute 'split '.s:TEMPLATE.'Class.as'
	execute '%s+\${CC_MAIN}+'.a:className.'+'
	if exists('a:1') && len(a:1)>0
		execute '%s+\${CC_PACKAGE}+ '.a:1.'+'
		let l:package = split(a:1, '\.')
		" 建立不存在的目录
		for l:childPackage in l:package
			let l:path .= l:childPackage . '/'
			echo l:path
			if isdirectory(l:path)
				continue
			endif
			call mkdir(l:path)
		endfor
	else
		execute '%s+\${CC_PACKAGE}++'
	endif
	if exists('a:2')
		execute '%s+\${CC_EXTENDS}+ extends '.a:2.'+'
	else
		execute '%s+\${CC_EXTENDS}++'
	endif
	execute 'save '.l:path.a:className.'.as'
endfunction
