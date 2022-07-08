local status_ok, renamer = pcall(require, "renamer")
if not status_ok then return end

renamer.setup()
