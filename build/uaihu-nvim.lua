--[[
 * Theme Name:   Uaihu.
 * Description:  A dark theme for neovim.
 * Version:      1.0
 * Author:       Iván Ramos
 * Author Mail:  iardoru@gmail.com
 * Author URI:   
 * License:      MIT
 * License URI:  http://www.opensource.org/licenses/mit-license.php 

 * Inspired by
 * ----
 * - https://github.com/folke/tokyonight.nvim

 * Requirements
 * ----
 * - https://github.com/hsluv/hsluv-lua
 * - https://github.com/be5invis/Iosevka
 *
]]

local M = {}

---@param color string  -- Base hex color
---@param brightness number? -- Amount of brightness to increase
---@param saturation number? -- Amount of saturation to increase
function M.brighten(color, brightness, saturation)
  brightness = brightness or 0.05
  saturation = saturation or 0.2

  local hsl = hsluv.hex_to_hsluv(color)
  hsl[3] = math.min(hsl[3] + (brightness * 100), 100)
  hsl[2] = math.min(hsl[2] + (saturation * 100), 100)
  return hsluv.hsluv_to_hex(hsl)
end


--------------------
function M.base()
  -- stylua: ignore
  return {
    ColorColumn   = { bg = c.black }, -- used for the columns set with 'colorcolumn'
    Comment       = { fg = M.brighten("#FCFCFC", -0.4, 0) },
    Conceal       = { fg = c.dark5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    CurSearch     =  "IncSearch",
    Cursor        = { fg = c.bg, bg = c.fg }, -- character under the cursor
    CursorColumn  = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorIM      = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine    = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr  = { fg = c.orange, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    DiffAdd       = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange    = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete    = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText      = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    Directory     = { fg = c.blue }, -- directory names (and other special names in listings)
    EndOfBuffer   = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg      = { fg = c.error }, -- error messages on the command line
    FloatBorder   = { fg = c.border_highlight, bg = c.bg_float },
    FloatTitle    = { fg = c.border_highlight, bg = c.bg_float },
    FoldColumn    = { bg = opts.transparent and c.none or c.bg, fg = c.comment }, -- 'foldcolumn'
    Folded        = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
    Foo           = { bg = c.magenta2, fg = c.fg },
    IncSearch     = { bg = c.orange, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    lCursor       = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    LineNr        = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove   = { fg = c.fg_gutter },
    LineNrBelow   = { fg = c.fg_gutter },
    MatchParen    = { fg = c.orange, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg       = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg       = { fg = c.blue }, -- |more-prompt|
    MsgArea       = { fg = c.fg_dark }, -- Area for messages and cmdline
    NonText       = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal        = { fg = "#FCFCFC", bg = "#0C0C0C" },
    NormalFloat   = { fg = c.fg_float, bg = c.bg_float }, -- Normal text in floating windows.
    NormalNC      = { fg = c.fg, bg = opts.transparent and c.none or opts.dim_inactive and c.bg_dark or c.bg }, -- normal text in non-current windows
    NormalSB      = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
    Pmenu         = { bg = c.bg_popup, fg = c.fg }, -- Popup menu: normal item.
    PmenuMatch    = { bg = c.bg_popup, fg = c.blue1 }, -- Popup menu: Matched text in normal item.
    PmenuMatchSel = { bg = Util.blend_bg(c.fg_gutter, 0.8), fg = c.blue1 }, -- Popup menu: Matched text in selected item.
    PmenuSbar     = { bg = Util.blend_fg(c.bg_popup, 0.95) }, -- Popup menu: scrollbar.
    PmenuSel      = { bg = Util.blend_bg(c.fg_gutter, 0.8) }, -- Popup menu: selected item.
    PmenuThumb    = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
    Question      = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine  = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search        = { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SignColumn    = { bg = opts.transparent and c.none or c.bg, fg = c.fg_gutter }, -- column where |signs| are displayed
    SignColumnSB  = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
    SpecialKey    = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad      = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap      = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal    = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare     = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine    = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC  = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Substitute    = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
    TabLine       = { bg = c.bg_statusline, fg = c.fg_gutter }, -- tab pages line, not active tab page label
    TabLineFill   = { bg = c.black }, -- tab pages line, where there are no labels
    TabLineSel    = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
    Title         = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    VertSplit     = { fg = c.border }, -- the column separating vertically split windows
    Visual        = { bg = c.bg_visual }, -- Visual mode selection
    VisualNOS     = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg    = { fg = c.warning }, -- warning messages
    Whitespace    = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu      = { bg = c.bg_visual }, -- current match in 'wildmenu' completion
    WinBar        = "StatusLine" , -- window bar
    WinBarNC      = "StatusLineNC", -- window bar in inactive windows
    WinSeparator  = { fg = c.border, bold = true }, -- the column separating vertically split windows

    Bold            = { bold = true, fg = c.fg }, -- (preferred) any bold text
    Character       = { fg = c.green }, --  a character constant: 'c', '\n'
    Constant        = { fg = c.orange }, -- (preferred) any constant
    Debug           = { fg = c.orange }, --    debugging statements
    debugBreakpoint = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
    debugPC         = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    Delimiter       =  "Special", --  character that needs attention
    dosIniLabel     = "@property",
    Error           = { fg = c.error }, -- (preferred) any erroneous construct
    Function        = { fg = c.blue, style = opts.styles.functions }, -- function name (also: methods for classes)
    helpCommand     = { bg = c.terminal_black, fg = c.blue },
    htmlH1          = { fg = c.magenta, bold = true },
    htmlH2          = { fg = c.blue, bold = true },
    Identifier      = { fg = c.magenta, style = opts.styles.variables }, -- (preferred) any variable name
    Italic          = { italic = true, fg = c.fg }, -- (preferred) any italic text
    Keyword         = { fg = "#FFC107" },
    Operator        = { fg = c.blue5 }, -- "sizeof", "+", "*", etc.
    PreProc         = { fg = c.cyan }, -- (preferred) generic Preprocessor
    qfFileName      = { fg = c.blue },
    qfLineNr        = { fg = c.dark5 },
    Special         = { fg = c.blue1 }, -- (preferred) any special symbol
    Statement       = { fg = c.magenta }, -- (preferred) any statement
    String          = { fg = "#FCFCFC" },
    Todo            = { bg = c.yellow, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type            = { fg = c.blue1 }, -- (preferred) int, long, char, etc.
    Underlined      = { underline = true }, -- (preferred) text that stands out, HTML links

    -- These groups are for the native LSP client.
    -- Some other LSP clients may use these groups, or use their own.
    LspCodeLens                 = { fg = c.comment },
    LspInfoBorder               = { fg = c.border_highlight, bg = c.bg_float },
    LspInlayHint                = { bg = Util.blend_bg(c.blue7, 0.1), fg = c.dark3 },
    LspReferenceRead            = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceText            = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceWrite           = { bg = c.fg_gutter }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = Util.blend_bg(c.bg_visual, 0.4), bold = true },

    -- Diagnostics
    DiagnosticError             = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnderlineError    = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnnecessary       = { fg = c.terminal_black }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError  = { bg = Util.blend_bg(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextHint   = { bg = Util.blend_bg(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { bg = Util.blend_bg(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticWarn              = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    -- Health
    healthError   = { fg = c.error },
    healthSuccess = { fg = c.green1 },
    healthWarning = { fg = c.warning },

    -- diff (not needed anymore?)
    diffAdded     = { bg = c.diff.add, fg = c.git.add },
    diffChanged   = { bg = c.diff.change, fg = c.git.change },
    diffFile      = { fg = c.blue },
    diffIndexLine = { fg = c.magenta },
    diffLine      = { fg = c.comment },
    diffNewFile   = { fg = c.blue1, bg=c.diff.add },
    diffOldFile   = { fg = c.blue1, bg=c.diff.delete },
    diffRemoved   = { bg = c.diff.delete, fg = c.git.delete },
    helpExample   = { fg = c.comment },
  }
end

function M.aerial()
  -- https://github.com/stevearc/aerial.nvim
  -- stylua: ignore
  return {
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide  = { fg = c.fg_gutter },
    AerialLine   = "LspInlayHint",
  }
  -- require("tokyonight.groups.kinds").kinds(ret, "Aerial%sIcon")
end

function M.ale()
  -- https://github.com/dense-analysis/ale
  -- stylua: ignore
  return {
    ALEErrorSign   = { fg = c.error },
    ALEWarningSign = { fg = c.warning },
  }
end

function M.alpha()
  -- https://github.com/goolord/alpha-nvim
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.orange },
    AlphaHeader      = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter      = { fg = c.blue1 },
    AlphaButtons     = { fg = c.cyan },
  }
end

function M.barbar()
  -- https://github.com/romgrk/barbar.nvim
  -- stylua: ignore
  return {
    BufferAlternate       = { bg = c.fg_gutter, fg = c.fg },
    BufferAlternateERROR  = { bg = c.fg_gutter, fg = c.error },
    BufferAlternateHINT   = { bg = c.fg_gutter, fg = c.hint },
    BufferAlternateINFO   = { bg = c.fg_gutter, fg = c.info },
    BufferAlternateIndex  = { bg = c.fg_gutter, fg = c.info },
    BufferAlternateMod    = { bg = c.fg_gutter, fg = c.warning },
    BufferAlternateSign   = { bg = c.fg_gutter, fg = c.info },
    BufferAlternateTarget = { bg = c.fg_gutter, fg = c.red },
    BufferAlternateWARN   = { bg = c.fg_gutter, fg = c.warning },
    BufferCurrent         = { bg = c.bg, fg = c.fg },
    BufferCurrentERROR    = { bg = c.bg, fg = c.error },
    BufferCurrentHINT     = { bg = c.bg, fg = c.hint },
    BufferCurrentINFO     = { bg = c.bg, fg = c.info },
    BufferCurrentIndex    = { bg = c.bg, fg = c.info },
    BufferCurrentMod      = { bg = c.bg, fg = c.warning },
    BufferCurrentSign     = { bg = c.bg, fg = c.bg },
    BufferCurrentTarget   = { bg = c.bg, fg = c.red },
    BufferCurrentWARN     = { bg = c.bg, fg = c.warning },
    BufferInactive        = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.dark5, 0.8) },
    BufferInactiveERROR   = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.error, 0.8) },
    BufferInactiveHINT    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.hint, 0.8) },
    BufferInactiveINFO    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.info, 0.8) },
    BufferInactiveIndex   = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.dark5 },
    BufferInactiveMod     = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.warning, 0.8) },
    BufferInactiveSign    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.bg },
    BufferInactiveTarget  = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.red },
    BufferInactiveWARN    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.warning, 0.8) },
    BufferOffset          = { bg = c.bg_statusline, fg = c.dark5 },
    BufferTabpageFill     = { bg = Util.blend_bg(c.bg_highlight, 0.8), fg = c.dark5 },
    BufferTabpages        = { bg = c.bg_statusline, fg = c.none },
    BufferVisible         = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleERROR    = { bg = c.bg_statusline, fg = c.error },
    BufferVisibleHINT     = { bg = c.bg_statusline, fg = c.hint },
    BufferVisibleINFO     = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleIndex    = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod      = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign     = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget   = { bg = c.bg_statusline, fg = c.red },
    BufferVisibleWARN     = { bg = c.bg_statusline, fg = c.warning },
  }
