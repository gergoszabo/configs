REM Installing wezterm
winget install wez.wezterm

REM Copy .wezterm.lua to user home directory
copy /Y ".wezterm.lua" "%USERPROFILE%\.wezterm.lua"

REM Installing NVM
winget install CoreyButler.NVMforWindows

REM Node 24
nvm i 24

REM Installing helix
winget install Helix.Helix

REM Ensure Helix config directory exists
if not exist "%USERPROFILE%\AppData\Roaming\helix" mkdir "%USERPROFILE%\AppData\Roaming\helix"

REM Copy languages.toml to Helix config directory
copy /Y "languages.toml" "%USERPROFILE%\AppData\Roaming\helix\languages.toml"

REM Installing yazi
winget install sxyazi.yazi

REM Installing yazi dependencies
winget install Gyan.FFmpeg 7zip.7zip jqlang.jq sharkdp.fd BurntSushi.ripgrep.MSVC junegunn.fzf ImageMagick.ImageMagick

REM Installing choco for nerdfonts
winget install Chocolatey.Chocolatey

REM Open elevated shell and install FiraCode
powershell -Command "Start-Process 'choco' -ArgumentList 'install firacode' -Verb runAs"

REM Installing global npm packages
call npm i -g opencode-ai typescript typescript-language-server prettier

REM Installing vlc
winget install VideoLAN.VLC

REM Installing lazygit
winget install -e --id=JesseDuffield.lazygit

