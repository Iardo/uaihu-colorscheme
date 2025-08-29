class Neovim {
    static filepath = './build/uaihu-nvim.lua';

    static template(uaihu) {
        return `\
--[[
 * Theme Name:   Uaihu.
 * Description:  A dark theme for neovim.
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

local uaihu = require('uaihu')

uaihu.setup({
    uaihu = 'uaihu',
    styles = {
        comments = 'italic',
        functions = 'italic',
    },
})
uaihu.load()
        `
    }
}

export default Neovim;
