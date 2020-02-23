" ============================================================================
" File: onedark.vim
" Description: onedark colorscheme for Lightline (itchyny/lightline.vim)
" Author: novadev94 <novadev94@gmail.com>
" Source: https://github.com/novadev94/lightline-onedark
" Last Modified: 19 Feb 2020
" ===========================================================================

let s:bold = get(g:, 'lightline#onedark#disable_bold_style', 0) ? '' : 'bold'

" Colour codes that are used in the original onedark.vim theme
" https://github.com/joshdick/onedark.vim/blob/master/autoload/onedark.vim

let s:light_red     = [ '#E06C75', 204, 1 ]
let s:dark_red      = [ '#BE5046', 196, 9 ]
let s:green         = [ '#98C379', 114, 2 ]
let s:blue          = [ '#61AFEF', 39, 4 ]
let s:cyan          = [ '#56B6C2', 38, 6 ]
let s:purple        = [ '#C678DD', 170, 5 ]
let s:light_yellow  = [ '#E5C07B', 180, 3 ]
let s:dark_yellow   = [ '#D19A66', 173, 11 ]

let s:black         = [ '#282C34', 235, 0 ]
let s:white         = [ '#ABB2BF', 145, 7 ]
let s:comment_grey  = [ '#5C6370', 59, 15 ]
let s:gutter_grey   = [ '#4B5263', 238, 15 ]
let s:cursor_grey   = [ '#2C323C', 236, 8 ]
let s:visual_grey   = [ '#3E4452', 237, 15 ]
let s:menu_grey     = [ '#3E4452', 237, 8 ]
let s:special_grey  = [ '#3B4048', 238, 15 ]
let s:vertsplit     = [ '#181A1F', 59, 15 ]

let s:tab_color     = s:blue
let s:normal_color  = s:blue
let s:insert_color  = s:green
let s:replace_color = s:light_red
let s:visual_color  = s:light_yellow
let s:active_bg     = s:visual_grey
let s:inactive_bg   = s:special_grey

let s:p = {'normal': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'inactive': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:black, s:normal_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.normal.right    = [ [ s:black, s:normal_color ], [ s:white, s:active_bg ] ]
let s:p.normal.middle   = [ [ s:normal_color, s:cursor_grey ] ]

let s:p.insert.left     = [ [ s:black, s:insert_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.insert.right    = [ [ s:black, s:insert_color ], [ s:white, s:active_bg ] ]
let s:p.insert.middle   = [ [ s:insert_color, s:cursor_grey ] ]

let s:p.replace.left    = [ [ s:black, s:replace_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.replace.right   = [ [ s:black, s:replace_color ], [ s:white, s:active_bg ] ]
let s:p.replace.middle  = [ [ s:replace_color, s:cursor_grey ] ]

let s:p.visual.left     = [ [ s:black, s:visual_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.visual.right    = [ [ s:black, s:visual_color ], [ s:white, s:active_bg ] ]
let s:p.visual.middle   = [ [ s:visual_color, s:cursor_grey ] ]

let s:p.inactive.left   = [ [ s:white, s:inactive_bg ], [ s:white, s:inactive_bg ] ]
let s:p.inactive.right  = [ [ s:white, s:inactive_bg ], [ s:white, s:inactive_bg ] ]
let s:p.inactive.middle = [ [ s:white, s:inactive_bg ] ]

let s:p.tabline.left    = [ [ s:comment_grey, s:cursor_grey ] ]
let s:p.tabline.right   = [ [ s:tab_color, s:cursor_grey ] ]
let s:p.tabline.middle  = [ [ s:black, s:black ] ]
let s:p.tabline.tabsel  = [ [ s:black, s:blue, s:bold ] ]
let s:p.tabline.bufsel  = [ [ s:tab_color, s:visual_grey ] ]
let s:p.tabline.tabsep  = [ [ s:white, s:cursor_grey, s:bold ] ]

let s:p.normal.error    = [ [ s:black, s:light_red ] ]
let s:p.normal.warning  = [ [ s:black, s:light_yellow ] ]
let s:p.normal.info     = [ [ s:black, s:purple ] ]

let g:lightline#colorscheme#onedark#palette = lightline#colorscheme#flatten(s:p)
