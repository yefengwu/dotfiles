<p align="center">
  <h1 align="center">lf-config</h1>
  <p align="center">
    My lf configurations
  </p>
  <img
    width="1000"
    src="https://codeberg.org/tplasdio/lf-config/raw/branch/main/media/lf-config.avif"
    alt="lf screenshot"
  />
</p>

## Table of Contents

- [📰 Description](#description)
- [✨ Features](#features)
- [🚀 Setup](#setup)
  - [⚙ Main configs](#main-configs)
  - [🖼 Image previews](image-previews)
  - [📁 Directory changing](directory-changing)
  - [🔤 Fonts](#fonts)
  - [📦 Install dependencies](#install-dependencies)
  - [📂 File opening](#file-opening)
- [⌨ Keybindings](#keybindings)
- [👀 See also](#see-also)
- [📝 Licence](#licence)

## 📰 Description

[Lf](https://github.com/gokcehan/lf) is a fast simple terminal file manager that is
nonetheless extremely extensible.

These are my personal configurations that make it
even more powerful and awesome.

## ✨ Features

- Advanced Preview Handling:
	- Image previews via [ueberzug](https://github.com/seebye/ueberzug) for:
		- Images (raster and SVGs)
		- Videos
		- PDF/PostScript files
		- Fonts
	- Text files (with syntax highlighting)
	- Web pages (HTMLs)
	- Man pages
	- Binary files
	- JSONs
	- Archives (zips, tar.gz)
	- Etc.
- Advanced Opening Handling:
	- Opening with configurable default applications or a resource opener
	- "Open with" menu
- Distinct colors for many filetypes
- Nice-looking emoji and Nerd Fonts icons
- Integrations with other apps that add functionality:
	- [dragon](https://github.com/mwh/dragon): Drag files to other GUI apps
	- [g.sh](https://codeberg.org/tplasdio/g.sh): Bookmark files
	- [z.lua](https://github.com/skywind3000/z.lua): Navigation to frecent directories
	- [broot](https://github.com/Canop/broot): Fuzzy search file names
	- [ffd](https://codeberg.org/tplasdio/scripts/src/branch/main/scripts/ffd): Fuzzy search file names
	- [rgfzf](https://codeberg.org/tplasdio/rgfzf): Fuzzy search file contents
	- [vidir](https://joeyh.name/code/moreutils/): Bulk file renaming
	- [trash-cli](https://github.com/andreafrancia/trash-cli): Put files in trash instead of removing them
	- shred/[rshred](https://codeberg.org/tplasdio/rshred): Shred-remove files instead of just removing them

## 🚀 Setup

### ⚙ Main configs

Copy the `.config/lf/*` files to your lf configuration directory.

### 🖼 Image previews

To get image previews you will also need to:
- Install [ueberzug](https://github.com/seebye/ueberzug)
- Start `lf` through the wrapper `lfub` script (in `.local/bin/lfub`).

You may alias it in your shell:
```sh
alias lf=lfub
```

### 📁 Directory changing

If you want to use `lf` from your (POSIX) shell to change directories,
you will need to start `lf` through the wrapper `lfcd` function
(in `.config/dash/functions/lfcd`).

You may source the function in your shell:
```sh
.  ~/.config/dash/functions/lfcd
```
and possibly bind it to a key combination in your shell config.

### 🔤 Fonts

Install a [Nerd Fonts](https://www.nerdfonts.com) compatible font,
a font that supports emojis if you don't have one,
and use a terminal that supports both if you don't have one.

For example I mainly use the [Alacritty](https://github.com/alacritty/alacritty)
terminal with the [Fira Code](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode) font

### 📦 Install dependencies

Of course, install the ones that fit for you

For previews:
 - bat (text)
 - ueberzug (images, videos, pdf, fonts)
 - ffmpegthumbnailer (videos)
 - exiftool (metadata/audio, and file detection for .webm files) (recommended)
 - jq (json and metadata)
 - lynx (html/web pages)
 - pdftoppm (pdf)
 - odt2txt (odt)
 - convert from imagemagick (fonts)
 - atool (archives)
 - gpg (PGP encrypted files)
 - man (troff manuals)
 - Other: stat, cut, sha256sum

For integrations:
 - [dragon](https://github.com/mwh/dragon)
 - [g.sh](https://codeberg.org/tplasdio/g.sh)
 - [z.lua](https://github.com/skywind3000/z.lua)
 - [broot](https://github.com/Canop/broot)
 - [ffd](https://codeberg.org/tplasdio/scripts/src/branch/main/scripts/ffd)
 - [rgfzf](https://codeberg.org/tplasdio/rgfzf)
 - [vidir](https://joeyh.name/code/moreutils/)
 - [trash-cli](https://github.com/andreafrancia/trash-cli)
 - shred/[rshred](https://codeberg.org/tplasdio/rshred)

For opening:
 - exiftool (recommended)
 - xdg-open or set `$OPENER`
 - nvim or set `$EDITOR`
 - alacritty or set `$TERMINAL`
 - zathura or set `$READER`
 - mpv or set `$VIDEO_PLAYER`
 - mpv or set `$AUDIO_PLAYER`
 - gimp or set `$IMAGE_EDITOR`
 - vimiv or set `$IMAGE_VIEWER`
 - kdenlive or set `$VIDEO_EDITOR`

### 📂 File opening

Take a look at the `opener` file for more details, but
basically it tries to open certain file types with the
corresponding programs in the environment variables
`$EDITOR`, `$TERMINAL`, `$READER`, `$VIDEO_PLAYER`,
`$AUDIO_PLAYER`, `$IMAGE_EDITOR`, `$IMAGE_VIEWER`, `$VIDEO_EDITOR`.

In case the file type or extension is not recognized,
it defaults to the resource opener in the `$OPENER`
environment variable, or `xdg-open` by default. Make
sure that it is configured to handle at least the
most common mime types with your applications.

You can take a look at [my](https://codeberg.org/tplasdio/dotfiles/src/branch/main/.config/mimeapps.list)
mime types associations for an example

## ⌨ Keybindings

*Note: I use a Spanish keyboard and my own custom vim-style bindings `j`,`k`,`l`,`ñ`*

Take a look at the `lfrc` for more details, here are the most important ones:

Keybinding|Description
------|------
`j`|updir
`k`|up
`l`|down
`ñ`|open
`Ñ`|open with
`{`|half-up
`}`|half-down
`h`|lf command
`Enter`|shell command
`w`|open subprocess terminal
`W`|open forked terminal
`-`|search filename
`f1`|fuzzy search filename 1 level down
`f2`|fuzzy search filename 2 levels down
`ff`|fuzzy search filename with broot
`rg`|fuzzy search text files' contents with rg
`rf`|fuzzy search text files' contents with rg+fzf
`rA`|fuzzy search files' contents with rga
`dd`|cut
`D`|remove
`alt d`|trash
`alt D`|shred
`g Space`|g.sh. Go to bookmark path
`z Space`|z.lua. Go to frecent directory
`go`|Menu select bookmark path
`zo`|Menu select frecent directory
`dl`|Drag files in current directory to other app
`ds`|Drag selected files to other app
`dw`|Drag download files into current directory
`dc`|Drag copy files into current directory
`dm`|Drag move files into current directory

## 👀 See also
- [Resource openers](https://wiki.archlinux.org/title/Resource_opener)
- [XDG_MIME_Applications](https://wiki.archlinux.org/title/XDG_MIME_Applications)

## ⏭  Next steps
Since ueberzug is currently unmaintained, eventually I might migrate
to a [libsixel](https://saitoha.github.io/libsixel/) solution. See:

- [Sixel supporting terminals](https://www.arewesixelyet.com/)
- [lf sixel fork](https://github.com/horriblename/lf)
- [lf sixel config](https://github.com/horriblename/lfimg-sixel)

## 📝 Licence
GLPv3 or later
