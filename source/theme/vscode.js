import { resolve } from "@std/path";

class VSCode {
    static filepath = './source/bundle/vscode/themes/uaihu.json';

    static template(uaihu) {
        return `\
/**
 * Theme Name:   Uaihu.
 * Description:  A dark theme for vscode.
 * Version:      1.0
 * Author:       Iván Ramos
 * Author Mail:  iardoru@gmail.com
 * Author URI:   
 * License:      MIT
 * License URI:  http://www.opensource.org/licenses/mit-license.php
 
 * Requirements
 * ----
 * - https://github.com/be5invis/Iosevka
 */

{
    "name": "uaihu",
    "type": "dark",
    "colors": {
        "activityBar.background": "${uaihu.color.bg_main}",
        "activityBar.dropBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "activityBar.foreground": "${uaihu.color.text_wht}${uaihu.alpha.medium_high}",
        "activityBarBadge.background": "${uaihu.color.button}",
        "activityBarBadge.foreground": "${uaihu.color.text_wht}",
        "badge.background": "${uaihu.color.button}",
        "badge.foreground": "${uaihu.color.text_wht}",
        "breadcrumbPicker.background": "${uaihu.color.bg_high}",
        "button.background": "${uaihu.color.bg_high}",
        "contrastBorder": "${uaihu.color.border}",
        "debugToolBar.background": "${uaihu.color.bg_main}",
        "diffEditor.insertedTextBackground": "${uaihu.color.diff_positive}${uaihu.alpha.low}",
        "diffEditor.removedTextBackground": "${uaihu.color.diff_negative}${uaihu.alpha.low}",
        "dropdown.background": "${uaihu.color.bg_high}",
        "dropdown.listBackground": "${uaihu.color.bg_high}",
        "editor.background": "${uaihu.color.bg_main}",
        "editor.findMatchBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "editor.findMatchHighlightBackground": "${uaihu.color.separator}${uaihu.alpha.medium_low}",
        "editor.findRangeHighlightBackground": "${uaihu.color.separator}${uaihu.alpha.low}",
        "editor.hoverHighlightBackground": "${uaihu.color.separator}${uaihu.alpha.medium_low}",
        "editor.lineHighlightBackground": "${uaihu.color.bg_high}${uaihu.alpha.medium_low}",
        "editor.rangeHighlightBackground": "${uaihu.color.bg_high}${uaihu.alpha.medium}",
        "editor.selectionBackground": "${uaihu.color.selection}${uaihu.alpha.medium_high}",
        "editor.selectionHighlightBackground": "${uaihu.color.selection}${uaihu.alpha.medium_low}",
        "editor.wordHighlightBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "editor.wordHighlightStrongBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "editorBracketMatch.background": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "editorBracketMatch.border": "${uaihu.color.border}${uaihu.alpha.none}",
        "editorCodeLens.foreground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "editorCursor.background": "${uaihu.color.bg_main}",
        "editorCursor.foreground": "${uaihu.color.symbols}",
        "editorError.foreground": "${uaihu.color.diff_negative}",
        "editorGroup.border": "${uaihu.color.border}",
        "editorGroup.dropBackground": "${uaihu.color.separator}${uaihu.alpha.medium_low}",
        "editorGroupHeader.tabsBackground": "${uaihu.color.bg_main}",
        "editorGutter.addedBackground": "${uaihu.color.diff_positive}${uaihu.alpha.medium_high}",
        "editorGutter.deletedBackground": "${uaihu.color.diff_negative}${uaihu.alpha.medium_high}",
        "editorGutter.modifiedBackground": "${uaihu.color.diff_modified}${uaihu.alpha.medium_high}",
        "editorIndentGuide.activeBackground": "${uaihu.color.symbols}",
        "editorIndentGuide.background": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "editorLineNumber.activeForeground": "${uaihu.color.text_wht}${uaihu.alpha.medium}",
        "editorLineNumber.foreground": "${uaihu.color.text_wht}${uaihu.alpha.low}",
        "editorOverviewRuler.addedForeground": "${uaihu.color.diff_positive}${uaihu.alpha.medium}",
        "editorOverviewRuler.border": "${uaihu.color.border}${uaihu.alpha.medium_high}",
        "editorOverviewRuler.bracketMatchForeground": "${uaihu.color.text_wht}${uaihu.alpha.medium}",
        "editorOverviewRuler.deletedForeground": "${uaihu.color.diff_negative}${uaihu.alpha.medium}",
        "editorOverviewRuler.errorForeground": "${uaihu.color.diff_negative}${uaihu.alpha.high}",
        "editorOverviewRuler.findMatchForeground": "${uaihu.color.separator}",
        "editorOverviewRuler.modifiedForeground": "${uaihu.color.diff_modified}${uaihu.alpha.medium}",
        "editorOverviewRuler.warningForeground": "${uaihu.color.diff_positive}${uaihu.alpha.medium}",
        "editorRuler.foreground": "${uaihu.color.separator}${uaihu.alpha.medium_low}",
        "editorSuggestWidget.highlightForeground": "${uaihu.color.diff_negative}",
        "editorWarning.foreground": "${uaihu.color.diff_positive}${uaihu.alpha.medium_high}",
        "editorWidget.background": "${uaihu.color.bg_high}",
        "editorWidget.border": "${uaihu.color.bg_high}",
        "errorForeground": "${uaihu.color.diff_negative}",
        "extensionButton.prominentBackground": "${uaihu.color.diff_negative}",
        "extensionButton.prominentHoverBackground": "${uaihu.color.diff_negative}",
        "focusBorder": "${uaihu.color.border}",
        "foreground": "${uaihu.color.text_wht}",
        "gitDecoration.addedResourceForeground": "${uaihu.color.diff_positive}${uaihu.alpha.medium_high}",
        "gitDecoration.deletedResourceForeground": "${uaihu.color.diff_negative}",
        "gitDecoration.ignoredResourceForeground": "${uaihu.color.text_wht}${uaihu.alpha.medium_low}",
        "gitDecoration.modifiedResourceForeground": "${uaihu.color.diff_modified}",
        "gitDecoration.untrackedResourceForeground": "${uaihu.color.diff_positive}",
        "input.background": "${uaihu.color.bg_high}",
        "inputOption.activeBorder": "${uaihu.color.diff_negative}${uaihu.alpha.medium}",
        "inputValidation.errorBackground": "${uaihu.color.diff_negative}${uaihu.alpha.medium}",
        "inputValidation.errorBorder": "${uaihu.color.diff_negative}${uaihu.alpha.none}",
        "list.activeSelectionBackground": "${uaihu.color.selection}${uaihu.alpha.medium}",
        "list.activeSelectionForeground": "${uaihu.color.text_wht}",
        "list.dropBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "list.errorForeground": "${uaihu.color.diff_negative}${uaihu.alpha.high}",
        "list.focusBackground": "${uaihu.color.bg_high}${uaihu.alpha.medium}",
        "list.focusForeground": "${uaihu.color.text_wht}",
        "list.highlightForeground": "${uaihu.color.diff_negative}",
        "list.hoverBackground": "${uaihu.color.bg_shadow}${uaihu.alpha.medium}",
        "list.hoverForeground": "${uaihu.color.text_wht}",
        "list.inactiveFocusBackground": "${uaihu.color.bg_high}${uaihu.alpha.medium}",
        "list.inactiveSelectionBackground": "${uaihu.color.selection}${uaihu.alpha.medium_low}",
        "list.inactiveSelectionForeground": "${uaihu.color.text_wht}",
        "list.warningForeground": "${uaihu.color.diff_positive}${uaihu.alpha.medium_high}",
        "panelTitle.activeBorder": "${uaihu.color.diff_negative}",
        "peekView.border": "${uaihu.color.border}",
        "peekViewEditor.background": "${uaihu.color.bg_high}",
        "peekViewEditor.matchHighlightBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "peekViewResult.background": "${uaihu.color.bg_high}",
        "peekViewResult.matchHighlightBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "peekViewResult.selectionBackground": "${uaihu.color.selection}${uaihu.alpha.medium}",
        "peekViewTitle.background": "${uaihu.color.bg_high}",
        "pickerGroup.foreground": "${uaihu.color.diff_negative}${uaihu.alpha.high}",
        "progressBar.background": "${uaihu.color.diff_negative}",
        "scrollbar.shadow": "${uaihu.color.bg_shadow}",
        "scrollbarSlider.activeBackground": "${uaihu.color.separator}${uaihu.alpha.medium}",
        "scrollbarSlider.background": "${uaihu.color.separator}${uaihu.alpha.low}",
        "scrollbarSlider.hoverBackground": "${uaihu.color.separator}${uaihu.alpha.medium_low}",
        "selection.background": "${uaihu.color.selection}${uaihu.alpha.medium}",
        "sideBar.background": "${uaihu.color.bg_main}",
        "sideBar.dropBackground": "${uaihu.color.separator}${uaihu.alpha.medium_low}",
        "sideBar.foreground": "${uaihu.color.text_wht}${uaihu.alpha.medium}",
        "sideBarSectionHeader.background": "${uaihu.color.bg_main}",
        "sideBarSectionHeader.foreground": "${uaihu.color.text_wht}${uaihu.alpha.medium_high}",
        "statusBar.background": "${uaihu.color.bg_main}",
        "statusBar.debuggingBackground": "${uaihu.color.diff_modified}",
        "statusBar.debuggingForeground": "${uaihu.color.text_blk}",
        "statusBar.foreground": "${uaihu.color.text_wht}${uaihu.alpha.medium}",
        "statusBar.noFolderBackground": "${uaihu.color.bg_main}",
        "statusBarItem.hoverBackground": "${uaihu.color.bg_shadow}",
        "statusBarItem.prominentBackground": "${uaihu.color.bg_shadow}",
        "statusBarItem.prominentHoverBackground": "${uaihu.color.separator}",
        "statusBarItem.remoteBackground": "${uaihu.color.button}",
        "statusBarItem.remoteForeground": "${uaihu.color.text_wht}",
        "tab.activeBackground": "${uaihu.color.bg_main}",
        "tab.activeBorder": "${uaihu.color.symbols}",
        "tab.border": "${uaihu.color.border}${uaihu.alpha.none}",
        "tab.inactiveBackground": "${uaihu.color.bg_main}",
        "terminal.ansiBlue": "${uaihu.ansi.blue}",
        "terminal.ansiBrightBlue": "${uaihu.ansi.blue}",
        "terminal.ansiBrightCyan": "${uaihu.ansi.cyan}",
        "terminal.ansiBrightGreen": "${uaihu.ansi.green}",
        "terminal.ansiBrightMagenta": "${uaihu.ansi.magenta}",
        "terminal.ansiBrightRed": "${uaihu.ansi.red}",
        "terminal.ansiBrightYellow": "${uaihu.ansi.yellow}",
        "terminal.ansiCyan": "${uaihu.ansi.cyan}",
        "terminal.ansiGreen": "${uaihu.ansi.green}",
        "terminal.ansiMagenta": "${uaihu.ansi.magenta}",
        "terminal.ansiRed": "${uaihu.ansi.red}",
        "terminal.ansiWhite": "${uaihu.ansi.white}",
        "terminal.ansiYellow": "${uaihu.ansi.yellow}",
        "terminal.foreground": "${uaihu.color.text_wht}",
        "terminal.selectionBackground": "${uaihu.color.selection}${uaihu.alpha.medium_low}",
        "terminalCursor.background": "${uaihu.color.text_blk}",
        "terminalCursor.foreground": "${uaihu.color.symbols}",
        "textLink.activeForeground": "${uaihu.color.diff_negative}",
        "textLink.foreground": "${uaihu.color.diff_negative}",
        "titleBar.activeBackground": "${uaihu.color.bg_main}",
        "titleBar.inactiveBackground": "${uaihu.color.bg_main}",
        "walkThrough.embeddedEditorBackground": "${uaihu.color.bg_high}",
        "widget.shadow": "${uaihu.color.bg_shadow}",
    },
    "semanticHighlighting": true,
    "tokenColors": [
        {
            "scope": "comment",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.medium_low}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": "constant",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "constant.character.escape",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "entity.name",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "entity.name.function",
            "settings": {
                "foreground": "${uaihu.color.symbols}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "entity.name.tag",
            "settings": {
                "foreground": "${uaihu.color.symbols}${uaihu.alpha.high}",
                "fontStyle": "normal"
            }
        },
        {
            "scope": [
                "entity.name.type",
                "storage.type.cs"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "entity.other.attribute-name",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}",
                "fontStyle": "normal"
            }
        },
        {
            "scope": "entity.other.inherited-class",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "entity.other.attribute-name.id",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": [
                "entity.other.attribute-name.pseudo-element",
                "entity.other.attribute-name.pseudo-class"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": [
                "entity.name.variable",
                "variable"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "keyword",
            "settings": {
                "foreground": "${uaihu.color.symbols}${uaihu.alpha.high}",
                "fontStyle": "normal"
            }
        },
        {
            "scope": "keyword.operator",
            "settings": {
                "foreground": "${uaihu.color.symbols}"
            }
        },
        {
            "scope": [
                "keyword.operator.new",
                "keyword.operator.expression",
                "keyword.operator.logical",
                "keyword.operator.delete"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "keyword.other.unit",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "markup.quote",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.medium_high}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": [
                "markup.heading",
                "entity.name.section"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "markup.bold",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}",
                "fontStyle": "bold"
            }
        },
        {
            "scope": "markup.italic",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": [
                "markup.inline.raw",
                "markup.fenced_code.block"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "markup.underline.link",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "storage",
            "settings": {
                "foreground": "${uaihu.color.symbols}${uaihu.alpha.high}",
                "fontStyle": "normal"
            }
        },
        {
            "scope": [
                "string.quoted",
                "string.template"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "string.regexp",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "string.other.link",
            "settings": {
                "foreground": "${uaihu.color.diff_positive}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "support",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "support.function",
            "settings": {
                "foreground": "${uaihu.color.symbols}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "support.variable",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": [
                "support.type.property-name",
                "meta.object-literal.key",
                "variable.other.property.js"
            ],
            "settings": {
                "foreground": "${uaihu.color.symbols}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "support.type.property-name.css",
            "settings": {
                "foreground": "${uaihu.color.symbols}"
            }
        },
        {
            "scope": [
                "variable.language"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}",
                "fontStyle": "italic"
            }
        },
        {
            "scope": "variable.parameter",
            "settings": {
                "fontStyle": "italic"
            }
        },
        {
            "scope": "string.template meta.embedded",
            "settings": {
                "foreground": "${uaihu.color.text_wht}"
            }
        },
        {
            "scope": "punctuation.definition.tag",
            "settings": {
                "foreground": "${uaihu.color.symbols}${uaihu.alpha.medium_high}",
                "fontStyle": "normal"
            }
        },
        {
            "scope": "punctuation.separator",
            "settings": {
                "foreground": "${uaihu.color.text_wht}"
            }
        },
        {
            "scope": [
                "punctuation.definition.template-expression",
                "punctuation.quasi.element"
            ],
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "punctuation.section.embedded",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        },
        {
            "scope": "punctuation.definition.list",
            "settings": {
                "foreground": "${uaihu.color.text_wht}${uaihu.alpha.high}"
            }
        }
    ]
}
        `
    }