end

function M.blink()
  -- https://github.com/Saghen/blink.cmp
  -- stylua: ignore
  return {
    BlinkCmpDoc                 = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.terminal_black },
    BlinkCmpKindCodeium         = { fg = c.teal, bg             = c.none },
    BlinkCmpKindCopilot         = { fg = c.teal, bg             = c.none },
    BlinkCmpKindDefault         = { fg = c.fg_dark, bg          = c.none },
    BlinkCmpKindSupermaven      = { fg = c.teal, bg             = c.none },
    BlinkCmpKindTabNine         = { fg = c.teal, bg             = c.none },
    BlinkCmpLabel               = { fg = c.fg, bg               = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.fg_gutter, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.blue1, bg            = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_highlight, bg = c.bg_float },
  }
  -- require("tokyonight.groups.kinds").kinds(ret, "BlinkCmpKind%s")
end

function M.bufferline()
  -- https://github.com/akinsho/bufferline.nvim
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.git.change },
  }
end

function M.cmp()
  -- https://github.com/hrsh7th/nvim-cmp
  -- stylua: ignore
  return {
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText           = { fg = c.terminal_black },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.blue1, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.blue1, bg = c.none },
    CmpItemKindCodeium     = { fg = c.teal, bg = c.none },
    CmpItemKindCopilot     = { fg = c.teal, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.teal, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg_dark, bg = c.none },
    CmpItemKindTabNine     = { fg = c.teal, bg = c.none },
    CmpItemMenu            = { fg = c.comment, bg = c.none },
  }
  -- require("tokyonight.groups.kinds").kinds(ret, "CmpItemKind%s")
end

