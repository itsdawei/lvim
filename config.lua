-- Neovim
-- =========================================
lvim.format_on_save = true
lvim.leader = " "
lvim.colorscheme = "onedarker"
lvim.debug = false
vim.lsp.set_log_level "warn"
lvim.log.level = "warn"
require("user.neovim").config()

-- Customization
-- =========================================
lvim.builtin.lastplace = { active = false } -- change to false if you are jumping to future
lvim.builtin.tabnine = { active = true } -- change to false if you don't like tabnine
lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.fancy_dashboard = { active = true } -- enable/disable fancy dashboard
lvim.builtin.fancy_rename = { active = true } -- enable/disable custom rename
lvim.builtin.fancy_diff = { active = false } -- enable/disable fancier git diff
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.cheat = { active = true } -- enable cheat.sh integration
lvim.builtin.neoscroll = { active = true } -- smooth scrolling
lvim.builtin.neoclip = { active = true, enable_persistent_history = false }
lvim.builtin.nonumber_unfocus = true -- diffrentiate between focused and non focused windows
lvim.builtin.harpoon = { active = true } -- use the harpoon plugin
lvim.builtin.motion_provider = "hop" -- change this to use different motion providers ( hop or lightspeed )
lvim.builtin.csv_support = true -- enable/disable csv support
lvim.builtin.async_tasks = { active = false } -- enable/disable async tasks
lvim.builtin.file_browser = { active = false } -- enable/disable telescope file browser
lvim.builtin.sniprun = { active = false } -- enable/disable sniprun
lvim.builtin.tag_provider = "symbols-outline" -- change this to use different tag providers ( symbols-outline or vista )
lvim.builtin.editorconfig = { active = true } -- enable/disable editorconfig
lvim.builtin.fancy_telescope = { active = true } -- telescope to the moon

local user = os.getenv "USER"
if user and user == "dawei" then
  lvim.builtin.file_browser.active = true
  lvim.builtin.neoclip.enable_persistent_history = true
  lvim.builtin.fancy_diff.active = true
  lvim.builtin.lastplace.active = true
  -- require("user.prose").config() -- setup prosemd-lsp for my local use
end

lvim.lsp.diagnostics.virtual_text = false -- remove this line if you want to see inline errors
lvim.builtin.latex = {
  view_method = "skim", -- change to zathura if you are on linux
  preview_exec = "/Applications/Skim.app/Contents/SharedSupport/displayline", -- change this to zathura as well
  rtl_support = false, -- if you want to use xelatex, it's a bit slower but works very well for RTL langs
}
lvim.builtin.notify.active = false
lvim.lsp.automatic_servers_installation = false
lvim.lsp.code_lens_refresh = true
require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end

-- Debugging
-- =========================================
if lvim.builtin.dap.active then
  require("user.dap").config()
end

-- Language Specific
-- =========================================
vim.list_extend(lvim.lsp.override, {
  "clangd",
  "dockerls",
  "pyright",
  "sumneko_lua",
  "texlab",
  "tsserver",
  "yamlls",
  -- "gopls",
  -- "r_language_server",
  -- "rust_analyzer",
  -- "taplo",
})
require("user.null_ls").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
