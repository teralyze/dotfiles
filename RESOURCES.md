# GTK Theme
You'll need to go to [this website](https://www.gnome-look.org/p/1681315) and install one of the GTK themes. I chose Tokyonight-Dark-B-LB.zip. After installing, unzip and put the resulting folder in ~/.themes. Install nwg-look and apply theme from the widgets tab.

You'll want a icon theme to go with this theme as well. You can find them [here](https://www.gnome-look.org/p/1681475). I chose Tokyonight-Dark-Icons.zip. After installing unzip and put resulting folder in ~/.icons. You'll be able to apply this with nwg-look as well- under the icon theme tab. If you want to use a custom xcursor, you'll need to put that folder in ~/.icons as well. You can apply cursor themes from nwg-look and from your WM/DE's settings.

# QT Theme
There isn't a great QT theme for Tokyo Night, so I went with [this theme](https://github.com/trancong12102/Yet-another-dracula). After cloning this repo, go in the Yet-another-dracula -> Kvantum and cut the "Yet-another-dracula" folder from there and paste it in ~/.themes. Install Kvantum and qt6ct as per your package manager. After opening, choose the folder you just pasted into ~/.themes and click on "Change/Delete Theme" down the window. Choose "Yet-another-dracula" from the dropdown menu and click "Use this theme" on the right. Now you'll need to select this theme from qt6ct. Choose kvantum-dark for the style dropdown menu and choose "Style's colors" for the color scheme. Click apply and you're set.

> [!WARNING]
> You should also choose your icon theme from qt6ct. Go to the icon theme tab and you should see the same icon theme you applied from gtk in this menu. Choose it and click apply.

> [!WARNING]
> Depending on your WM/DE, qt6ct might alert you that an environment variable is not set.Append "QT_QPA_PLATFORMTHEME=qt6ct" to the /etc/environment file and restart your computer.
