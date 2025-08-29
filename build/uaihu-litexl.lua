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

style.accent = { common.color "#FAFAFAE6" }          -- Text in autocomplete and command
style.background = { common.color "#000000" }
style.background2 = { common.color "#000000" }
style.background3 = { common.color "#000000" }
style.caret = { common.color "#FFC107" }
style.dim = { common.color "#FAFAFA4D" }       -- Text of nonactive tabs
style.divider = { common.color "#6C6F93" }
style.line_highlight = { common.color "#16161C80"}
style.line_number = { common.color "#FAFAFA1A" }
style.line_number2 = { common.color "#FAFAFA80" }  -- Number on line with caret
style.scrollbar = { common.color "#FAFAFA1A" }
style.scrollbar2 = { common.color "#FAFAFA80" }    -- Hovered
style.selection = { common.color "#2A3EB180" }
style.text = { common.color "#FAFAFAE6" }

style.syntax["comment"] = { common.color "#FAFAFA4D" }
style.syntax["function"] = { common.color "#FAFAFAE6" }
style.syntax["keyword"] = { common.color "#FFC107" }
style.syntax["keyword2"] = { common.color "#FFC107" }
style.syntax["literal"] = { common.color "#FAFAFAE6" }
style.syntax["normal"] = { common.color "#FAFAFAE6" }
style.syntax["number"] = { common.color "#FAFAFAE6" }
style.syntax["operator"] = { common.color "#FFC107"}
style.syntax["string"] = { common.color "#FAFAFAE6" }
style.syntax["symbol"] = { common.color "#FAFAFAE6" }

-- Plugins
--------------------
style.bracketmatch_color = { common.color "#6C6F93" }                  -- bracketmatch
style.guide = { common.color "#FAFAFA1A" }
style.guide_highlight = { common.color "#FAFAFA80" } -- indentguide
style.guide_width = 1                                                                   -- indentguide
style.linter_warning = { common.color "#FF6E40" }                  -- linter
        