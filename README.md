# macOS Dotfiles

<img width="1440" alt="Screenshot 2024-08-25 at 12 34 03 AM" src="https://github.com/user-attachments/assets/2f396b56-3db8-468d-a951-85d5118530af">

## Software Used
- [yabai](https://github.com/koekeishiya/yabai): tiling window manager for macOS
- [skhd](https://github.com/koekeishiya/skhd): hotkey daemon for macOS
- [alacritty](https://github.com/alacritty/alacritty): cross-platform OpenGL terminal emulator
- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh): customizable cross platform shell prompt renderer

## Caveats
- Install the `SFMono Nerd Font` [here](https://github.com/shaunsingh/SFMono-Nerd-Font-Ligaturized?tab=readme-ov-file#macos).
- To display the weather,
create a file called `weather.env.sh` in `.config/sketchybar/scripts` that defines two variables: `KEY`, which should be your [weatherapi.com](https://www.weatherapi.com) 
API key, and `CITY`, which can be any of the [following](https://www.weatherapi.com/api-explorer.aspx).
- To properly update the sketchybar title when windows are switched, make sure to add the last few lines of [`yabairc`](.config/yabai/yabairc) where the `title_changed`
event is triggered.

## Wallpaper
[Migration](https://www.instagram.com/p/B5bWD4WHP29/) by [qinniart](https://www.instagram.com/qinniart/)

## Inspiration and Credits
This was first inspired by [this post](https://www.reddit.com/r/unixporn/comments/jupmda/aquayabai_a_fun_colorful_rice_to_brighten_my/), and the sketchybar config was
(roughly) replicated from [this post by RemyIsCool](https://github.com/FelixKratz/SketchyBar/discussions/47?sort=top#discussioncomment-9322991). I adapted the 
`battery.sh` script from [neutonfoo](https://github.com/neutonfoo/dotfiles) and the `weather.sh` script from [weirane](https://github.com/weirane/dotfiles).
