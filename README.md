# Usage 
just clone the repo and replace the config files that you have with the ones in here, it ain't that hard.

## Usage with GNU Stow - use this if you're on a clean install!
1. Install Gnu stow from your distro's package manager.
2. Clone this repo into a new directory in your /home/___
3. Ensure that you don't already have a config for the apps in this repo. For example, if there's a "hypr" in "~/.config", delete it.
4. Launch a terminal inside of the cloned repo and run "stow ."
5. You're done. GG's.

> [!WARNING]
> Since I wrote these configs, and I don't know what sort of stuff is going on in your PC, things might not work. I've talked about some problems that might happen that came to my mind but if anything is broken just check the config file for the app in question and you should be able to figure it out.

# Some info about config files

I tried to talk about the main stuff here, but you'll have to do simple stuff (like changing the colors of the configs or keybinds etc.) yourself. Don't worry, even I managed to do it so you can probably do it too :)

## Waybar
The GPU module is using nvidia-smi, and the mouse battery thing is using openrazer so if you use other stuff than me you'll have to replace the respective exec commands in config.jsonc in waybar folder. The media player uses playerctl. Default is that scrolling up and down go to next or previous songs and clicking pauses but you can easily change these in the afformentioned config.jsonc file.

## Neovim
Config is inspired by typecraft's tutorial but I kind of remade some parts like lsp with current (May 2025) features. I also used conform instead of none-ls. Honestly I'm so proud of this that I might just make a series like typecraft's.
A markdown renderer is configured and installed in neovim for note-taking. You can add you own plugins by creating a new lua file in "lua/plugins/" and returning a lua table with the install text in it. You can look at how one of my plugins are implemented and you'll see what I mean.

## Hyprland
There are some good keybindings on hyprland.conf, make sure to check those out and see if they work. You can change your wallpaper on hyprpaper.conf, it's in the same directory as hyprland.conf

Also, make sure to specify your wallpaper's directory in the hyprpaper conf so it works.


## .bashrc and .blerc
> [!WARNING]
> MAKE SURE TO BACK UP YOUR .BASHRC BEFORE YOU USE MINE, I DON'T WANT YOU TO LOSE YOUR CONFIG!
