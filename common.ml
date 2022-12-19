module Storage_args = struct
  (* WARN: Cannot rename longClickToggleTime and longClickToggle to retain
     backward compatibility and user preferences from previous versions *)
  type t =
    { longClickToggle : bool
    ; longClickToggleTime : int
    }

  type 'v change =
    { old_value : 'v option [@bs.as "oldValue"]
    ; new_value : 'v option [@bs.as "newValue"]
    }

  type changes =
    { longClickToggle : bool change
    ; longClickToggleTime : int change
    }

  let make_default () : t =
    { longClickToggle = true; longClickToggleTime = 600 }
end

module Storage = Ffext.Browser.Storage (Storage_args)