function M.dap()
  -- https://github.com/mfussenegger/nvim-dap
  -- stylua: ignore
  return {
    DapStoppedLine = { bg = Util.blend_bg(c.warning, 0.1) },
  }
end

function M.dashboard()
  -- https://github.com/nvimdev/dashboard-nvim
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.blue },
    DashboardFooter           = { fg = c.blue1 },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.cyan },
    DashboardProjectTitleIcon = { fg = c.orange },
    DashboardProjectIcon      = { fg = c.yellow },
    DashboardMruTitle         = { fg = c.cyan },
    DashboardMruIcon          = { fg = c.purple },
    DashboardFiles            = { fg = c.blue },
    DashboardShortCutIcon     = { fg = c.magenta },
    -- Doome theme
    DashboardDesc             = { fg = c.cyan },
    DashboardKey              = { fg = c.orange },
    DashboardIcon             = { fg = c.cyan },
    DashboardShortCut         = { fg = c.cyan },
  }
end

function M.delimiters_rainbow()
  -- https://github.com/HiPhish/rainbow-delimiters.nvim
  -- stylua: ignore
  return {
    RainbowDelimiterRed    = { fg = c.red },
    RainbowDelimiterOrange = { fg = c.orange },
    RainbowDelimiterYellow = { fg = c.yellow },
    RainbowDelimiterGreen  = { fg = c.green },
    RainbowDelimiterBlue   = { fg = c.blue },
    RainbowDelimiterViolet = { fg = c.purple },
    RainbowDelimiterCyan   = { fg = c.cyan },
  }
end

function M.flash()
  -- https://github.com/folke/flash.nvim
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.dark3 },
    FlashLabel    = { bg = c.magenta2, bold = true, fg = c.fg },
  }
end

function M.fzf()
  -- https://github.com/ibhagwan/fzf-lua
  -- stylua: ignore
  return {
    FzfLuaBorder        = { fg = c.border_highlight, bg = c.bg_float },
    FzfLuaCursor        = "IncSearch",
    FzfLuaDirPart       = { fg = c.fg_dark },
    FzfLuaFilePart      = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaFzfNormal     = { fg = c.fg },
    FzfLuaFzfPointer    = { fg = c.magenta2 },
    FzfLuaFzfSeparator  = { fg = c.orange, bg = c.bg_float },
    FzfLuaHeaderBind    = "@punctuation.special",
    FzfLuaHeaderText    = "Title",
    FzfLuaNormal        = { fg = c.fg, bg = c.bg_float },
    FzfLuaPath          = "Directory",
    FzfLuaPreviewTitle  = { fg = c.border_highlight, bg = c.bg_float },
    FzfLuaTitle         = { fg = c.orange, bg = c.bg_float },
  }
end

function M.gitgutter()
  -- https://github.com/airblade/vim-gitgutter
  -- stylua: ignore
  return {
    GitGutterAdd          = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange       = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete       = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|
    GitGutterAddLineNr    = { fg = c.git.add },
    GitGutterChangeLineNr = { fg = c.git.change },
    GitGutterDeleteLineNr = { fg = c.git.delete },
  }
end

function M.gitsigns()
  -- https://github.com/lewis6991/gitsigns.nvim
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|
  }
end

function M.glyphs()
  -- https://github.com/lambdalisue/glyph-palette.vim
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red1 },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.green1 },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red },
  }
end

function M.grug_far()
  -- https://github.com/MagicDuck/grug-far.nvim
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.comment },
    GrugFarHelpHeaderKey          = { fg = c.cyan },
    GrugFarInputLabel             = { fg = c.blue1 },
    GrugFarInputPlaceholder       = { fg = c.dark3 },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.orange },
    GrugFarResultsLineColumn      = { fg = c.dark3 },
    GrugFarResultsLineNo          = { fg = c.dark3 },
    GrugFarResultsMatch           = { fg = c.black, bg = c.red },
    GrugFarResultsStats           = { fg = c.blue },
  }
end

function M.headlines()
  -- https://github.com/lukas-reineke/headlines.nvim
  -- stylua: ignore
  local conf = {
    CodeBlock = { bg = c.bg_dark },
    Headline  = "Headline1",
  }
  for i, color in ipairs(c.rainbow) do
    conf["Headline" .. i] = { bg = Util.blend_bg(color, 0.05) }
  end
  return conf
end

function M.hop()
  -- https://github.com/phaazon/hop.nvim
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.magenta2, bold = true },
    HopNextKey1 = { fg = c.blue2, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.blue2, 0.6) },
    HopUnmatched = { fg = c.dark3 },
  }
end

function M.illuminate()
  -- https://github.com/RRethy/vim-illuminate
  -- stylua: ignore
  return {
    IlluminatedWordRead  = { bg = c.fg_gutter },
    IlluminatedWordText  = { bg = c.fg_gutter },
    IlluminatedWordWrite = { bg = c.fg_gutter },
    illuminatedCurWord   = { bg = c.fg_gutter },
    illuminatedWord      = { bg = c.fg_gutter },
  }
end

function M.indent_blankline()
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.fg_gutter, nocombine = true },
    IndentBlanklineContextChar = { fg = c.blue1, nocombine = true },
    IblIndent                  = { fg = c.fg_gutter, nocombine = true },
    IblScope                   = { fg = c.blue1, nocombine = true },
  }
end

function M.indentmini()
  -- https://github.com/nvimdev/indentmini.nvim
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_gutter, nocombine = true },
    IndentLineCurrent          = { fg = c.blue1, nocombine = true },
  }
end

function M.kind()
  -- stylua: ignore
  local kinds = {
    Array         = "@punctuation.bracket",
    Boolean       = "@boolean",
    Class         = "@type",
    Color         = "Special",
    Constant      = "@constant",
    Constructor   = "@constructor",
    Enum          = "@lsp.type.enum",
    EnumMember    = "@lsp.type.enumMember",
    Event         = "Special",
    Field         = "@variable.member",
    File          = "Normal",
    Folder        = "Directory",
    Function      = "@function",
    Interface     = "@lsp.type.interface",
    Key           = "@variable.member",
    Keyword       = "@lsp.type.keyword",
    Method        = "@function.method",
    Module        = "@module",
    Namespace     = "@module",
    Null          = "@constant.builtin",
    Number        = "@number",
    Object        = "@constant",
    Operator      = "@operator",
    Package       = "@module",
    Property      = "@property",
    Reference     = "@markup.link",
    Snippet       = "Conceal",
    String        = "@string",
    Struct        = "@lsp.type.struct",
    Unit          = "@lsp.type.struct",
    Text          = "@markup",
    TypeParameter = "@lsp.type.typeParameter",
    Variable      = "@variable",
    Value         = "@string",
  }
  conf = conf or {}
  for kind, link in pairs(kinds) do
    local base = "LspKind" .. kind
    if pattern then
      conf[pattern:format(kind)] = base
    else
      conf[base] = link
    end
  end
  return conf
