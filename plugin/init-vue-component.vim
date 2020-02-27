function! CreateLangText(text)
  if a:text != ""
    return " lang=\"" . a:text . "\""
  endif
  return ""
endfunction

function! InitVueComponent()
  call inputsave()
  let template = input("template: ")
  let script = input("script: ")
  let style = input("style: ")
  call inputrestore()
  execute ":normal gg"
  execute ":normal i<template" . CreateLangText(template) . ">\n</template>\n"
  execute ":normal i<script" . CreateLangText(script) . ">\n</script>\n"
  execute ":normal i<style" . CreateLangText(style) . ">\n</style>\n"
endfunction

command! InitVueComponent call InitVueComponent()

