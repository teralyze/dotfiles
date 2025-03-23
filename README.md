# Usage 
just clone the repo and replace the config files that you have with the ones in here, it ain't that hard.

## Usage with GNU Stow - use this if you're on a clean install!
1. Install Gnu stow from your distro's package manager.
2. Clone this repo into a new directory in your /home/___
3. Ensure that you don't already have a config for the apps in this repo. For example, if there's a "hypr" in "~/.config", delete it.
4. Launch a terminal inside of the cloned repo and run "stow ."
5. You're done. GG's.

> [!WARNING]
> Since I wrote these configs, and I don't know what sort of stuff is going on in your PC, things might not work. I've talked about some problems that might happen that came to my mind but if anything is broken just check the config file for the app in question and you should be able to figure it out, or you can DM me on reddit if you're stumped. u/RforRETRO. 

# Some info about config files

## Waybar
The GPU module is using nvidia-smi, so if you have an AMD or Intel GPU you'll have to replace the exec command in config.jsonc in waybar folder. The media player uses playerctl so it will only show players who support mpris. Default is that scrolling up and down go to next or previous songs but you can easily change that by switching the "on-scroll-up/down" lines to switch players instead. You'll likely have to change the timezone in the config too if the time is wrong. 

## Neovim
Both Neorg and a markdown renderer are configured and installed in neovim for note-taking. However Neorg is in the disabled plugins folder. To enable it move it to the normal plugins folder. This also applies to every other plugin as well.

## Hyprland
There are some good keybindings on hyprland.conf, make sure to check those out and see if they work. You can change your wallpaper on hyprpaper.conf, it's in the same directory as hyprland.conf

## .bashrc and .blerc
> [!WARNING]
> MAKE SURE TO BACK UP YOUR .BASHRC BEFORE YOU USE MINE, I DON'T WANT YOU TO LOSE YOUR CONFIG!!
Stow won't add these files to your home so you should move them manually. You'll need to use bash and install ble.sh for these to work as well.

## GTK and QT themes
I use qt5ct, qt6ct, nwg-look and kvantum to manage gtk and qt themes. To change qt themes, download a kvantum theme and apply it using the Kvantum app, and apply it using both qt5ct and qt6ct. I don't even remember how I set my GTK theme, but it should be pretty easy considering that I was able to do it 💀.

## TMUX
There isn't much that can go wrong in tmux, but I'd like to mention that I shamelessly copied it from one of "Dreams of Code"s Youtube videos.