end

function M.lazy()
  -- https://github.com/folke/lazy.nvim
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.magenta2 },
    LazyProgressTodo = { bold = true, fg = c.fg_gutter },
  }
end

function M.leap()
  -- https://github.com/ggandor/leap.nvim
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.magenta2, fg = c.fg, bold = true },
    LeapLabel          = { fg = c.magenta2, bold = true },
    LeapBackdrop       = { fg = c.dark3 },
  }
end

function M.lspsaga()
  -- https://github.com/glepnir/lspsaga.nvim
  -- stylua: ignore
  return {
    DefinitionCount            = { fg = c.purple },
    DefinitionIcon             = { fg = c.blue },
    DiagnosticInformation      = "DiagnosticInfo",
    DiagnosticWarning          = "DiagnosticWarn",
    LspFloatWinBorder          = { fg = c.border_highlight },
    LspFloatWinNormal          = { bg = c.bg_float },
    LspSagaBorderTitle         = { fg = c.cyan },
    LspSagaCodeActionBorder    = { fg = c.blue },
    LspSagaCodeActionContent   = { fg = c.purple },
    LspSagaCodeActionTitle     = { fg = c.blue1 },
    LspSagaDefPreviewBorder    = { fg = c.green },
    LspSagaFinderSelection     = { fg = c.bg_visual },
    LspSagaHoverBorder         = { fg = c.blue },
    LspSagaRenameBorder        = { fg = c.green },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount            = { fg = c.purple },
    ReferencesIcon             = { fg = c.blue },
    TargetWord                 = { fg = c.cyan },
  }
end

function M.markdown_render()
  -- https://github.com/MeanderingProgrammer/render-markdown.nvim
  -- stylua: ignore
  local conf = {
    RenderMarkdownBullet    = {fg = c.orange}, -- horizontal rule
    RenderMarkdownCode      = { bg = c.bg_dark },
    RenderMarkdownDash      = {fg = c.orange}, -- horizontal rule
    RenderMarkdownTableHead = { fg = c.red},
    RenderMarkdownTableRow  = { fg = c.orange},
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }
  for i, color in ipairs(c.rainbow) do
    conf["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.1) }
    conf["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end
  return conf
end

function M.mini_animate()
  -- https://github.com/echasnovski/mini.animate
  -- stylua: ignore
  return {
    MiniAnimateCursor      = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = "NormalFloat",
  }
end

function M.mini_clue()
  -- https://github.com/echasnovski/mini.clue
  -- stylua: ignore
  return {
    MiniClueBorder              = "FloatBorder",
    MiniClueDescGroup           = "DiagnosticFloatingWarn",
    MiniClueDescSingle          = "NormalFloat",
    MiniClueNextKey             = "DiagnosticFloatingHint",
    MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
    MiniClueSeparator           = "DiagnosticFloatingInfo",
    MiniClueTitle               = "FloatTitle",
  }
end

function M.mini_completion()
  -- https://github.com/echasnovski/mini.completion
  -- stylua: ignore
  return {
    MiniCompletionActiveParameter = { underline = true },
  }
end

function M.mini_cursorword()
  -- https://github.com/echasnovski/mini.cursorword
  -- stylua: ignore
  return {
    MiniCursorword        = { bg = c.fg_gutter },
    MiniCursorwordCurrent = { bg = c.fg_gutter },
  }
end

function M.mini_deps()
  -- https://github.com/echasnovski/mini.deps
  -- stylua: ignore
  return {
    MiniDepsChangeAdded   = "diffAdded",
    MiniDepsChangeRemoved = "diffRemoved",
    MiniDepsHint          = "DiagnosticHint",
    MiniDepsInfo          = "DiagnosticInfo",
    MiniDepsMsgBreaking   = "DiagnosticWarn",
    MiniDepsPlaceholder   = "Comment",
    MiniDepsTitle         = "Title",
    MiniDepsTitleError    = { fg = c.black, bg = c.git.delete },
    MiniDepsTitleSame     = "Comment",
    MiniDepsTitleUpdate   = { fg = c.black, bg = c.git.add },
  }
end

function M.mini_diff()
  -- https://github.com/echasnovski/mini.diff
  -- stylua: ignore
  return {
    MiniDiffOverAdd     = "DiffAdd",
    MiniDiffOverChange  = "DiffText",
    MiniDiffOverContext = "DiffChange",
    MiniDiffOverDelete  = "DiffDelete",
    MiniDiffSignAdd     = { fg = c.git.add },
    MiniDiffSignChange  = { fg = c.git.change },
    MiniDiffSignDelete  = { fg = c.git.delete },
  }
end

function M.mini_files()
  -- https://github.com/echasnovski/mini.files
  -- stylua: ignore
  return {
    MiniFilesBorder         = "FloatBorder",
    MiniFilesBorderModified = "DiagnosticFloatingWarn",
    MiniFilesCursorLine     = "CursorLine",
    MiniFilesDirectory      = "Directory",
    MiniFilesFile           = { fg = c.fg_float },
    MiniFilesNormal         = "NormalFloat",
    MiniFilesTitle          = "FloatTitle",
    MiniFilesTitleFocused   = { fg = c.border_highlight, bg = c.bg_float, bold = true },
  }
end

function M.mini_hipatterns()
  -- https://github.com/echasnovski/mini.hipatterns
  -- stylua: ignore
  return {
    MiniHipatternsFixme = { fg = c.black, bg = c.error, bold = true },
    MiniHipatternsHack  = { fg = c.black, bg = c.warning, bold = true },
    MiniHipatternsNote  = { fg = c.black, bg = c.hint, bold = true },
    MiniHipatternsTodo  = { fg = c.black, bg = c.info, bold = true },
  }
end

function M.mini_icons()
  -- https://github.com/echasnovski/mini.icons
  -- stylua: ignore
  return {
    MiniIconsGrey   = { fg = c.fg },
    MiniIconsPurple = { fg = c.purple },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsAzure  = { fg = c.info },
    MiniIconsCyan   = { fg = c.teal },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsYellow = { fg = c.yellow },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsRed    = { fg = c.red },
  }
end

function M.mini_indentscope()
  -- https://github.com/echasnovski/mini.indentscope
  -- stylua: ignore
  return {
    MiniIndentscopeSymbol = { fg = c.blue1, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
  }
end

function M.mini_jump()
  -- https://github.com/echasnovski/mini.jump
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.magenta2, fg = "#ffffff" },
    MiniJump2dDim        = "Comment",
    MiniJump2dSpot       = { fg = c.magenta2, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.hint, bg = c.bg_dark, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.orange, bold = true, nocombine = true },
  }
end

function M.mini_map()
  -- https://github.com/echasnovski/mini.map
  -- stylua: ignore
  return {
    MiniMapNormal      = "NormalFloat",
    MiniMapSymbolCount = "Special",
    MiniMapSymbolLine  = "Title",
    MiniMapSymbolView  = "Delimiter",
  }
end

function M.mini_notify()
  -- https://github.com/echasnovski/mini.notify
  -- stylua: ignore
  return {
    MiniNotifyBorder = "FloatBorder",
    MiniNotifyNormal = "NormalFloat",
    MiniNotifyTitle = "FloatTitle",
  }
end

function M.mini_operators()
  -- https://github.com/echasnovski/mini.operators
  -- stylua: ignore
  return {
    MiniOperatorsExchangeFrom = "IncSearch",
  }
end

function M.mini_pick()
  -- https://github.com/echasnovski/mini.pick
  -- stylua: ignore
  return {
    MiniPickBorder        = "FloatBorder",
    MiniPickBorderBusy    = "DiagnosticFloatingWarn",
    MiniPickBorderText    = { fg = c.hint, bg = c.bg_float },
    MiniPickIconDirectory = "Directory",
    MiniPickIconFile      = "MiniPickNormal",
    MiniPickHeader        = "DiagnosticFloatingHint",
    MiniPickMatchCurrent  = "CursorLine",
    MiniPickMatchMarked   = "Visual",
    MiniPickMatchRanges   = "DiagnosticFloatingHint",
    MiniPickNormal        = "NormalFloat",
    MiniPickPreviewLine   = "CursorLine",
    MiniPickPreviewRegion = "IncSearch",
    MiniPickPrompt        = { fg = c.info, bg = c.bg_float },
  }
end

function M.mini_starter()
  -- https://github.com/echasnovski/mini.starter
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.yellow, italic = true },
    MiniStarterHeader     = { fg = c.blue },
    MiniStarterInactive   = { fg = c.comment, style = opts.styles.comments },
    MiniStarterItem       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.border_highlight },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterQuery      = { fg = c.info },
    MiniStarterSection    = { fg = c.blue1 },
  }
