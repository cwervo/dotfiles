# Vim Configuration

This repository contains a personalized Vim setup. This guide provides an overview of the configuration and how to customize it.

## Summary

This Vim setup is modular, with different aspects of the configuration separated into specific files:

- **`init.vim` (or `vimrc`):** The main entry point for the Vim configuration. It sources other configuration files.
- **`config.vim`:** Contains general Vim settings, including UI preferences, behaviors, and text formatting.
- **`mappings.vim`:** Defines custom keybindings and shortcuts.
- **`plugins.vim`:** Manages plugins using the `vim-plug` plugin manager.

This structure helps keep the configuration organized and makes it easier to manage and update specific parts of the setup.

## User Guide: Reading and Updating Settings

### Understanding the Configuration Files

- **`init.vim` (or `vimrc`)**: This is the first file Vim reads on startup. In this setup, `init.vim` (often used by Neovim, while traditional Vim uses `.vimrc`) is kept minimal and primarily sources other, more specific configuration files. This helps in organizing settings. If you are using traditional Vim, you might find a `.vimrc` file serving this purpose, or `init.vim` might be symlinked or sourced by it.

- **`config.vim`**: This file is the place for most of Vim's built-in settings. You'll find options related to:
    - Appearance (e.g., line numbers, ruler, color column)
    - Behavior (e.g., auto-indent, search settings, backup file locations)
    - Text formatting (e.g., tab stops, soft tabs, expand tabs)
    To change a general Vim behavior, this is likely the file you'll need to edit. For example, to turn off line numbers, you would look for `set number` and change it to `set nonumber` or comment it out.

- **`mappings.vim`**: All custom key mappings are defined here. This includes shortcuts for common actions or plugin functionalities. If you want to change a keyboard shortcut or add a new one, this is the file to modify. Mappings are defined using commands like `map`, `nmap` (normal mode), `imap` (insert mode), `vmap` (visual mode), etc.

- **`plugins.vim`**: This file lists all the Vim plugins and uses `vim-plug` for managing them. Plugins extend Vim's functionality.
    - To add a new plugin, you would add a `Plug` command, e.g., `Plug 'author/plugin-name'`.
    - To remove a plugin, you would delete or comment out its `Plug` line.
    - After modifying this file, you need to tell `vim-plug` to install or update plugins. You can do this by running the command `:PlugInstall` from within Vim, or by running the `setup.sh` script if it handles plugin installation.

### Customizing Appearance

#### Changing Color Schemes

1.  **Find or Add a Theme Plugin**: Color schemes are often installed as plugins.
    *   Check `plugins.vim` to see the currently installed themes. For example, you might see `Plug 'tomasr/molokai'`.
    *   To add a new theme, find its GitHub repository (or other source) and add its `Plug` entry to `plugins.vim`. For example, to add the 'gruvbox' theme, you might add `Plug 'morhetz/gruvbox'`.
    *   After adding a new plugin, run `:PlugInstall` in Vim.

2.  **Enable the Theme**:
    *   Open `config.vim`.
    *   Look for the `colorscheme` command. For example, `colorscheme molokai`.
    *   Change the name to your desired theme, e.g., `colorscheme gruvbox`.
    *   Save the file and restart Vim, or re-source the `config.vim` file (e.g., `:so %`) to see the changes.

#### Modifying Cursor Appearance

You can change the cursor's color and shape in different Vim modes (normal, insert, visual) using `highlight` commands.

1.  **Open `config.vim`**.
2.  **Locate or Add Cursor Highlight Settings**: These commands are typically placed in the UI or Visual settings section.
    *   **Normal Mode**: `highlight Cursor ctermfg=<fg_color> ctermbg=<bg_color> guifg=<fg_color> guibg=<bg_color>`
    *   **Insert Mode**: `highlight iCursor ctermfg=<fg_color> ctermbg=<bg_color> guifg=<fg_color> guibg=<bg_color>`
    *   **Visual Mode**: `highlight Visual ctermfg=<fg_color> ctermbg=<bg_color> guifg=<fg_color> guibg=<bg_color>`
    Replace `<fg_color>` and `<bg_color>` with desired color names (e.g., `white`, `black`, `blue`) or terminal color codes. `ctermfg`/`ctermbg` are for terminal Vim, while `guifg`/`guibg` are for GUI Vim.

    For example, to set a white cursor on a black background:
    ```vim
    highlight Cursor ctermfg=white ctermbg=black guifg=white guibg=black
    highlight iCursor ctermfg=white ctermbg=black guifg=white guibg=black
    highlight Visual ctermfg=white ctermbg=black guifg=white guibg=black
    ```
3.  Save the `config.vim` file and restart Vim or re-source the file to apply the changes.

## Setup

If you're setting up this configuration for the first time:

1.  Clone this repository into your Vim configuration directory (e.g., `~/.vim` or `~/.config/nvim`).
2.  Run the `./setup.sh` script if provided. This script typically handles tasks like installing `vim-plug` and installing the plugins listed in `plugins.vim`.
3.  Start Vim.

**Note:** This configuration is provided as-is. Feel free to modify it to suit your preferences.
