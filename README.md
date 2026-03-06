# 💤 LazyVim config by Nazaroni

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## ⚙️ Configure your shell for multiple Neovim configs
### 🐧 Unix (Linux or macOS)
```shell
# =============================================
# - - - - Neovim - - - - - - - - - - - - - - -
# =============================================
alias v='nvim' # default Neovim config without any modifications
alias vz='NVIM_APPNAME=nvim-lazyvim nvim' # LazyVim
# alias vc='NVIM_APPNAME=nvim-nvchad nvim' # NvChad
# alias vk='NVIM_APPNAME=nvim-kickstart nvim' # Kickstart
alias va='NVIM_APPNAME=nvim-astrovim nvim' # AstroVim
# alias vl='NVIM_APPNAME=nvim-lunarvim nvim' # LunarVim

vv() {
  select config in lazyvim astrovim
  do NVIM_APPNAME=nvim-$config nvim $@; break; done
}
```

### 🪟 Windows (PowerShell)
```powershell
# =============================================
# - - - - Neovim - - - - - - - - - - - - - - -
# =============================================
function v { nvim } # default Neovim config without any modifications
function vz { $env:NVIM_APPNAME = "nvim-lazyvim"; nvim; Remove-Item Env:NVIM_APPNAME }
# function vc { $env:NVIM_APPNAME = "nvim-nvchad"; nvim; Remove-Item Env:NVIM_APPNAME }
# function vk { $env:NVIM_APPNAME = "nvim-kickstart"; nvim; Remove-Item Env:NVIM_APPNAME }
function va { $env:NVIM_APPNAME = "nvim-astrovim"; nvim; Remove-Item Env:NVIM_APPNAME }
# function vl { $env:NVIM_APPNAME = "nvim-lunarvim"; nvim; Remove-Item Env:NVIM_APPNAME }

function vv {
  $config = Read-Host "Choose config (lazyvim/astrovim)"
  if ($config -in @("lazyvim", "astrovim")) {
    $env:NVIM_APPNAME = "nvim-$config"
    nvim
    Remove-Item Env:NVIM_APPNAME
  }
}
```



## 🛠️ Installation for Unix

#### 💾 Make a backup of your current Neovim and shared folders

```shell
mv ~/.config/nvim ~/.config/nvim.bak && \
mv ~/.local/share/nvim ~/.local/share/nvim.bak && \
mv ~/.local/state/nvim ~/.local/state/nvim.bak && \
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### 🧹 Or delete the previous version

```shell
rm -rf ~/.config/nvim && \
rm -rf ~/.local/share/nvim && \
rm -rf ~/.local/state/nvim && \
rm -rf ~/.cache/nvim
```

#### 🗑️ Delete previous LazyVim data
```shell
rm -rf ~/.config/nvim-lazyvim && \
rm -rf ~/.local/share/nvim-lazyvim && \
rm -rf ~/.local/state/nvim-lazyvim && \
rm -rf ~/.cache/nvim-lazyvim
```


#### 📥 Clone the repository

##### 🔐 SSH

```shell
git clone git@github.com:Nazaroni/lazyvim-config.git ~/.config/nvim-lazyvim
```

##### 🌐 HTTPS

```shell
git clone https://github.com/Nazaroni/lazyvim-config.git ~/.config/nvim-lazyvim
```


## 🛠️ Installation for Windows

#### 💾 Make a backup of your current Neovim and shared folders

```powershell
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak

```

#### 🧹 Or delete the previous version

```powershell
rm -Force -Recurse $env:LOCALAPPDATA\nvim
rm -Force -Recurse $env:LOCALAPPDATA\nvim-data

```

#### 🗑️ Delete previous version of LazyVim
```powershell
rm -Force -Recurse $env:LOCALAPPDATA\nvim-lazyvim
rm -Force -Recurse $env:LOCALAPPDATA\nvim-lazyvim-data

```

#### 📥 Clone the repository

##### 🔐 SSH

```powershell
git clone git@github.com:Nazaroni/lazyvim-config.git $env:LOCALAPPDATA\nvim-lazyvim
```

##### 🌐 HTTPS

```powershell
git clone https://github.com/Nazaroni/lazyvim-config.git $env:LOCALAPPDATA\nvim-lazyvim
```

## 🚀 Start Neovim

```shell
nvim

# Or LazyVim with command:
vz

# Or AstroVim with command:
va

# or select config with command:
vv

```

Happy coding! 🚀