end

function M.mini_statusline()
  -- https://github.com/echasnovski/mini.statusline
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.fg_dark, bg = c.fg_gutter },
    MiniStatuslineFileinfo    = { fg = c.fg_dark, bg = c.fg_gutter },
    MiniStatuslineFilename    = { fg = c.fg_dark, bg = c.bg_highlight },
    MiniStatuslineInactive    = { fg = c.blue, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert  = { fg = c.black, bg = c.green, bold = true },
    MiniStatuslineModeNormal  = { fg = c.black, bg = c.blue, bold = true },
    MiniStatuslineModeOther   = { fg = c.black, bg = c.teal, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = true },
    MiniStatuslineModeVisual  = { fg = c.black, bg = c.magenta, bold = true },
  }
end

function M.mini_surround()
  -- https://github.com/echasnovski/mini.surround
  -- stylua: ignore
  return {
    MiniSurround = { bg = c.orange, fg = c.black },
  }
end

function M.mini_tabline()
  -- https://github.com/echasnovski/mini.tabline
  -- stylua: ignore
  return {
    MiniTablineCurrent         = { fg = c.fg, bg = c.fg_gutter },
    MiniTablineFill            = { bg = c.black },
    MiniTablineHidden          = { fg = c.dark5, bg = c.bg_statusline },
    MiniTablineModifiedCurrent = { fg = c.warning, bg = c.fg_gutter },
    MiniTablineModifiedHidden  = { bg = c.bg_statusline, fg = Util.blend_bg(c.warning, 0.7) },
    MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_statusline },
    MiniTablineTabpagesection  = { bg = c.fg_gutter, fg = c.none },
    MiniTablineVisible         = { fg = c.fg, bg = c.bg_statusline },
  }
end

function M.mini_test()
  -- https://github.com/echasnovski/mini.test
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red, bold = true },
    MiniTestPass = { fg = c.green, bold = true },
  }
end

function M.mini_trailspace()
  -- https://github.com/echasnovski/mini.trailspace
  -- stylua: ignore
  return {
    MiniTrailspace = { bg = c.red },
  }
end

function M.navic()
  -- https://github.com/SmiteshP/nvim-navic
  -- stylua: ignore
  return {
    NavicSeparator = { fg = c.fg, bg = c.none },
    NavicText      = { fg = c.fg, bg = c.none },
  }
  -- require("tokyonight.groups.kinds").kinds(ret, "NavicIcons%s")
end

function M.neotree()
  -- https://github.com/nvim-neo-tree/neo-tree.nvim
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.fg_gutter },
    NeoTreeFileName            = { fg = c.fg_sidebar },
    NeoTreeGitModified         = { fg = c.orange },
    NeoTreeGitStaged           = { fg = c.green1 },
    NeoTreeGitUntracked        = { fg = c.magenta },
    NeoTreeNormal              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.blue, bg = c.bg_dark, bold = true },
    NeoTreeTabInactive         = { fg = c.dark3, bg = dark },
    NeoTreeTabSeparatorActive  = { fg = c.blue, bg = c.bg_dark },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = dark },
  }
end

function M.neogit()
  -- https://github.com/TimUntersberger/neogit
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.magenta },
    NeogitRemote               = { fg = c.purple },
    NeogitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight  = { bg = c.fg_gutter, fg = c.blue },
    NeogitDiffContextHighlight = { bg = Util.blend_bg(c.fg_gutter, 0.5), fg = c.fg_dark },
    NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

function M.neotest()
  -- https://github.com/nvim-neotest/neotest
  -- stylua: ignore
  return {
    NeotestAdapterName  = { fg = c.purple, bold = true },
    NeotestBorder       = { fg = c.blue },
    NeotestDir          = { fg = c.blue },
    NeotestExpandMarker = { fg = c.fg_sidebar },
    NeotestFailed       = { fg = c.red },
    NeotestFile         = { fg = c.teal },
    NeotestFocused      = { fg = c.yellow },
    NeotestIndent       = { fg = c.fg_sidebar },
    NeotestMarked       = { fg = c.blue },
    NeotestNamespace    = { fg = c.green2 },
    NeotestPassed       = { fg = c.green },
    NeotestRunning      = { fg = c.yellow },
    NeotestSkipped      = { fg = c.blue },
    NeotestTarget       = { fg = c.blue },
    NeotestTest         = { fg = c.fg_sidebar },
    NeotestWinSelect    = { fg = c.blue },
  }
