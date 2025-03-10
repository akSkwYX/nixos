local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
   local _, _, window = mux.spawn_window(cmd or {})
   local gui_window = window:gui_window();
   gui_window:maximize()
end
)

return{
   font = wezterm.font 'JetBrains Mono',
   color_scheme = 'Monokai (base16)',
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
