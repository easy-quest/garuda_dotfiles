starship init fish | source
# FISH-specific adapter
function robbyrussell_fish_adapter -d "Адаптер темы Роббирусселла для рыбы"
  set robbyrussell_previous_exit_code "$status"
  /path/to/robbyrussell $robbyrussell_previous_exit_code 'fish'
end

# set prompt
function fish_prompt
  # fish разбивает замены команд на новых линиях
  # нужно временно сбросить IFS для опоздания
  #   @see: http://stackoverflow.com/a/34186172/5508862
  set -l IFS
  robbyrussell_fish_adapter
end


## Установить значения
# Скрыть добро пожаловать сообщение
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

## Export variable need for qt-theme
if type "qtile" >> /dev/null 2>&1
   set -x QT_QPA_PLATFORMTHEME "qt5ct"
end

## Настройка окружающей среды
# Применить .profile: используйте это, чтобы поставить рыбу совместимые Профильные вещи 
if test -f ~/.fish_profile
  source ~/.fish_profile
end

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end

# Add depot_tools to PATH
if test -d ~/Applications/depot_tools
    if not contains -- ~/Applications/depot_tools $PATH
        set -p PATH ~/Applications/depot_tools
    end
end

## Starship prompt
if status --is-interactive
   source ("/usr/bin/starship" init fish --print-full-init | psub)
end

## Advanced command-not-found hook
source /usr/share/doc/find-the-command/ftc.fish


# Fish command history
function history
    builtin history --show-time='%F %T '
end

function backup --argument filename
    cp $filename $filename.bak
end

# Copy DIR1 DIR2
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end