end

function M.noice()
  -- https://github.com/folke/noice.nvim
  -- stylua: ignore
  return {
    NoiceCmdlineIconInput          = { fg = c.yellow },
    NoiceCmdlineIconLua            = { fg = c.blue1 },
    NoiceCmdlinePopupBorderInput   = { fg = c.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = c.blue1 },
    NoiceCmdlinePopupTitleInput    = { fg = c.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = c.blue1 },
    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
  }
  -- require("tokyonight.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
end

function M.notify()
  -- https://github.com/rcarriga/nvim-notify
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.fg, bg = c.bg },
    NotifyDEBUGBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = Util.blend_bg(c.comment, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGIcon   = { fg = c.comment },
    NotifyDEBUGTitle  = { fg = c.comment },
    NotifyERRORBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyERRORBorder = { fg = Util.blend_bg(c.error, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyERRORIcon   = { fg = c.error },
    NotifyERRORTitle  = { fg = c.error },
    NotifyINFOBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyINFOBorder  = { fg = Util.blend_bg(c.info, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyINFOIcon    = { fg = c.info },
    NotifyINFOTitle   = { fg = c.info },
    NotifyTRACEBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = Util.blend_bg(c.purple, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyTRACEIcon   = { fg = c.purple },
    NotifyTRACETitle  = { fg = c.purple },
    NotifyWARNBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyWARNBorder  = { fg = Util.blend_bg(c.warning, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyWARNIcon    = { fg = c.warning },
    NotifyWARNTitle   = { fg = c.warning },
  }
end

function M.nvimtree()
  -- https://github.com/kyazdani42/nvim-tree.lua
  -- stylua: ignore
  return {
    NvimTreeFolderIcon   = { bg = c.none, fg = c.blue },
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },
    NvimTreeGitNew       = { fg = c.git.add },
    NvimTreeImageFile    = { fg = c.fg_sidebar },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeNormal       = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC     = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeOpenedFile   = { bg = c.bg_highlight },
    NvimTreeRootFolder   = { fg = c.blue, bold = true },
    NvimTreeSpecialFile  = { fg = c.purple, underline = true },
    NvimTreeSymlink      = { fg = c.blue },
    NvimTreeWinSeparator = { fg = opts.styles.sidebars == "transparent" and c.border or c.bg_sidebar, bg = c.bg_sidebar },
  }
end

function M.octo()
  -- https://github.com/pwntester/octo.nvim
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.blue1, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.orange, bold = true },
    OctoIssueTitle            = { fg = c.purple, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.magenta, 0.1), fg = c.magenta },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.blue1 },
  }
end

function M.scrollbar()
  -- https://github.com/petertriho/nvim-scrollbar
  -- stylua: ignore
  return {
    ScrollbarError        = { fg = c.error, bg = c.none },
    ScrollbarErrorHandle  = { fg = c.error, bg = c.bg_highlight },
    ScrollbarHandle       = { fg = c.none, bg = c.bg_highlight },
    ScrollbarHint         = { fg = c.hint, bg = c.none },
    ScrollbarHintHandle   = { fg = c.hint, bg = c.bg_highlight },
    ScrollbarInfo         = { fg = c.info, bg = c.none },
    ScrollbarInfoHandle   = { fg = c.info, bg = c.bg_highlight },
    ScrollbarMisc         = { fg = c.purple, bg = c.none },
    ScrollbarMiscHandle   = { fg = c.purple, bg = c.bg_highlight },
    ScrollbarSearch       = { fg = c.orange, bg = c.none },
    ScrollbarSearchHandle = { fg = c.orange, bg = c.bg_highlight },
    ScrollbarWarn         = { fg = c.warning, bg = c.none },
    ScrollbarWarnHandle   = { fg = c.warning, bg = c.bg_highlight },
  }
end

function M.snacks()
  -- https://github.com/folke/snacks.nvim
  -- stylua: ignore
  local conf = {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.comment, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.comment },
    SnacksNotifierTitleDebug  = { fg = c.comment },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.purple, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.purple },
    SnacksNotifierTitleTrace  = { fg = c.purple },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.cyan },
    SnacksDashboardFooter     = { fg = c.blue1 },
    SnacksDashboardHeader     = { fg = c.blue },
    SnacksDashboardIcon       = { fg = c.blue1 },
    SnacksDashboardKey        = { fg = c.orange },
    SnacksDashboardSpecial    = { fg = c.purple },
    SnacksDashboardDir        = { fg = c.dark3 },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(c.blue1, 0.3), fg = c.blue1 },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(c.blue1, 0.1), fg = c.blue1 },
    SnacksScratchKey          = "SnacksProfilerIconInfo",
    SnacksScratchDesc         = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(c.blue7, 0.3), fg = c.dark3 },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(c.blue7, 0.1), fg = c.dark3 },
    SnacksIndent              = { fg = c.fg_gutter, nocombine = true },
    SnacksIndentScope         = { fg = c.blue1, nocombine = true },
    SnacksZenIcon             = { fg = c.purple },
    SnacksInputIcon           = { fg = c.blue1 },
    SnacksInputBorder         = { fg = c.yellow },
    SnacksInputTitle          = { fg = c.yellow },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.orange, bg = c.bg_float },
    SnacksPickerInputTitle         = { fg = c.orange, bg = c.bg_float },
    SnacksPickerBoxTitle         = { fg = c.orange, bg = c.bg_float },
    SnacksPickerSelected    = { fg = c.magenta2},
    SnacksPickerToggle         = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent   = { fg = c.fg, bg = c.magenta2, bold = true },
    SnacksPickerPickWin   = { fg = c.fg, bg = c.bg_search, bold = true },
  }
  for i, color in ipairs(c.rainbow) do
    conf["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return conf
end

function M.sneak()
  -- https://github.com/justinmk/vim-sneak
  -- stylua: ignore
  return {
    Sneak      = { fg = c.bg_highlight, bg = c.magenta },
    SneakScope = { bg = c.bg_visual },
  }
end

function M.supermaven()
  -- https://github.com/supermaven-inc/supermaven-nvim
  -- stylua: ignore
  return {
    SupermavenSuggestion = { fg = c.terminal_black },
  }
end

function M.token()
  -- stylua: ignore
  return {
    ["@lsp.type.boolean"]                      = "@boolean",
    ["@lsp.type.builtinType"]                  = "@type.builtin",
    ["@lsp.type.comment"]                      = "@comment",
    ["@lsp.type.decorator"]                    = "@attribute",
    ["@lsp.type.deriveHelper"]                 = "@attribute",
    ["@lsp.type.enum"]                         = "@type",
    ["@lsp.type.enumMember"]                   = "@constant",
    ["@lsp.type.escapeSequence"]               = "@string.escape",
    ["@lsp.type.formatSpecifier"]              = "@markup.list",
    ["@lsp.type.generic"]                      = "@variable",
    ["@lsp.type.interface"]                    = { fg = Util.blend_fg(c.blue1, 0.7) },
    ["@lsp.type.keyword"]                      = "@keyword",
    ["@lsp.type.lifetime"]                     = "@keyword.storage",
    ["@lsp.type.namespace"]                    = "@module",
    ["@lsp.type.namespace.python"]             = "@variable",
    ["@lsp.type.number"]                       = "@number",
    ["@lsp.type.operator"]                     = "@operator",
    ["@lsp.type.parameter"]                    = "@variable.parameter",
    ["@lsp.type.property"]                     = "@property",
    ["@lsp.type.selfKeyword"]                  = "@variable.builtin",
    ["@lsp.type.selfTypeKeyword"]              = "@variable.builtin",
    ["@lsp.type.string"]                       = "@string",
    ["@lsp.type.typeAlias"]                    = "@type.definition",
    ["@lsp.type.unresolvedReference"]          = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"]                     = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"]      = "@type.builtin",
    ["@lsp.typemod.enum.defaultLibrary"]       = "@type.builtin",
    ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
    ["@lsp.typemod.function.defaultLibrary"]   = "@function.builtin",
    ["@lsp.typemod.keyword.async"]             = "@keyword.coroutine",
    ["@lsp.typemod.keyword.injected"]          = "@keyword",
    ["@lsp.typemod.macro.defaultLibrary"]      = "@function.builtin",
    ["@lsp.typemod.method.defaultLibrary"]     = "@function.builtin",
    ["@lsp.typemod.operator.injected"]         = "@operator",
    ["@lsp.typemod.string.injected"]           = "@string",
    ["@lsp.typemod.struct.defaultLibrary"]     = "@type.builtin",
    ["@lsp.typemod.type.defaultLibrary"]       = { fg = Util.blend_bg(c.blue1, 0.8) },
    ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = Util.blend_bg(c.blue1, 0.8) },
    ["@lsp.typemod.variable.callable"]         = "@function",
    ["@lsp.typemod.variable.defaultLibrary"]   = "@variable.builtin",
    ["@lsp.typemod.variable.injected"]         = "@variable",
    ["@lsp.typemod.variable.static"]           = "@constant",
  }
