local options = {
  ensure_installed = { "lua", "vim", "vimdoc", "cmake", "cpp"},
  autoinstall = true,
  highlight = {
    enable = true,
    use_languagetree = true,
    indent = {enable = true},
  },

  indent = { enable = true },
}

return options