    static bundle() {
        const encoder = new TextEncoder();
        const decoder = new TextDecoder();
        Deno.stdout.writeSync(encoder.encode('Bundling vscode... '));
        const process = new Deno.Command('deno', {
            cwd: './source/bundle/vscode',
            args: [
                'run',
                '--allow-env',
                '--allow-sys',
                '--allow-run',
                `--allow-read=${resolve('./build/uaihu-vscode.vsix')}`,
                `--allow-read=${resolve('./source/bundle/vscode/')}`,
                `--allow-read=${resolve('./source/bundle/vscode/package.nls.json')}`,
                `--allow-read=${resolve('./source/bundle/vscode/.pnp.cjs')}`,
                `--allow-read=${resolve('./source/bundle/vscode/.yarn')}`,
                `--allow-read=${resolve('./source/bundle/vscode/.yarnrc')}`,
                `--allow-read=${resolve('./source/bundle/vscode/.yarnrc.yaml')}`,
                `--allow-read=${resolve('./source/bundle/vscode/.yarnrc..yaml')}`,
                `--allow-read=${resolve('./source/bundle/vscode/yarn.lock')}`,
                `--allow-write=${resolve('./build/')}`,
                `--allow-read=\\\\?\\${resolve('./source/bundle/vscode/@secretlint/secretlint-formatter-sarif')}`,
                `--allow-read=\\\\?\\${resolve('./source/bundle/vscode/.vscodeignore')}`,
                `--allow-read=\\\\?\\${resolve('./source/bundle/vscode/LICENSE')}`,
                `--allow-read=\\\\?\\${resolve('./source/bundle/vscode/package.json')}`,
                `--allow-read=\\\\?\\${resolve('./source/bundle/vscode/README.md')}`,
                `--allow-read=\\\\?\\${resolve('./source/bundle/vscode/themes/uaihu.json')}`,
                `--allow-write=\\\\?\\${resolve('./build/uaihu-vscode.vsix')}`,
                'npm:@vscode/vsce',
                'package',
                '--allow-missing-repository',
                '--skip-license',
                '--out',
                resolve('./build/uaihu-vscode.vsix'),
            ],
        });
        const status  = process.outputSync();
        if (status.code == 1) {
            console.log(decoder.decode(status.stderr));
            return;
        }
        Deno.stdout.writeSync(encoder.encode('done\n'));
    }
}

export default VSCode;
