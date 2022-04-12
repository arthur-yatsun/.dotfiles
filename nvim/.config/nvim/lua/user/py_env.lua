local status_ok, py_env = pcall(require, "py_lsp")
if not status_ok then
  return
end

py_env.setup {
  host_python = "/usr/bin/python3"
}
