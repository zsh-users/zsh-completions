#compdef spt

autoload -U is-at-least

_spt() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-t+[Set the tick rate (milliseconds): the lower the number the higher the FPS.]' \
'--tick-rate=[Set the tick rate (milliseconds): the lower the number the higher the FPS.]' \
'-c+[Specify configuration file path.]' \
'--config=[Specify configuration file path.]' \
'--completions=[Generates completions for your preferred shell]: :(bash zsh fish power-shell elvish)' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
":: :_spt_commands" \
"*::: :->spotify-tui" \
&& ret=0
    case $state in
    (spotify-tui)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:spt-command-$line[1]:"
        case $line[1] in
            (pb)
_arguments "${_arguments_options[@]}" \
'-d+[Specifies the spotify device to use]' \
'--device=[Specifies the spotify device to use]' \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'--transfer=[Transfers the playback to new DEVICE]' \
'--seek=[Jumps SECONDS forwards (+) or backwards (-)]' \
'-v+[Sets the volume of a device to VOLUME (1 - 100)]' \
'--volume=[Sets the volume of a device to VOLUME (1 - 100)]' \
'-t[Pauses/resumes the playback of a device]' \
'--toggle[Pauses/resumes the playback of a device]' \
'-s[Prints out the current status of a device (default)]' \
'--status[Prints out the current status of a device (default)]' \
'--share-track[Returns the url to the current track]' \
'--share-album[Returns the url to the album of the current track]' \
'--like[Likes the current song if possible]' \
'--dislike[Dislikes the current song if possible]' \
'--shuffle[Toggles shuffle mode]' \
'--repeat[Switches between repeat modes]' \
'*-n[Jumps to the next song]' \
'*--next[Jumps to the next song]' \
'*-p[Jumps to the previous song]' \
'*--previous[Jumps to the previous song]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(playback)
_arguments "${_arguments_options[@]}" \
'-d+[Specifies the spotify device to use]' \
'--device=[Specifies the spotify device to use]' \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'--transfer=[Transfers the playback to new DEVICE]' \
'--seek=[Jumps SECONDS forwards (+) or backwards (-)]' \
'-v+[Sets the volume of a device to VOLUME (1 - 100)]' \
'--volume=[Sets the volume of a device to VOLUME (1 - 100)]' \
'-t[Pauses/resumes the playback of a device]' \
'--toggle[Pauses/resumes the playback of a device]' \
'-s[Prints out the current status of a device (default)]' \
'--status[Prints out the current status of a device (default)]' \
'--share-track[Returns the url to the current track]' \
'--share-album[Returns the url to the album of the current track]' \
'--like[Likes the current song if possible]' \
'--dislike[Dislikes the current song if possible]' \
'--shuffle[Toggles shuffle mode]' \
'--repeat[Switches between repeat modes]' \
'*-n[Jumps to the next song]' \
'*--next[Jumps to the next song]' \
'*-p[Jumps to the previous song]' \
'*--previous[Jumps to the previous song]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(p)
_arguments "${_arguments_options[@]}" \
'-d+[Specifies the spotify device to use]' \
'--device=[Specifies the spotify device to use]' \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'-u+[Plays the URI]' \
'--uri=[Plays the URI]' \
'-n+[Plays the first match with NAME from the specified category]' \
'--name=[Plays the first match with NAME from the specified category]' \
'(-b --album -a --artist -p --playlist -w --show)-q[Adds track to queue instead of playing it directly]' \
'(-b --album -a --artist -p --playlist -w --show)--queue[Adds track to queue instead of playing it directly]' \
'(-t --track -b --album -a --artist -w --show)-r[Plays a random track (only works with playlists)]' \
'(-t --track -b --album -a --artist -w --show)--random[Plays a random track (only works with playlists)]' \
'-b[Looks for an album]' \
'--album[Looks for an album]' \
'-a[Looks for an artist]' \
'--artist[Looks for an artist]' \
'-t[Looks for a track]' \
'--track[Looks for a track]' \
'-w[Looks for a show]' \
'--show[Looks for a show]' \
'-p[Looks for a playlist]' \
'--playlist[Looks for a playlist]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(play)
_arguments "${_arguments_options[@]}" \
'-d+[Specifies the spotify device to use]' \
'--device=[Specifies the spotify device to use]' \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'-u+[Plays the URI]' \
'--uri=[Plays the URI]' \
'-n+[Plays the first match with NAME from the specified category]' \
'--name=[Plays the first match with NAME from the specified category]' \
'(-b --album -a --artist -p --playlist -w --show)-q[Adds track to queue instead of playing it directly]' \
'(-b --album -a --artist -p --playlist -w --show)--queue[Adds track to queue instead of playing it directly]' \
'(-t --track -b --album -a --artist -w --show)-r[Plays a random track (only works with playlists)]' \
'(-t --track -b --album -a --artist -w --show)--random[Plays a random track (only works with playlists)]' \
'-b[Looks for an album]' \
'--album[Looks for an album]' \
'-a[Looks for an artist]' \
'--artist[Looks for an artist]' \
'-t[Looks for a track]' \
'--track[Looks for a track]' \
'-w[Looks for a show]' \
'--show[Looks for a show]' \
'-p[Looks for a playlist]' \
'--playlist[Looks for a playlist]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(l)
_arguments "${_arguments_options[@]}" \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'--limit=[Specifies the maximum number of results (1 - 50)]' \
'-d[Lists devices]' \
'--devices[Lists devices]' \
'-p[Lists playlists]' \
'--playlists[Lists playlists]' \
'--liked[Lists liked songs]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'--limit=[Specifies the maximum number of results (1 - 50)]' \
'-d[Lists devices]' \
'--devices[Lists devices]' \
'-p[Lists playlists]' \
'--playlists[Lists playlists]' \
'--liked[Lists liked songs]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(s)
_arguments "${_arguments_options[@]}" \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'--limit=[Specifies the maximum number of results (1 - 50)]' \
'-b[Looks for albums]' \
'--albums[Looks for albums]' \
'-a[Looks for artists]' \
'--artists[Looks for artists]' \
'-p[Looks for playlists]' \
'--playlists[Looks for playlists]' \
'-t[Looks for tracks]' \
'--tracks[Looks for tracks]' \
'-w[Looks for shows]' \
'--shows[Looks for shows]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':search -- Specifies the search query:_files' \
&& ret=0
;;
(search)
_arguments "${_arguments_options[@]}" \
'-f+[Specifies the output format]' \
'--format=[Specifies the output format]' \
'--limit=[Specifies the maximum number of results (1 - 50)]' \
'-b[Looks for albums]' \
'--albums[Looks for albums]' \
'-a[Looks for artists]' \
'--artists[Looks for artists]' \
'-p[Looks for playlists]' \
'--playlists[Looks for playlists]' \
'-t[Looks for tracks]' \
'--tracks[Looks for tracks]' \
'-w[Looks for shows]' \
'--shows[Looks for shows]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':search -- Specifies the search query:_files' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
        esac
    ;;
