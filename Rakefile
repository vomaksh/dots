require 'rake'

target = ENV["HOME"]
base_path = FileUtils.pwd()

task :install do
  # sway
  FileUtils.ln_s("#{base_path}/sway", "#{target}/.config/sway")
  FileUtils.ln_s("#{base_path}/swaylock", "#{target}/.config/swaylock")
  FileUtils.ln_s("#{base_path}/waybar", "#{target}/.config/waybar")
  FileUtils.ln_s("#{base_path}/wlogout", "#{target}/.config/wlogout")
  FileUtils.ln_s("#{base_path}/gammastep", "#{target}/.config/gammastep")

  # neovim and tmux
  FileUtils.ln_s("#{base_path}/nvim", "#{target}/.config/nvim")
  FileUtils.ln_s("#{base_path}/tmux", "#{target}/.config/tmux")

  # terminal
  FileUtils.ln_s("#{base_path}/alacritty", "#{target}/.config/alacritty")

  # chromium 
  FileUtils.ln_s("#{base_path}/chromium/chromium-flags.conf", "#{target}/.config/chromium-flags.conf")

  # chrome
  FileUtils.ln_s("#{base_path}/chrome/chrome-flags.conf", "#{target}/.config/chrome-flags.conf")
end

task :uninstall do
  FileUtils.rm([
    "#{target}/.config/alacritty",
    "#{target}/.config/gammastep",
    "#{target}/.config/nvim",
    "#{target}/.config/sway",
    "#{target}/.config/swaylock",
    "#{target}/.config/tmux",
    "#{target}/.config/waybar",
    "#{target}/.config/wlogout",
    "#{target}/.config/chromium-flags.conf",
    "#{target}/.config/chrome-flags.conf",
  ])
end
