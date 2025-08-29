--[[
 * Theme Name:   Uaihu.
 * Description:  A dark theme for lite-xl.
 * Version:      1.0
 * Author:       Iván Ramos
 * Author Mail:  iardoru@gmail.com
 * Author URI:   
 * License:      MIT
 * License URI:  http://www.opensource.org/licenses/mit-license.php 

 * Requirements
 * ----
 * - https://github.com/be5invis/Iosevka
 *
]]
local style = require "core.style"
local common = require "core.common"

style.accent = { common.color "#FCFCFCE6" }          -- Text in autocomplete and command
style.background = { common.color "#0C0C0C" }
style.background2 = { common.color "#0C0C0C" }
style.background3 = { common.color "#0C0C0C" }
style.caret = { common.color "#FFC107" }
style.dim = { common.color "#FCFCFC4D" }       -- Text of nonactive tabs
style.divider = { common.color "#6C6F93" }
style.line_highlight = { common.color "#16161C80"}
style.line_number = { common.color "#FCFCFC1A" }
style.line_number2 = { common.color "#FCFCFC80" }  -- Number on line with caret
style.scrollbar = { common.color "#FCFCFC1A" }
style.scrollbar2 = { common.color "#FCFCFC80" }    -- Hovered
style.selection = { common.color "#2A3EB180" }
style.text = { common.color "#FCFCFCE6" }

style.syntax["comment"] = { common.color "#FCFCFC4D" }
style.syntax["function"] = { common.color "#FCFCFCE6" }
style.syntax["keyword"] = { common.color "#FFC107" }
style.syntax["keyword2"] = { common.color "#FFC107" }
style.syntax["literal"] = { common.color "#FCFCFCE6" }
style.syntax["normal"] = { common.color "#FCFCFCE6" }
style.syntax["number"] = { common.color "#FCFCFCE6" }
style.syntax["operator"] = { common.color "#FFC107"}
style.syntax["string"] = { common.color "#FCFCFCE6" }
style.syntax["symbol"] = { common.color "#FCFCFCE6" }

-- Plugins
--------------------
style.bracketmatch_color = { common.color "#6C6F93" }
style.guide = { common.color "#FCFCFC1A" }
style.guide_highlight = { common.color "#FCFCFC80" }
style.guide_width = 1
style.linter_warning = { common.color "#FF6E40" }
        