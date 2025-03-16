require 'rake'

target = ENV["HOME"]
base_path = FileUtils.pwd()

task :install do
  # .zsh
  FileUtils.ln_s("#{base_path}/zsh/.zshrc", "#{target}/.zshrc")

  # sway
  FileUtils.ln_s("#{base_path}/sway", "#{target}/.config/sway")
  FileUtils.ln_s("#{base_path}/swaylock", "#{target}/.config/swaylock")
  FileUtils.ln_s("#{base_path}/swayosd", "#{target}/.config/swayosd")
  FileUtils.ln_s("#{base_path}/swaync", "#{target}/.config/swaync")
  FileUtils.ln_s("#{base_path}/waybar", "#{target}/.config/waybar")
  FileUtils.ln_s("#{base_path}/wlogout", "#{target}/.config/wlogout")
  FileUtils.ln_s("#{base_path}/gammastep", "#{target}/.config/gammastep")

  # niri
  FileUtils.ln_s("#{base_path}/niri", "#{target}/.config/niri")
  FileUtils.ln_s("#{base_path}/fuzzel", "#{target}/.config/fuzzel")
  FileUtils.ln_s("#{base_path}/mako", "#{target}/.config/mako")

  # hypr
  FileUtils.ln_s("#{base_path}/hypr", "#{target}/.config/hypr")

  # qt
  FileUtils.ln_s("#{base_path}/qt5ct", "#{target}/.config/qt5ct")
  FileUtils.ln_s("#{base_path}/qt6ct", "#{target}/.config/qt6ct")

  # neovim
  FileUtils.ln_s("#{base_path}/nvim", "#{target}/.config/nvim")

  # tmux
  FileUtils.ln_s("#{base_path}/tmux", "#{target}/.config/tmux")

  # terminal
  FileUtils.ln_s("#{base_path}/alacritty", "#{target}/.config/alacritty")
  FileUtils.ln_s("#{base_path}/ghostty", "#{target}/.config/ghostty")
  FileUtils.ln_s("#{base_path}/wezterm", "#{target}/.config/wezterm")
  FileUtils.ln_s("#{base_path}/posh", "#{target}/.config/posh")
  FileUtils.ln_s("#{base_path}/foot", "#{target}/.config/foot")

  # code editors
  FileUtils.ln_s("#{base_path}/zed", "#{target}/.config/zed")
end

task :uninstall do
  FileUtils.rm([
    "#{target}/.zshrc",
    "#{target}/.config/alacritty",
    "#{target}/.config/ghostty",
    "#{target}/.config/wezterm",
    "#{target}/.config/foot",
    "#{target}/.config/posh",
    "#{target}/.config/gammastep",
    "#{target}/.config/nvim",
    "#{target}/.config/sway",
    "#{target}/.config/swaylock",
    "#{target}/.config/swayosd",
    "#{target}/.config/swaync",
    "#{target}/.config/hypr",
    "#{target}/.config/tmux",
    "#{target}/.config/waybar",
    "#{target}/.config/wlogout",
    "#{target}/.config/niri",
    "#{target}/.config/fuzzel",
    "#{target}/.config/mako",
    "#{target}/.config/qt5ct",
    "#{target}/.config/qt6ct",
    "#{target}/.config/zed",
  ])
end
