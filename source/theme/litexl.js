class LiteXL {
    static filepath = './build/uaihu-litexl.lua';

    static template(uaihu) {
        return `\
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

style.accent = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }          -- Text in autocomplete and command
style.background = { common.color "${uaihu.color.bg_main}" }
style.background2 = { common.color "${uaihu.color.bg_main}" }
style.background3 = { common.color "${uaihu.color.bg_main}" }
style.caret = { common.color "${uaihu.color.symbols}" }
style.dim = { common.color "${uaihu.color.text_wht}${uaihu.alpha.medium_low}" }       -- Text of nonactive tabs
style.divider = { common.color "${uaihu.color.separator}" }
style.line_highlight = { common.color "${uaihu.color.bg_shadow}${uaihu.alpha.medium}"}
style.line_number = { common.color "${uaihu.color.text_wht}${uaihu.alpha.low}" }
style.line_number2 = { common.color "${uaihu.color.text_wht}${uaihu.alpha.medium}" }  -- Number on line with caret
style.scrollbar = { common.color "${uaihu.color.text_wht}${uaihu.alpha.low}" }
style.scrollbar2 = { common.color "${uaihu.color.text_wht}${uaihu.alpha.medium}" }    -- Hovered
style.selection = { common.color "${uaihu.color.selection}${uaihu.alpha.medium}" }
style.text = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }

style.syntax["comment"] = { common.color "${uaihu.color.text_wht}${uaihu.alpha.medium_low}" }
style.syntax["function"] = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }
style.syntax["keyword"] = { common.color "${uaihu.color.symbols}" }
style.syntax["keyword2"] = { common.color "${uaihu.color.symbols}" }
style.syntax["literal"] = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }
style.syntax["normal"] = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }
style.syntax["number"] = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }
style.syntax["operator"] = { common.color "${uaihu.color.symbols}"}
style.syntax["string"] = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }
style.syntax["symbol"] = { common.color "${uaihu.color.text_wht}${uaihu.alpha.high}" }

-- Plugins
--------------------
style.bracketmatch_color = { common.color "${uaihu.color.separator}" }
style.guide = { common.color "${uaihu.color.text_wht}${uaihu.alpha.low}" }
style.guide_highlight = { common.color "${uaihu.color.text_wht}${uaihu.alpha.medium}" }
style.guide_width = 1
style.linter_warning = { common.color "${uaihu.color.diff_negative}" }
        `
    }
}

export default LiteXL;