esac
}

(( $+functions[_spt_commands] )) ||
_spt_commands() {
    local commands; commands=(
        "playback:Interacts with the playback of a device" \
"pb:Interacts with the playback of a device" \
"play:Plays a uri or another spotify item by name" \
"p:Plays a uri or another spotify item by name" \
"list:Lists devices, liked songs and playlists" \
"l:Lists devices, liked songs and playlists" \
"search:Searches for tracks, albums and more" \
"s:Searches for tracks, albums and more" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'spt commands' commands "$@"
}
(( $+functions[_spt__help_commands] )) ||
_spt__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt help commands' commands "$@"
}
(( $+functions[_l_commands] )) ||
_l_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'l commands' commands "$@"
}
(( $+functions[_spt__l_commands] )) ||
_spt__l_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt l commands' commands "$@"
}
(( $+functions[_spt__list_commands] )) ||
_spt__list_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt list commands' commands "$@"
}
(( $+functions[_p_commands] )) ||
_p_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'p commands' commands "$@"
}
(( $+functions[_spt__p_commands] )) ||
_spt__p_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt p commands' commands "$@"
}
(( $+functions[_pb_commands] )) ||
_pb_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'pb commands' commands "$@"
}
(( $+functions[_spt__pb_commands] )) ||
_spt__pb_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt pb commands' commands "$@"
}
(( $+functions[_spt__play_commands] )) ||
_spt__play_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt play commands' commands "$@"
}
(( $+functions[_spt__playback_commands] )) ||
_spt__playback_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt playback commands' commands "$@"
}
(( $+functions[_s_commands] )) ||
_s_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 's commands' commands "$@"
}
(( $+functions[_spt__s_commands] )) ||
_spt__s_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt s commands' commands "$@"
}
(( $+functions[_spt__search_commands] )) ||
_spt__search_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'spt search commands' commands "$@"
}

_spt "$@"