end

function M.telescope()
  -- https://github.com/nvim-telescope/telescope.nvim
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal         = { fg = c.fg, bg = c.bg_float },
    TelescopePromptBorder   = { fg = c.orange, bg = c.bg_float },
    TelescopePromptTitle    = { fg = c.orange, bg = c.bg_float },
    TelescopeResultsComment = { fg = c.dark3 },
  }
end

function M.treesitter_context()
  -- https://github.com/nvim-treesitter/nvim-treesitter-context
  -- stylua: ignore
  return {
    TreesitterContext = { bg = Util.blend_bg(c.fg_gutter, 0.8) },
  }
end

function M.treesitter()
  -- https://github.com/nvim-treesitter/nvim-treesitter
  -- stylua: ignore
  local conf = {
    ["@annotation"]                 = "PreProc",
    ["@attribute"]                  = "PreProc",
    ["@boolean"]                    = "Boolean",
    ["@character"]                  = "Character",
    ["@character.printf"]           = "SpecialChar",
    ["@character.special"]          = "SpecialChar",
    ["@comment"]                    = "Comment",
    ["@comment.error"]              = { fg = c.error },
    ["@comment.hint"]               = { fg = c.hint },
    ["@comment.info"]               = { fg = c.info },
    ["@comment.note"]               = { fg = c.hint },
    ["@comment.todo"]               = { fg = c.todo },
    ["@comment.warning"]            = { fg = c.warning },
    ["@constant"]                   = "Constant",
    ["@constant.builtin"]           = "Special",
    ["@constant.macro"]             = "Define",
    ["@constructor"]                = { fg = c.magenta }, -- For constructor calls and definitions: '= { }' in Lua, and Java constructors.
    ["@constructor.tsx"]            = { fg = c.blue1 },
    ["@diff.delta"]                 = "DiffChange",
    ["@diff.minus"]                 = "DiffDelete",
    ["@diff.plus"]                  = "DiffAdd",
    ["@function"]                   = "Function",
    ["@function.builtin"]           = "Special",
    ["@function.call"]              = "@function",
    ["@function.macro"]             = "Macro",
    ["@function.method"]            = "Function",
    ["@function.method.call"]       = "@function.method",
    ["@keyword"]                    = { fg = c.purple, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
    ["@keyword.conditional"]        = "Conditional",
    ["@keyword.coroutine"]          = "@keyword",
    ["@keyword.debug"]              = "Debug",
    ["@keyword.directive"]          = "PreProc",
    ["@keyword.directive.define"]   = "Define",
    ["@keyword.exception"]          = "Exception",
    ["@keyword.function"]           = { fg = c.magenta, style = opts.styles.functions }, -- For keywords used to define a function.
    ["@keyword.import"]             = "Include",
    ["@keyword.operator"]           = "@operator",
    ["@keyword.repeat"]             = "Repeat",
    ["@keyword.return"]             = "@keyword",
    ["@keyword.storage"]            = "StorageClass",
    ["@label"]                      = { fg = c.blue }, -- For labels: 'label:' in C and ':label:' in Lua.
    ["@markup"]                     = "@none",
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = "Macro",
    ["@markup.environment.name"]    = "Type",
    ["@markup.heading"]             = "Title",
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg = c.teal },
    ["@markup.link.label"]          = "SpecialChar",
    ["@markup.link.label.symbol"]   = "Identifier",
    ["@markup.link.url"]            = "Underlined",
    ["@markup.list"]                = { fg = c.blue5 }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.green1 }, -- For brackets and parens.
    ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.blue }, -- For brackets and parens.
    ["@markup.math"]                = "Special",
    ["@markup.raw"]                 = "String",
    ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.blue },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = "Directory",
    ["@module.builtin"]             = { fg = c.red }, -- Variable names that are defined by the languages, like 'this' or 'self'.
    ["@namespace.builtin"]          = "@variable.builtin",
    ["@none"]                       = {},
    ["@number"]                     = "Number",
    ["@number.float"]               = "Float",
    ["@operator"]                   = { fg = c.blue5 }, -- For any operator: '+', but also '->' and '*' in C.
    ["@property"]                   = { fg = c.green1 },
    ["@punctuation.bracket"]        = { fg = c.fg_dark }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.blue5 }, -- For delimiters ie: '.'
    ["@punctuation.special"]        = { fg = c.blue5 }, -- For special symbols (e.g. '{}' in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.orange }, -- For special symbols (e.g. '{}' in string interpolation)
    ["@string"]                     = "String",
    ["@string.documentation"]       = { fg = c.yellow },
    ["@string.escape"]              = { fg = c.magenta }, -- For escape characters within a string.
    ["@string.regexp"]              = { fg = c.blue6 }, -- For regexes.
    ["@tag"]                        = "Label",
    ["@tag.attribute"]              = "@property",
    ["@tag.delimiter"]              = "Delimiter",
    ["@tag.delimiter.tsx"]          = { fg = Util.blend_bg(c.blue, 0.7) },
    ["@tag.tsx"]                    = { fg = c.red },
    ["@tag.javascript"]             = { fg = c.red },
    ["@type"]                       = "Type",
    ["@type.builtin"]               = { fg = Util.blend_bg(c.blue1, 0.8) },
    ["@type.definition"]            = "Typedef",
    ["@type.qualifier"]             = "@keyword",
    ["@variable"]                   = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.red }, -- Variable names that are defined by the languages, like 'this' or 'self'.
    ["@variable.member"]            = { fg = c.green1 }, -- For fields.
    ["@variable.parameter"]         = { fg = c.yellow }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.yellow, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
  }
  for i, color in ipairs(c.rainbow) do
    conf["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
  end
  return conf
end

function M.trouble()
  -- https://github.com/folke/trouble.nvim
  -- stylua: ignore
  return {
    TroubleText   = { fg = c.fg_dark },
    TroubleCount  = { fg = c.magenta, bg = c.fg_gutter },
    TroubleNormal = { fg = c.fg, bg = c.bg_sidebar },
  }
end

function M.vimwiki()
  -- https://github.com/vimwiki/vimwiki
  -- stylua: ignore
  local conf = {
    VimwikiLink       = { fg = c.blue, bg = c.none },
    VimwikiHeaderChar = { fg = c.yellow, bg = c.none },
    VimwikiHR         = { fg = c.yellow, bg = c.none },
    VimwikiList       = { fg = c.orange, bg = c.none },
    VimwikiTag        = { fg = c.green, bg = c.none },
    VimwikiMarkers    = { fg = c.blue, bg = c.none },
  }
  for i, color in ipairs(c.rainbow) do
    conf["VimwikiHeader" .. i] = { fg = color, bg = c.none, bold = true }
  end
  return conf
end

function M.which_key()
  -- https://github.com/folke/which-key.nvim
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.magenta },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal    = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.dark5 },
  }
