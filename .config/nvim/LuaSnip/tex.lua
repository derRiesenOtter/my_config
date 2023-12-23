local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return{

  s("figure",
    fmta(
      [[
        \begin{figure}
          \includegraphics[width=\textwidth]{./figures/<>}
          \caption{<>}
        \end{figure}
      ]],
      { i(1), i(2)}
    )
  ),

  s("cite",
    fmta(
      [[
        \cite{<>}
      ]],
      { i(1) }
    )
  ),

}
