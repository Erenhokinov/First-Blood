local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Nord (Gogh)'
config.font = wezterm.font_with_fallback({
  { family = 'Liberation Mono' },
  { family = 'Symbols Nerd Font Mono' },
})
config.font_size = 12.0
config.window_background_opacity = 0.85
config.window_decorations = "NONE"

-- ЗАСТАВЛЯЕМ использовать X11 (через XWayland), это вылечит зависание
config.enable_wayland = false
config.front_end = "OpenGL" -- Теперь можно вернуть OpenGL, через X11 он стабильнее

return config
