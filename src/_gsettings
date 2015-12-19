#compdef gsettings

_gsettings() {
  _arguments : \
    '--schemadir[A directory to search for additional schemas]:additional schema:_path_files -/' \
    ':gsettings command:_gsettings_commands' \
    '*: :_gsettings_rest_args'
}

(( $+functions[_gsettings_commands] )) || _gsettings_commands() {
  local -a command_list
  command_list=(
    'help:show the help'
    'list-schemas:list installed schemas'
    'list-relocatable-schemas:list relocatable schemas'
    'list-keys:list keys in a schema'
    'list-children:list children of a schema'
    'list-recursively:list keys and values, recursively'
    'range:queries the range of a key'
    'get:get the value of a key'
    'set:set the value of a key'
    'reset:reset the value of a key'
    'reset-recursively:reset all values in a given schema'
    'writable:check if a key is writable'
    'monitor:watch for changes'
  )
  _describe -t commands 'gsettings commands' command_list
}

(( $+functions[_gsettings_rest_args] )) || _gsettings_rest_args() {
  local CMD_IDX=2
  local SCHEMA_IDX=3
  local KEY_IDX=4
  local VALUE_IDX=5
  local offset=0
  local opt_schemadir schemadir cmd schema key

  if [[ $#words -ge 4 && "${(Q)words[2]}" == --schemadir ]]; then
    opt_schemadir=--schemadir
    schemadir="${(Q)words[3]}"
    offset=2
  fi

  cmd="${(Q)words[CMD_IDX+offset]}"

  case $((CURRENT-offset)) in
    $SCHEMA_IDX)
      case "$cmd" in
        help)
          _gsettings_help_targets
          ;;
        list-keys|list-children|list-recursively|range|get|set|reset| \
        reset-recursively|writable|monitor)
          _gsettings_schemas "$opt_schemadir" "$schemadir"
          ;;
      esac
      ;;
    $KEY_IDX)
      case "$cmd" in
        get|set|range|reset|writable|monitor)
          schema="${(Q)words[SCHEMA_IDX+offset]}"
          _gsettings_keys "$opt_schemadir" "$schemadir" "$schema"
          ;;
      esac
      ;;
    $VALUE_IDX)
      case "$cmd" in
        set)
          schema="${(Q)words[SCHEMA_IDX+offset]}"
          key="${(Q)words[KEY_IDX+offset]}"
          _gsettings_values "$opt_schemadir" "$schemadir" "$schema" "$key"
          ;;
      esac
      ;;
  esac
}

(( $+functions[_gsettings_help_targets] )) || _gsettings_help_targets() {
  local -a target_list
  target_list=(
    'help:show the help'
    'list-schemas:list installed schemas'
    'list-relocatable-schemas:list relocatable schemas'
    'list-keys:list keys in a schema'
    'list-children:list children of a schema'
    'list-recursively:list keys and values, recursively'
    'range:queries the range of a key'
    'get:get the value of a key'
    'set:set the value of a key'
    'reset:reset the value of a key'
    'reset-recursively:reset all values in a given schema'
    'writable:check if a key is writable'
    'monitor:watch for changes'
  )
  _describe -t help-target 'help targets' target_list
}

(( $+functions[_gsettings_schemas] )) || _gsettings_schemas() {
  local -a schema_list
  schema_list=(
    ${(@f)"$(gsettings $1 $2 list-schemas 2>/dev/null)"}
    ${(@f)"$(gsettings $1 $2 list-relocatable-schemas 2>/dev/null)"}
  )
  if [[ $#schema_list == 0 ]]; then
    schema_list=(
      ${(@f)"$(gsettings list-schemas 2>/dev/null)"}
      ${(@f)"$(gsettings list-relocatable-schemas 2>/dev/null)"}
    )
  fi
  _describe -t schemas 'schemas' schema_list -V
}

(( $+functions[_gsettings_keys] )) || _gsettings_keys() {
  local -a key_list
  key_list=(${(@f)"$(gsettings $1 $2 list-keys $3 2>/dev/null)"})
  if [[ $#key_list == 0 ]]; then
    key_list=(${(@f)"$(gsettings list-keys $3 2>/dev/null)"})
  fi
  _describe -t keys 'keys' key_list -V
}

# Complete possible values including bool and enum
(( $+functions[_gsettings_values] )) || _gsettings_values() {
  local -a range
  range=(${(@f)"$(gsettings $1 $2 range $3 $4 2>/dev/null)"})
  if [[ $#range == 0 ]]; then
    range=(${(@f)"$(gsettings range $3 $4 2>/dev/null)"})
  fi
  case "$range[1]" in
    'type b')
      _gsettings_complete_bool
      ;;
    'enum')
      _gsettings_complete_enum $range[2,-1]
      ;;
  esac
}

(( $+functions[_gsettings_complete_bool] )) || _gsettings_complete_bool() {
  local -a bool_list
  bool_list=('true' 'false')
  _describe -t val-bool 'possible values (bool)' bool_list -V
}

(( $+functions[_gsettings_complete_enum] )) || _gsettings_complete_enum() {
  local -a enum_list
  enum_list=(${(@Q)"${@}"})
  _describe -t val-enum 'possible values' enum_list -V
}

_gsettings
