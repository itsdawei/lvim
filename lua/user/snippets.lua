local ls = require "luasnip"
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require "luasnip.util.types"
local conds = require "luasnip.extras.expand_conditions"

ls.snippets = {
  tex = {
    s("lp", {
      t({
        "\\begin{equation}",
        "\t\\label{lp:}",
        "\t\\begin{array}{llll}",
        "\t\t\\text{minimize}  & c^\\intercal x & \\\\",
        "\t\t\\text{subject to}& Ax \\le b & \\\\",
        "\t\t& x \\ge 0 &",
        "\t\\end{array}{llll}",
        "\\end{equation}",
      })
    })
  },
}
