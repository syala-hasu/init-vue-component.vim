if exists("g:loaded_init_vue_component")
  finish
endif 

let g:loaded_init_vue_component=1

command! InitVueComponent call init_vue_component#insert_init()
