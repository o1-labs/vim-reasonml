" For some reason that env is too large on Windows. Copy over only the subset.
function! reason#MerlinEnvFromProjectEnv(envArg)
  " old vims don't let you rename variables to newly typed values.
  let env = a:envArg
  let newEnv = {
        \ 'CAML_LD_LIBRARY_PATH': has_key(env, 'CAML_LD_LIBRARY_PATH') ? env['CAML_LD_LIBRARY_PATH'] : '',
        \ 'HOMEPATH': has_key(env, 'HOMEPATH') ? env['HOMEPATH'] : '',
        \ 'OCAMLFIND_COMMANDS': has_key(env,'OCAMLFIND_COMMANDS') ? env['OCAMLFIND_COMMANDS'] : '',
        \ 'OCAMLFIND_DESTDIR': has_key(env, 'OCAMLFIND_DESTDIR') ? env['OCAMLFIND_DESTDIR'] : '',
        \ 'OCAMLFIND_LDCONF': has_key(env, 'OCAMLFIND_LDCONF') ? env['OCAMLFIND_LDCONF'] : '',
        \ 'OCAMLLIB': has_key(env, 'OCAMLLIB') ? env['OCAMLLIB'] : '',
        \ 'OCAMLPATH': has_key(env, 'OCAMLPATH') ? env['OCAMLPATH'] : '',
        \ 'OCAML_TOPLEVEL_PATH': has_key(env, 'OCAML_TOPLEVEL_PATH') ? env['OCAML_TOPLEVEL_PATH'] : '',
        \ 'PATH': has_key(env, 'PATH') ? env['PATH'] : ''
        \ }
  return newEnv
endfunction