end

function M.yanky()
  -- https://github.com/gbprod/yanky.nvim
  -- stylua: ignore
  return {
    YankyPut    = "Search",
    YankyYanked = "IncSearch",
  }
end


--------------------
M.groups = {
    -- M.base(),
    -- M.aerial(),
    -- M.ale(),
    -- M.alpha(),
    -- M.barbar(),
    -- M.blink(),
    -- M.bufferline(),
    -- M.cmp(),
    -- M.dap(),
    -- M.dashboard(),
    -- M.delimiters_rainbow(),
    -- M.flash(),
    -- M.fzf(),
    -- M.gitgutter(),
    -- M.gitsigns(),
    -- M.glyphs(),
    -- M.grug_far(),
    -- M.headlines(),
    -- M.hop(),
    -- M.illuminate(),
    -- M.indent_blankline(),
    -- M.indentmini(),
    -- M.kind(),
    -- M.lazy(),
    -- M.leap(),
    -- M.lspsaga(),
    -- M.markdown_render()
    -- M.mini_animate(),
    -- M.mini_clue(),
    -- M.mini_completion(),
    -- M.mini_cursorword(),
    -- M.mini_deps(),
    -- M.mini_diff(),
    -- M.mini_files(),
    -- M.mini_hipatterns(),
    -- M.mini_icons(),
    -- M.mini_indentscope(),
    -- M.mini_jump(),
    -- M.mini_map(),
    -- M.mini_notify(),
    -- M.mini_operators(),
    -- M.mini_pick(),
    -- M.mini_starter(),
    -- M.mini_surround(),
    -- M.mini_tabline(),
    -- M.mini_test(),
    -- M.mini_trailspace(),
    -- M.navic(),
    -- M.neogit(),
    -- M.neotest(),
    -- M.neotree(),
    -- M.noice(),
    -- M.notify(),
    -- M.nvimtree(),
    -- M.octo(),
    -- M.scrollbar(),
    -- M.snacks(),
    -- M.sneak(),
    -- M.supermaven(),
    -- M.telescope(),
    -- M.token(),
    -- M.treesitter_context(),
    -- M.treesitter(),
    -- M.trouble(),
    -- M.vimwiki(),
    -- M.which_key(),
    -- M.yanky(),
}

function M.set_options()
    vim.cmd("highlight clear")
    vim.cmd("set termguicolors") -- Enable true colors
    vim.o.background = "dark"

    vim.g.terminal_color_0  = "#000000"
    vim.g.terminal_color_8  = "#000000" -- bright
    vim.g.terminal_color_7  = "#FFFFFF"
    vim.g.terminal_color_15 = "#FFFFFF" -- bright
    vim.g.terminal_color_1  = "#FF6E40"
    vim.g.terminal_color_9  = "#FF6E40" -- bright
    vim.g.terminal_color_2  = "#4CAF50"
    vim.g.terminal_color_10 = "#4CAF50" -- bright
    vim.g.terminal_color_3  = "#F1C40F"
    vim.g.terminal_color_11 = "#F1C40F" -- bright
    vim.g.terminal_color_4  = "#2196F3"
    vim.g.terminal_color_12 = "#2196F3" -- bright
    vim.g.terminal_color_5  = "#FF6E40"
    vim.g.terminal_color_13 = "#FF6E40" -- bright
    vim.g.terminal_color_6  = "#2196F3"
    vim.g.terminal_color_14 = "#2196F3" -- bright

    for _, data in pairs(M.groups) do
        for group, style in pairs(data) do
            -- print(0, group, vim.inspect(style)
            vim.api.nvim_set_hl(0, group, style)
        end
    end
end

return M
        