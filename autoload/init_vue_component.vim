function! s:create_lang_text(text)
  if a:text != ""
    return " lang=\"" . a:text . "\""
  endif
  return ""
endfunction

function! init_vue_component#insert_init()
  call inputsave()
  let template = input("template: ")
  let script = input("script: ")
  let style = input("style: ")
  call inputrestore()
  execute ":normal gg"
  execute ":normal i<template" . s:create_lang_text(template) . ">\n</template>\n"
  execute ":normal i<script" . s:create_lang_text(script) . ">\n</script>\n"
  execute ":normal i<style" . s:create_lang_text(style) . ">\n</style>\n"
endfunction

