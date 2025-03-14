local wezterm = require 'wezterm'

return{
   font = wezterm.font 'JetBrains Mono',
   color_scheme = 'Monokai (base16)',
   hide_tab_bar_if_only_one_tab = true,
   background = {
      {
      source = {File = '/home/skwyx/Pictures/Wallpapers/vi-zaun.png'},
      width = 'Cover',
      height = 'Cover',
      horizontal_align = 'Left',
      hsb = {
            brightness = 0.1,
         }
      }
   }
}
