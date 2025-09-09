class Trilium {
    static filepath = './build/uaihu-trilium.css';

    static template(uaihu) {
        return `\
/**
 * Theme Name:   Uaihu.
 * Description:  A dark theme for trillium-next.
 * Version:      1.0
 * Author:       Iván Ramos
 * Author Mail:  iardoru@gmail.com
 * Author URI:   
 * License:      MIT
 * License URI:  http://www.opensource.org/licenses/mit-license.php
 
 * Inspired by
 * ----
 * - https://github.com/cwilliams5/Midnight-Trilium-Dark-Mode
 * - https://github.com/TriliumNext/Trilium/blob/main/apps/client/src/stylesheets/theme-dark.css
 
 * Requirements
 * ----
 * - https://github.com/rsms/inter
 * - https://github.com/be5invis/Iosevka
 */

@import url(https://rsms.me/inter/inter.css);
@import url(https://cdn.jsdelivr.net/npm/firacode@6.2.0/distr/fira_code.css);

:root {
    /**
     * Design System
     * ----
     */
    --fonts-inter: Inter;
    --fonts-iosevka: Iosevka Custom;

    --color-black-06060c: 6, 6, 12;        /* #06060c */   /* Code */
    --color-black-070707: 7, 7, 7;         /* #070707 */
    --color-black-121212: 18, 18, 18;      /* #121212 */
    --color-brown-413616: 65, 54, 22;      /* #413616 */
    --color-brown-b08631: 176, 134, 49;    /* #b08631 */
    --color-gray-1f1f1f: 31, 31, 31;       /* #1f1f1f */
    --color-gray-222222: 34, 34, 34;       /* #222222 */
    --color-gray-314151: 49, 65, 81;       /* #314151 */   /* Code */
    --color-gray-333333: 51, 51, 51;       /* #333333 */
    --color-gray-444444: 68, 68, 68;       /* #444444 */
    --color-gray-888888: 136, 136, 136;    /* #888888 */
    --color-gray-8e9091: 142, 144, 145;    /* #8e9091 */   /* Code */
    --color-gray-aaaaaa: 170, 170, 170;    /* #aaaaaa */
    --color-gray-cccccc: 204, 204, 204;    /* #cccccc */
    --color-gray-dddddd: 221, 221, 221;    /* #dddddd */
    --color-gray-dedede: 222, 222, 222;    /* #dedede */
    --color-green-266909: 38, 105, 9;      /* #266909 */
    --color-green-2ecc71: 46, 204, 113;    /* #2ecc71 */   /* Code */
    --color-green-37a500: 55, 165, 0;      /* #37a500 */
    --color-orange-ffa500: 255, 165, 0;    /* #ffa500 */
    --color-red-ef5350: 239, 83, 80;       /* #ef5350 */
    --color-red-f06292: 255, 123, 114;     /* #ff7b72 */   /* Code */
    --color-red-fab38e: 250, 179, 142;     /* #fab38e */   /* Code */
    --color-red-ffccbc: 255, 204, 188;     /* #ffccbc */   /* Code */
    --color-white-ffffff: 255, 255, 255;   /* #ffffff */   /* Code */
    --color-yellow-ffc107: 255, 193, 7;    /* #ffc107 */   /* Code */
    --color-yellow-ffca28: 255, 202, 40;   /* #ffca28 */
    


    /**
     * Trillium Next
     * ----
     */
    --accented-background-color: rgb(var(--color-brown-b08631));
    --active-item-background-color: rgb(var(--color-orange-ffa500));
    --active-item-text-color: rgb(var(--color-gray-dddddd));
    --active-tab-background-color: rgb(var(--color-brown-b08631));
    --active-tab-hover-background-color: rgb(var(--color-orange-ffa500));
    --active-tab-text-color: rgb(var(--color-gray-dddddd));
    --button-background-color: transparent;
    --button-border-color: rgb(var(--color-gray-cccccc));
    --button-border-radius: 0px;
    --button-disabled-background-color: rgb(var(--color-gray-222222));
    --button-text-color: currentColor;
    --detail-font-family: var(--fonts-iosevka);
    --detail-font-size: normal;
    --hover-item-background-color: rgb(var(--color-orange-ffa500)); 
    --hover-item-text-color: rgb(var(--color-gray-dedede));
    --inactive-tab-background-color: rgb(var(--color-gray-333333));
    --inactive-tab-hover-background-color: rgb(var(--color-orange-ffa500));
    --inactive-tab-text-color: rgb(var(--color-gray-aaaaaa));
    --input-background-color: rgb(var(--color-gray-333333));
    --input-text-color: rgb(var(--color-gray-cccccc));
    --launcher-pane-background-color: rgb(var(--color-gray-1f1f1f));
    --launcher-pane-text-color: rgb(var(--color-gray-aaaaaa));
    --left-pane-background-color: rgb(var(--color-black-070707));
    --left-pane-text-color: rgb(var(--color-gray-dedede));
    --link-color: rgb(var(--color-yellow-ffca28));
    --main-background-color: rgb(var(--color-black-121212));
    --main-border-color: rgb(var(--color-gray-aaaaaa)); 
    --main-font-family: var(--fonts-iosevka);
    --main-font-size: normal;
    --main-text-color: rgb(var(--color-gray-dedede));
    --menu-background-color: rgb(var(--color-gray-222222));
    --menu-text-color: rgb(var(--color-gray-dedede));
    --mermaid-theme: dark;
    --modal-backdrop-color: rgb(var(--color-gray-444444));
    --modal-background-color: rgb(var(--color-gray-333333));
    --monospace-font-family: var(--fonts-iosevka);
    --monospace-font-size: normal;
    --more-accented-background-color: rgb(var(--color-orange-ffa500));
    --muted-text-color: rgb(var(--color-gray-aaaaaa));
    --primary-button-background-color: rgb(var(--color-gray-888888));
    --primary-button-border-color: rgb(var(--color-gray-888888));
    --primary-button-text-color: rgb(var(--color-white-ffffff));
    --scrollbar-border-color: rgb(var(--color-gray-888888));
    --theme-style: dark;
    --tooltip-background-color: rgb(var(--color-gray-333333));
    --tree-font-family: var(--fonts-iosevka);
    --tree-font-size: normal;
}


/**
 * Overrides
 * --------------------

 * Sidebar
 * ----
 */
#launcher-pane .button-widget:hover {
    color: rgba(var(--color-white-ffffff), 1) !important;
}
#launcher-pane .right-dropdown-widget button:hover {
    color: rgba(var(--color-white-ffffff), 1) !important;
}

/**
 * Tree List
 * ----
 */
#ft-id-1 .fancytree-node:hover {
    background-color:#b08631;
    color: rgb(var(--color-white-ffffff)) !important;
    border: 1px solid #ffa500 !important;
}
#ft-id-1 .fancytree-active {
    background-color: #b08631 !important;
    border: 1px solid #ffa500 !important;
}
.tree-floating-button:hover {
    background-color:rgb(var(--color-orange-ffa500)) !important;
    color: rgb(var(--color-white-ffffff)) !important;
}

/**
 * Panels
 * ----
 */
.note-split {
    max-width: 100% !important;
}
#center-pane {
    margin-left: 0.5em !important;
    margin-right: 0em !important;
}

/**
 * Tabs
 * ----
 */
.note-tab-wrapper {
    border-radius: 0 !important;
}
.note-tab[active] .note-tab-wrapper {
    border: 1px solid rgb(var(--color-orange-ffa5001)) !important;   
}
.note-tab[active] .note-tab-wrapper:hover {
    border: 1px solid rgb(var(--color-white-ffffff)) !important;
    color: rgb(var(--color-white-ffffff)) !important;
}
/* .note-tab:not([active]) .note-tab-wrapper {} */
.note-tab:not([active]) .note-tab-wrapper:hover {
    border: 1px solid rgb(var(--color-white-ffffff)) !important;
    color: rgb(var(--color-white-ffffff)) !important;
}

/**
 * Content
 * ----
 */
#center-pane .component.scrolling-container {
    background-color: unset !important;
}

/**
 * Properties
 * ----
 */
.basic-properties-widget {
    display: grid !important;
    grid-template-columns: repeat(auto-fit, minmax(210px, max-content))  !important;
}

/**
 * Attributes
 * ----
 */
.promoted-attributes-container {
    display: grid !important;
    grid-template-columns: repeat(auto-fit, minmax(400px, max-content))  !important;
}
.promoted-attribute-cell {
    margin: 0 4px !important;
}
.promoted-attribute-cell .input-group {
    margin: 0 !important;
}

/**
 * Similar Notes
 * ----
 */
.similar-notes-wrapper a {
    font-size: 1rem !important;
    color: rgb(var(--color-white-ffffff)) !important;
    border: 1px dotted rgb(var(--color-green-37a500)) !important;
    border-radius: 0 !important;
    background-color: rgb(var(--color-green-266909)) !important;
}
.similar-notes-wrapper a:hover {
    background-color: rgb(var(--color-green-37a500)) !important;
}

/**
 * Include Notes
 * ----
 */
.include-note{
    border-radius: 0 !important;
    background-color: rgb(var(--color-gray-1f1f1f)) !important;
}

/**
 * Link
 * ----
 * FIXME:
 * Not enought specificity
 */
.note-detail .note-detail-editable-text a[href^="http://"],
.note-detail .note-detail-editable-text a[href^="https://"] {
    cursor: pointer !important;
}

/**
 * Backlinks
 * ----
 */
.backlinks-items {
    background-color: rgb(var(--color-black-121212)) !important;
    color: rgb(var(--color-gray-dedede)) !important;
    border: 1px solid rgb(var(--color-white-ffffff)) !important;
}

/**
 * Search
 * ----
 */
.ck-find-and-replace-form__find .ck-labeled-field-view .ck-labeled-field-view__input-wrapper label.ck-label {
    color: rgb(var(--color-gray-dedede)) !important;
    background-color: rgb(var(--color-brown-b08631)) !important;
}

/**
 * Selection
 * ----
 */
::selection,
::-webkit-selection {
    color: rgb(var(--color-white-ffffff)) !important;
    background: rgba(var(--color-green-37a500), 0.6) !important;
}

/**
 * Table
 * ----
 */
table thead {
    background-color: rgb(var(--color-green-266909));
}
table tbody {
    background-color: #242424;
}
table + figcaption {
    padding: 2px !important;
    font-size: 1.2rem !important;
    color: rgb(var(--color-white-ffffff)) !important;
    background-color: rgb(var(--color-green-37a500)) !important;
}

/**
 * Tree
 * ----
 */
.tree .fancytree-node {
    border-radius: 0;
    margin: 2px 0px;
}
/**
 * - Nesting
 */
.tree > ul > li > ul > li {
    border-top: 2px solid rgb(var(--color-gray-1f1f1f));
}
.tree > ul > li > ul > li > .fancytree-node {
    height: 28px !important;
    padding: 0px 4px;
}
.tree > ul > li > ul > li > ul > li .fancytree-node {
    height: 28px !important;
    padding: 0px 4px;
}
/**
 * - Rows
 */
.tree .fancytree-custom-icon {
    font-size: 1em;
}
.tree .fancytree-node:not(.fancytree-loading) .fancytree-expander::before {
    margin-right: 0px;
}
.tree .fancytree-title {
    top: 0px;
}
/**
 * - Protected
 */
span.fancytree-node.protected > span.fancytree-custom-icon,
span.fancytree-node.protected > span.fancytree-custom-icon + .fancytree-title {
    color: rgb(var(--color-red-ef5350));
    filter: unset;
}
span.fancytree-node.protected:hover > span.fancytree-custom-icon,
span.fancytree-node.protected:hover > span.fancytree-custom-icon + .fancytree-title,
span.fancytree-node.protected.fancytree-active > span.fancytree-custom-icon,
span.fancytree-node.protected.fancytree-active > span.fancytree-custom-icon + .fancytree-title {
    color: rgb(var(--color-white-ffffff));
}

/**
 * Tooltip
 * ----
 */
.tooltip .tooltip-inner {
    border: 1px solid rgb(var(--color-yellow-ffc107)) !important;
    border-radius: 0 !important;
    background-color: rgb(var(--color-black-070707)) !important;
    box-shadow: none !important;
}

/**
 * Input
 * ----
 */
.form-select,
.form-control,
.input-group-text {
    border-radius: 0 !important;
}
.options-section .input-group-text {
    background-color: rgb(var(--color-green-266909)) !important;
}

/**
 * Book
 * ----
 */
.note-book-card {
    border-radius: unset !important;
    border: unset !important;
    background-color: rgb(var(--color-brown-413616)) !important;
}
.note-book-card:hover,
.note-book-card.expanded {
    border: unset !important;
    outline: 2px solid rgb(var(--color-brown-b08631)) !important;
}
.note-book-header .rendered-note-attributes {
    display: none;
}



/**
 * Floating Buttons
 * ----
 */
.floating-buttons .bx:not(.btn, .button-widget) {
    height: 24px;
    width: 24px;
}
.floating-buttons button {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0 !important;
    width: 40px;
    height: 40px;
    border-radius: 0 !important;
    background-color: rgb(var(--color-black-121212)) !important;
    cursor: pointer !important;
}
.floating-buttons button:hover {
    padding: 0 !important;
    border: 1px solid var(--button-border-color) !important;
}



/**
 * CKeditor
 * ----

    * Toolbar
    * ----
    */
/* .ck.ck-toolbar {} */

/**
 * Highlights
 * ----
 */
.ck.ck-button.ck-on {
    background-color:rgb(var(--color-orange-ffa500)) !important;
    color: rgb(var(--color-white-ffffff)) !important;
    border: 1px solid rgb(var(--color-white-ffffff)) !important;  
}
.ck-find-result {
    color: #000 !important;
}
.ck-find-result_selected {
    color: #000 !important;
}

/**
 * Table
 * ----
 */
.ck-content figure.table:not(.layout-table) > table {
    width: auto !important;
}
.ck-content table .ck-editor__nested-editable:not(.ck-editor__editable_selected):focus {
    font-weight: bold;
    background: rgb(var(--color-brown-b08631)) !important;
}
.ck-content table .ck-editor__nested-editable:not(.ck-editor__editable_selected):focus a {
    color: rgb(var(--color-white-ffffff));
}

/**
 * Table
 * ----
 */
.ck-balloon-panel .ck-toolbar_floating {
    background-color: rgb(var(--color-black-070707)) !important;
}
.ck-balloon-panel[class*="arrow_n"]::after {
    border-color: transparent transparent rgb(var(--color-black-070707)) transparent !important;
}



/**
 * Code
 * ----
 * Trilium uses Code Mirror
 * 
 * https://codemirror.net/6/demo/theme.html
 * https://github.com/codemirror/CodeMirror/blob/master/theme/abcdef.css
 * https://github.com/codemirror/CodeMirror/blob/master/theme/material-darker.css

 * Mappings
 * ----
 * NOTE:
 * This is not an official conversion list
 * I mapped these by hand from what could observe 
 * Syntax
 *   .cm-atom      -> 
 *   .cm-attribute -> .ͼ1j, .ͼw
 *   .cm-bracket   -> .ͼ10
 *   .cm-builtin   -> .ͼ1a, .ͼr, .ͼp
 *   .cm-comment   -> .ͼ1g
 *   .cm-def       -> 
 *   .cm-error     -> 
 *   .cm-header    -> 
 *   .cm-keyword   -> .ͼ17, .ͼq
 *   .cm-line      -> 
 *   .cm-link      -> 
 *   .cm-meta      -> .ͼ1c
 *   .cm-number    -> .ͼ14
 *   .cm-operator  -> .ͼ11, .ͼs, .ͼy,
 *   .cm-property  -> .ͼu
 *   .cm-qualifier -> 
 *   .cm-string    -> .ͼ12, .ͼ1d, .ͼw
 *   .cm-tag       -> .ͼ1i
 *   .cm-variable  -> .ͼ13, .ͼ19, ͼt 
 * Editor
 * ----
 */
.cm-editor {
    border-radius: 0px !important;
    background-color: rgb(var(--color-black-070707)) !important;
}
.cm-editor.cm-focused {
    outline: 1px solid rgb(var(--color-yellow-ffc107)) !important;
    box-shadow: none !important;
}
.cm-editor .cm-cursor {
    border-left: 1px solid var(--color-white-ffffff);
}
/* .cm-editor .cm-gutters {} */
.cm-editor .cm-lineNumbers {
    color: rgb(var(--color-gray-8e9091));
}
.cm-editor .cm-activeLine {
    background: rgb(var(--color-gray-314151));
}
.cm-editor .cm-activeMatch {
    outline: none;
    border-radius: 0;
    background-color: unset;
}
.cm-editor .cm-searchMatch {
    outline: 2px solid rgb(var(--color-green-37a500));
    border-radius: 0;
    background-color: rgb(var(--color-green-266909));
}

/**
 * Atom
 * ----
 */
.cm-editor .cm-atom {
    color: var(--color-white-ffffff);
}

/**
 * Attribute
 * ----
 */
.cm-editor .ͼ1j,
.cm-editor .ͼw,
.cm-editor .cm-attribute {
    color: rgb(var(--color-yellow-ffc107));
}

/**
 * Builtin
 * ----
 */
.cm-editor .ͼ1a,
.cm-editor .ͼp,
.cm-editor .ͼr,
.cm-editor .cm-builtin {
    color: rgb(var(--color-yellow-ffc107));
}

/**
 * Brackets
 * ----
 */
.cm-editor .ͼ10,
.cm-editor .cm-bracket {
    color: rgb(var(--color-gray-888888));
}

/**
 * Comments
 * ----
 */
.cm-editor .ͼ1g,
.cm-editor .cm-comment {
    font-style: normal;
    color: rgb(var(--color-gray-8e9091));
}

/**
 * Def
 * ----
 */
.cm-editor .cm-def {
    color: rgb(var(--color-white-ffffff));
}

/**
 * Error
 * ----
 */
.cm-editor .cm-error {
    color: rgb(var(--color-red-f06292));
}

/**
 * Header
 * ----
 */
/* .cm-editor .cm-header {} */

/**
 * Keyword
 * ----
 */
.cm-editor .ͼ17,
.cm-editor .ͼq,
.cm-editor .cm-keyword {
    font-weight: bold;
    color: rgb(var(--color-yellow-ffc107));
}

/**
 * Link
 * ----
 */
/* .cm-editor .cm-link {} */

/**
 * Meta
 * ----
 */
.cm-editor .ͼ1c,
.cm-editor .cm-meta {
    color: rgb(var(--color-green-2ecc71));
}

/**
 * Number
 * ----
 */
.cm-editor .ͼ14,
.cm-editor .cm-number {
    color: rgb(var(--color-white-ffffff));
}

/**
 * Operator
 * ----
 */
.cm-editor .ͼ11,
.cm-editor .ͼs,
.cm-editor .ͼy,
.cm-editor .cm-operator {
    color: rgb(var(--color-yellow-ffc107));
}

/**
 * Property
 * ----
 */
.cm-editor .ͼu,
.cm-editor .cm-property {
    color: rgb(var(--color-yellow-ffc107));
}

/**
 * Qualifier
 * ----
 */
.cm-editor .cm-qualifier {
    color: rgb(var(--color-white-ffffff));
}

/**
 * String
 * ----
 */
.cm-editor .ͼ12,
.cm-editor .ͼ1d,
.cm-editor .ͼw,
.cm-editor .cm-string {
    color: rgb(var(--color-white-ffffff));
}

/**
 * Tag
 * ----
 */
.cm-editor .ͼ1i,
.cm-editor .cm-tag {
    color: rgb(var(--color-yellow-ffc107));
}

/**
 * Variable
 * ----
 */
.cm-editor .ͼ13,
.cm-editor .ͼ19,
.cm-editor .ͼt,
.cm-editor .cm-variable {
    color: rgb(var(--color-white-ffffff));
}



/**
 * Zen Mode
 * --------------------
 * Enable the optional Zen Mode
 * Shortcut: ALT + Z
 *
 * https://github.com/cwilliams5/Midnight-Trilium-Dark-Mode/blob/main/zenmode.js
 */
/* body.zen-mode #launcher-pane, body.zen-mode #left-pane, body.zen-mode .title-bar-buttons {
    display:none !important;
} */
body.zen-mode #launcher-pane, body.zen-mode #left-pane {
    display: none !important;
    height: 0 !important;
    width: 0 !important;
}
body.zen-mode .title-bar-buttons, body.zen-mode .tab-row-widget, body.zen-mode .title-row, body.zen-mode .ribbon-container, body.zen-mode .gutter, body.zen-mode #rest-pane > div:nth-child(1) {
    visibility: hidden !important;
    height: 0 !important;
    width: 0 !important;
}
body.zen-mode #center-pane {
    margin-left: 0em !important;
    margin-right: 0em !important;
}
        `
    }
}

export default Trilium;
