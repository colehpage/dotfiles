local M = {}

function M.init()
    local palette = require "theme.palette"
    local lush = require "lush"
    local hsl = lush.hsl

    vim.o.background = "dark"

    local color = {}

    for key, value in pairs(palette) do
        color[key] = hsl(value)
    end

    vim.g.terminal_color_0 = palette.bg -- Black
    vim.g.terminal_color_1 = palette.red -- Red
    vim.g.terminal_color_2 = palette.green -- Green
    vim.g.terminal_color_3 = palette.yellow -- Yellow
    vim.g.terminal_color_4 = palette.blue -- Blue
    vim.g.terminal_color_5 = palette.magenta -- Magenta
    vim.g.terminal_color_6 = palette.cyan -- Cyan
    vim.g.terminal_color_7 = palette.white -- White
    vim.g.terminal_color_8 = palette.brightBlack -- Bright Black
    vim.g.terminal_color_9 = palette.brightRed -- Bright Red
    vim.g.terminal_color_10 = palette.brightGreen -- Bright Green
    vim.g.terminal_color_11 = palette.brightYellow -- Bright Yellow
    vim.g.terminal_color_12 = palette.brightBlue -- Bright Blue
    vim.g.terminal_color_13 = palette.brightMagenta -- Bright Magenta
    vim.g.terminal_color_14 = palette.brightCyan -- Bright Cyan
    vim.g.terminal_color_15 = palette.brightWhite -- Bright White

    -- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
    -- support an annotation like the following. Consult your server documentation.
    ---@diagnostic disable: undefined-global
    local theme = lush(function(fn)
        local sym = fn.sym
        return {SpecialKey {
            fg = "#414868"
        }, -- SpecialKey     xxx guifg=#414868
        EndOfBuffer {
            fg = "#1d1b26"
        }, -- EndOfBuffer    xxx guifg=#1d1b26
        NeoTreeEndOfBuffer {EndOfBuffer}, -- NeoTreeEndOfBuffer xxx links to EndOfBuffer
        TermCursor {
            gui = "reverse"
        }, -- TermCursor     xxx cterm=reverse gui=reverse
        NonText {
            fg = "#414868"
        }, -- NonText        xxx guifg=#414868
        Directory {
            fg = "#7aa2f7"
        }, -- Directory      xxx guifg=#7aa2f7
        NeoTreeDirectoryName {Directory}, -- NeoTreeDirectoryName xxx links to Directory
        NeoTreeDirectoryIcon {Directory}, -- NeoTreeDirectoryIcon xxx links to Directory
        NvimTreeFolderName {Directory}, -- NvimTreeFolderName xxx links to Directory
        ErrorMsg {
            fg = "#f44747"
        }, -- ErrorMsg       xxx guifg=#f44747
        NvimInvalidSpacing {ErrorMsg}, -- NvimInvalidSpacing xxx links to ErrorMsg
        IncSearch {
            bg = "#d4daf2",
            fg = "#414868"
        }, -- IncSearch      xxx guifg=#414868 guibg=#d4daf2
        CurSearch {IncSearch}, -- CurSearch      xxx links to IncSearch
        Search {
            bg = "#3b4261",
            fg = "#c0caf5"
        }, -- Search         xxx guifg=#c0caf5 guibg=#3b4261
        Substitute {Search}, -- Substitute     xxx links to Search
        NeoTreePreview {Search}, -- NeoTreePreview xxx links to Search
        MoreMsg {
            fg = "seagreen",
            gui = "bold"
        }, -- MoreMsg        xxx ctermfg=121 gui=bold guifg=SeaGreen
        CopilotAnnotation {MoreMsg}, -- CopilotAnnotation xxx links to MoreMsg
        ModeMsg {
            fg = "#7aa2f7",
            gui = "bold"
        }, -- ModeMsg        xxx cterm=bold gui=bold guifg=#7aa2f7
        LineNr {
            fg = "#3b4261"
        }, -- LineNr         xxx guifg=#3b4261
        LineNrAbove {LineNr}, -- LineNrAbove    xxx links to LineNr
        LineNrBelow {LineNr}, -- LineNrBelow    xxx links to LineNr
        CursorLineNr {
            fg = "#d4daf2"
        }, -- CursorLineNr   xxx guifg=#d4daf2
        Question {
            fg = "#7aa2f7"
        }, -- Question       xxx guifg=#7aa2f7
        StatusLine {
            gui = "bold,reverse"
        }, -- StatusLine     xxx cterm=bold,reverse gui=bold,reverse
        MsgSeparator {StatusLine}, -- MsgSeparator   xxx links to StatusLine
        NeoTreeStatusLine {StatusLine}, -- NeoTreeStatusLine xxx links to StatusLine
        StatusLineNC {
            bg = "#7aa2f7"
        }, -- StatusLineNC   xxx guibg=#7aa2f7
        NeoTreeStatusLineNC {StatusLineNC}, -- NeoTreeStatusLineNC xxx links to StatusLineNC
        WinSeparator {
            fg = "#414868",
            gui = "bold"
        }, -- WinSeparator   xxx cterm=bold gui=bold guifg=#414868
        NeoTreeWinSeparator {WinSeparator}, -- NeoTreeWinSeparator xxx links to WinSeparator
        Title {
            fg = "#7aa2f7",
            gui = "bold"
        }, -- Title          xxx cterm=bold gui=bold guifg=#7aa2f7
        FloatTitle {Title}, -- FloatTitle     xxx links to Title
        Visual {
            bg = "#3b4261"
        }, -- Visual         xxx guibg=#3b4261
        NvimSurroundHighlight {Visual}, -- NvimSurroundHighlight xxx links to Visual
        WarningMsg {
            fg = "#d79a42"
        }, -- WarningMsg     xxx guifg=#d79a42
        WildMenu {
            bg = "#314163"
        }, -- WildMenu       xxx guibg=#314163
        Folded {
            fg = "#7aa2f7"
        }, -- Folded         xxx guifg=#7aa2f7
        FoldColumn {
            bg = "#1d1b26",
            fg = "#4d526b"
        }, -- FoldColumn     xxx guifg=#4d526b guibg=#1d1b26
        CursorLineFold {FoldColumn}, -- CursorLineFold xxx links to FoldColumn
        DiffAdd {
            bg = "#4b5f50"
        }, -- DiffAdd        xxx guibg=#4b5f50
        sym "@text.diff.add" {DiffAdd}, -- @text.diff.add xxx links to DiffAdd
        DiffChange {
            bg = "#394b70"
        }, -- DiffChange     xxx guibg=#394b70
        SpectreSearch {DiffChange}, -- SpectreSearch  xxx links to DiffChange
        DiffDelete {
            bg = "#644047"
        }, -- DiffDelete     xxx guibg=#644047
        SpectreReplace {DiffDelete}, -- SpectreReplace xxx links to DiffDelete
        sym "@text.diff.delete" {DiffDelete}, -- @text.diff.delete xxx links to DiffDelete
        DiffText {
            bg = "#c53b53"
        }, -- DiffText       xxx guibg=#c53b53
        SignColumn {
            bg = "#1d1b26",
            fg = "#3b4261"
        }, -- SignColumn     xxx guifg=#3b4261 guibg=#1d1b26
        CursorLineSign {SignColumn}, -- CursorLineSign xxx links to SignColumn
        NeoTreeSignColumn {SignColumn}, -- NeoTreeSignColumn xxx links to SignColumn
        Conceal {
            fg = "#bb9af7"
        }, -- Conceal        xxx guifg=#bb9af7
        sym "@conceal" {Conceal}, -- @conceal       xxx links to Conceal
        SpellBad {
            sp = "#f44747",
            gui = "undercurl"
        }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=#f44747
        SpellCap {
            sp = "#d79a42",
            gui = "undercurl"
        }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=#d79a42
        SpellRare {
            sp = "#1abc9c",
            gui = "undercurl"
        }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=#1abc9c
        SpellLocal {
            sp = "#7aa2f7",
            gui = "undercurl"
        }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=#7aa2f7
        Pmenu {
            bg = "#1f2335"
        }, -- Pmenu          xxx guibg=#1f2335
        PmenuKind {Pmenu}, -- PmenuKind      xxx links to Pmenu
        PmenuExtra {Pmenu}, -- PmenuExtra     xxx links to Pmenu
        PmenuSel {
            bg = "#2f354e"
        }, -- PmenuSel       xxx guibg=#2f354e
        PmenuKindSel {PmenuSel}, -- PmenuKindSel   xxx links to PmenuSel
        PmenuExtraSel {PmenuSel}, -- PmenuExtraSel  xxx links to PmenuSel
        PmenuSbar {
            bg = "#9da1b0"
        }, -- PmenuSbar      xxx guibg=#9da1b0
        PmenuThumb {
            bg = "#3b4261"
        }, -- PmenuThumb     xxx guibg=#3b4261
        TabLine {
            bg = "#414868",
            fg = "#3b4261"
        }, -- TabLine        xxx guifg=#3b4261 guibg=#414868
        TabLineSel {
            bg = "#7aa2f7",
            fg = "#222332"
        }, -- TabLineSel     xxx guifg=#222332 guibg=#7aa2f7
        TabLineFill {
            bg = "#222332"
        }, -- TabLineFill    xxx guibg=#222332
        CursorColumn {
            bg = "#202437"
        }, -- CursorColumn   xxx guibg=#202437
        CursorLine {
            bg = "#202437"
        }, -- CursorLine     xxx guibg=#202437
        NeoTreeCursorLine {CursorLine}, -- NeoTreeCursorLine xxx links to CursorLine
        ColorColumn {
            bg = "#414868"
        }, -- ColorColumn    xxx guibg=#414868
        QuickFixLine {
            gui = "bold"
        }, -- QuickFixLine   xxx cterm=bold gui=bold
        Whitespace {
            fg = "#3b4261"
        }, -- Whitespace     xxx guifg=#3b4261
        NormalNC {
            bg = "#1d1b26",
            fg = "#c0caf5"
        }, -- NormalNC       xxx guifg=#c0caf5 guibg=#1d1b26
        NormalFloat {
            bg = "#1f2335",
            fg = "#c0caf5"
        }, -- NormalFloat    xxx guifg=#c0caf5 guibg=#1f2335
        NeoTreeFloatNormal {NormalFloat}, -- NeoTreeFloatNormal xxx links to NormalFloat
        FloatBorder {
            bg = "#1f2335",
            fg = "#7aa2f7"
        }, -- FloatBorder    xxx guifg=#7aa2f7 guibg=#1f2335
        WinBar {
            gui = "bold"
        }, -- WinBar         xxx cterm=bold gui=bold
        WinBarNC {WinBar}, -- WinBarNC       xxx links to WinBar
        Cursor {
            bg = "#202437",
            fg = "#0c0e15"
        }, -- Cursor         xxx guifg=#0c0e15 guibg=#202437
        lCursor {
            bg = "#202437",
            fg = "#0c0e15"
        }, -- lCursor        xxx guifg=#0c0e15 guibg=#202437
        Normal {
            bg = "#1d1b26",
            fg = "#c0caf5"
        }, -- Normal         xxx guifg=#c0caf5 guibg=#1d1b26
        NvimSpacing {Normal}, -- NvimSpacing    xxx links to Normal
        ZenBg {Normal}, -- ZenBg          xxx links to Normal
        FloatShadow {
            bg = "black",
            blend = 80
        }, -- FloatShadow    xxx guibg=Black blend=80
        FloatShadowThrough {
            bg = "black",
            blend = 100
        }, -- FloatShadowThrough xxx guibg=Black blend=100
        RedrawDebugNormal {
            gui = "reverse"
        }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
        RedrawDebugClear {
            bg = "yellow"
        }, -- RedrawDebugClear xxx ctermbg=11 guibg=Yellow
        RedrawDebugComposed {
            bg = "green"
        }, -- RedrawDebugComposed xxx ctermbg=10 guibg=Green
        RedrawDebugRecompose {
            bg = "red"
        }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=Red
        Error {
            fg = "#f44747"
        }, -- Error          xxx guifg=#f44747
        NvimInvalid {Error}, -- NvimInvalid    xxx links to Error
        Todo {
            bg = "#dec76e",
            fg = "#1d1b26"
        }, -- Todo           xxx guifg=#1d1b26 guibg=#dec76e
        sym "@text.todo" {Todo}, -- @text.todo     xxx links to Todo
        String {
            fg = "#9ece6a"
        }, -- String         xxx guifg=#9ece6a
        sym "@string" {String}, -- @string        xxx links to String
        NvimString {String}, -- NvimString     xxx links to String
        SpectreBody {String}, -- SpectreBody    xxx links to String
        sym "@string.regex" {String}, -- @string.regex  xxx links to String
        Constant {
            fg = "#e08f68"
        }, -- Constant       xxx guifg=#e08f68
        Number {Constant}, -- Number         xxx links to Constant
        Boolean {Constant}, -- Boolean        xxx links to Constant
        Float {Constant}, -- Float          xxx links to Constant
        Character {
            fg = "#7dcfff"
        }, -- Character      xxx guifg=#7dcfff
        sym "@character" {Character}, -- @character     xxx links to Character
        Function {
            fg = "#7aa2f7"
        }, -- Function       xxx guifg=#7aa2f7
        sym "@function" {Function}, -- @function      xxx links to Function
        sym "@method" {Function}, -- @method        xxx links to Function
        sym "@method.call" {Function}, -- @method.call   xxx links to Function
        Identifier {
            fg = "#f7768e"
        }, -- Identifier     xxx guifg=#f7768e
        Label {Identifier}, -- Label          xxx links to Identifier
        sym "@field" {Identifier}, -- @field         xxx links to Identifier
        sym "@variable" {Identifier}, -- @variable      xxx links to Identifier
        sym "@namespace" {Identifier}, -- @namespace     xxx links to Identifier
        NvimIdentifier {Identifier}, -- NvimIdentifier xxx links to Identifier
        sym "@identifier" {Identifier}, -- @identifier    xxx links to Identifier
        Conditional {
            fg = "#bb9af7"
        }, -- Conditional    xxx guifg=#bb9af7
        sym "@conditional" {Conditional}, -- @conditional   xxx links to Conditional
        Statement {
            fg = "#bb9af7"
        }, -- Statement      xxx guifg=#bb9af7
        Repeat {
            fg = "#bb9af7"
        }, -- Repeat         xxx guifg=#bb9af7
        sym "@repeat" {Repeat}, -- @repeat        xxx links to Repeat
        Operator {
            fg = "#7dcfff"
        }, -- Operator       xxx guifg=#7dcfff
        sym "@operator" {Operator}, -- @operator      xxx links to Operator
        NvimAssignment {Operator}, -- NvimAssignment xxx links to Operator
        NvimOperator {Operator}, -- NvimOperator   xxx links to Operator
        Keyword {
            fg = "#bb9af7"
        }, -- Keyword        xxx guifg=#bb9af7
        sym "@keyword" {Keyword}, -- @keyword       xxx links to Keyword
        SpectreFile {Keyword}, -- SpectreFile    xxx links to Keyword
        sym "@keyword.function" {Keyword}, -- @keyword.function xxx links to Keyword
        Exception {
            fg = "#bb9af7"
        }, -- Exception      xxx guifg=#bb9af7
        sym "@exception" {Exception}, -- @exception     xxx links to Exception
        Include {
            fg = "#bb9af7"
        }, -- Include        xxx guifg=#bb9af7
        sym "@include" {Include}, -- @include       xxx links to Include
        PreProc {
            fg = "#7dcfff"
        }, -- PreProc        xxx guifg=#7dcfff
        Define {PreProc}, -- Define         xxx links to PreProc
        Macro {PreProc}, -- Macro          xxx links to PreProc
        PreCondit {PreProc}, -- PreCondit      xxx links to PreProc
        sym "@preproc" {PreProc}, -- @preproc       xxx links to PreProc
        StorageClass {
            fg = "#bb9af7"
        }, -- StorageClass   xxx guifg=#bb9af7
        sym "@storageclass" {StorageClass}, -- @storageclass  xxx links to StorageClass
        Type {
            fg = "#dec76e"
        }, -- Type           xxx guifg=#dec76e
        Structure {Type}, -- Structure      xxx links to Type
        Typedef {Type}, -- Typedef        xxx links to Type
        sym "@type" {Type}, -- @type          xxx links to Type
        NvimNumberPrefix {Type}, -- NvimNumberPrefix xxx links to Type
        NvimOptionSigil {Type}, -- NvimOptionSigil xxx links to Type
        sym "@type.builtin" {Type}, -- @type.builtin  xxx links to Type
        Tag {
            fg = "#f7768e"
        }, -- Tag            xxx guifg=#f7768e
        sym "@tag" {Tag}, -- @tag           xxx links to Tag
        Special {
            fg = "#e08f68"
        }, -- Special        xxx guifg=#e08f68
        SpecialComment {Special}, -- SpecialComment xxx links to Special
        Debug {Special}, -- Debug          xxx links to Special
        sym "@constant.builtin" {Special}, -- @constant.builtin xxx links to Special
        sym "@constructor" {Special}, -- @constructor   xxx links to Special
        SpecialChar {
            fg = "#7dcfff"
        }, -- SpecialChar    xxx guifg=#7dcfff
        sym "@string.escape" {SpecialChar}, -- @string.escape xxx links to SpecialChar
        sym "@string.special" {SpecialChar}, -- @string.special xxx links to SpecialChar
        sym "@character.special" {SpecialChar}, -- @character.special xxx links to SpecialChar
        NvimRegister {SpecialChar}, -- NvimRegister   xxx links to SpecialChar
        NvimStringSpecial {SpecialChar}, -- NvimStringSpecial xxx links to SpecialChar
        NeoTreeBufferNumber {SpecialChar}, -- NeoTreeBufferNumber xxx links to SpecialChar
        NeoTreeFilterTerm {SpecialChar}, -- NeoTreeFilterTerm xxx links to SpecialChar
        Delimiter {
            fg = "#d4daf2"
        }, -- Delimiter      xxx guifg=#d4daf2
        sym "@punctuation" {Delimiter}, -- @punctuation   xxx links to Delimiter
        NvimParenthesis {Delimiter}, -- NvimParenthesis xxx links to Delimiter
        NvimColon {Delimiter}, -- NvimColon      xxx links to Delimiter
        NvimComma {Delimiter}, -- NvimComma      xxx links to Delimiter
        NvimArrow {Delimiter}, -- NvimArrow      xxx links to Delimiter
        DiagnosticError {
            fg = "#f44747"
        }, -- DiagnosticError xxx guifg=#f44747
        DiagnosticFloatingError {DiagnosticError}, -- DiagnosticFloatingError xxx links to DiagnosticError
        DiagnosticSignError {DiagnosticError}, -- DiagnosticSignError xxx links to DiagnosticError
        DiagnosticWarn {
            fg = "#d79a42"
        }, -- DiagnosticWarn xxx guifg=#d79a42
        DiagnosticFloatingWarn {DiagnosticWarn}, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
        DiagnosticSignWarn {DiagnosticWarn}, -- DiagnosticSignWarn xxx links to DiagnosticWarn
        DiagnosticInfo {
            fg = "#7aa2f7"
        }, -- DiagnosticInfo xxx guifg=#7aa2f7
        DiagnosticFloatingInfo {DiagnosticInfo}, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
        DiagnosticSignInfo {DiagnosticInfo}, -- DiagnosticSignInfo xxx links to DiagnosticInfo
        DiagnosticHint {
            fg = "#1abc9c"
        }, -- DiagnosticHint xxx guifg=#1abc9c
        DiagnosticFloatingHint {DiagnosticHint}, -- DiagnosticFloatingHint xxx links to DiagnosticHint
        DiagnosticSignHint {DiagnosticHint}, -- DiagnosticSignHint xxx links to DiagnosticHint
        DiagnosticOk {
            fg = "lightgreen"
        }, -- DiagnosticOk   xxx ctermfg=10 guifg=LightGreen
        DiagnosticVirtualTextOk {DiagnosticOk}, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
        DiagnosticFloatingOk {DiagnosticOk}, -- DiagnosticFloatingOk xxx links to DiagnosticOk
        DiagnosticSignOk {DiagnosticOk}, -- DiagnosticSignOk xxx links to DiagnosticOk
        DiagnosticUnderlineError {
            sp = "#f44747",
            gui = "undercurl"
        }, -- DiagnosticUnderlineError xxx cterm=undercurl gui=undercurl guisp=#f44747
        DiagnosticUnderlineWarn {
            sp = "#d79a42",
            gui = "undercurl"
        }, -- DiagnosticUnderlineWarn xxx cterm=undercurl gui=undercurl guisp=#d79a42
        DiagnosticUnderlineInfo {
            sp = "#7aa2f7",
            gui = "undercurl"
        }, -- DiagnosticUnderlineInfo xxx cterm=undercurl gui=undercurl guisp=#7aa2f7
        DiagnosticUnderlineHint {
            sp = "#1abc9c",
            gui = "undercurl"
        }, -- DiagnosticUnderlineHint xxx cterm=undercurl gui=undercurl guisp=#1abc9c
        DiagnosticUnderlineOk {
            sp = "lightgreen",
            gui = "underline"
        }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=LightGreen
        DiagnosticVirtualTextError {
            bg = "#1d1b26",
            fg = "#f44747"
        }, -- DiagnosticVirtualTextError xxx guifg=#f44747 guibg=#1d1b26
        DiagnosticVirtualTextWarn {
            bg = "#1d1b26",
            fg = "#d79a42"
        }, -- DiagnosticVirtualTextWarn xxx guifg=#d79a42 guibg=#1d1b26
        DiagnosticVirtualTextInfo {
            bg = "#1d1b26",
            fg = "#7aa2f7"
        }, -- DiagnosticVirtualTextInfo xxx guifg=#7aa2f7 guibg=#1d1b26
        DiagnosticVirtualTextHint {
            bg = "#1d1b26",
            fg = "#1abc9c"
        }, -- DiagnosticVirtualTextHint xxx guifg=#1abc9c guibg=#1d1b26
        DiagnosticDeprecated {
            sp = "red",
            gui = "strikethrough"
        }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=Red
        Comment {
            fg = "#4d526b",
            gui = "italic"
        }, -- Comment        xxx cterm=italic gui=italic guifg=#4d526b
        DiagnosticUnnecessary {Comment}, -- DiagnosticUnnecessary xxx links to Comment
        sym "@comment" {Comment}, -- @comment       xxx links to Comment
        SpectreHeader {Comment}, -- SpectreHeader  xxx links to Comment
        SpectreDir {Comment}, -- SpectreDir     xxx links to Comment
        SpectreBorder {Comment}, -- SpectreBorder  xxx links to Comment
        sym "@comment.documentation.go" {Comment}, -- @comment.documentation.go xxx links to Comment
        sym "@comment.documentation.lua" {Comment}, -- @comment.documentation.lua xxx links to Comment
        sym "@comment.documentation.tsx" {Comment}, -- @comment.documentation.tsx xxx links to Comment
        sym "@comment.documentation.typescript" {Comment}, -- @comment.documentation.typescript xxx links to Comment
        sym "@comment.documentation.javascript" {Comment}, -- @comment.documentation.javascript xxx links to Comment
        sym "@text.literal" {
            fg = "#9ece6a"
        }, -- @text.literal  xxx guifg=#9ece6a
        sym "@text.reference" {
            fg = "#7aa2f7"
        }, -- @text.reference xxx guifg=#7aa2f7
        sym "@text.title" {
            fg = "#f7768e",
            gui = "bold"
        }, -- @text.title    xxx cterm=bold gui=bold guifg=#f7768e
        sym "@text.uri" {
            fg = "#9ece6a",
            gui = "underline"
        }, -- @text.uri      xxx cterm=underline gui=underline guifg=#9ece6a
        Underlined {
            fg = "#bb9af7",
            gui = "underline"
        }, -- Underlined     xxx cterm=underline gui=underline guifg=#bb9af7
        sym "@text.underline" {
            fg = "#9ece6a",
            gui = "underline"
        }, -- @text.underline xxx cterm=underline gui=underline guifg=#9ece6a
        sym "@constant" {
            fg = "#dec76e"
        }, -- @constant      xxx guifg=#dec76e
        sym "@function.builtin" {
            fg = "#7dcfff"
        }, -- @function.builtin xxx guifg=#7dcfff
        sym "@lsp.typemod.method.defaultLibrary" {sym "@function.builtin"}, -- @lsp.typemod.method.defaultLibrary xxx links to @function.builtin
                sym "@lsp.typemod.function.defaultLibrary" {sym "@function.builtin"}, -- @lsp.typemod.function.defaultLibrary xxx links to @function.builtin
                sym "@parameter" {
            fg = "#f7768e",
            gui = "italic"
        }, -- @parameter     xxx cterm=italic gui=italic guifg=#f7768e
        sym "@lsp.type.parameter" {sym "@parameter"}, -- @lsp.type.parameter xxx links to @parameter
        sym "@property" {
            fg = "#7dcfff"
        }, -- @property      xxx guifg=#7dcfff
        sym "@lsp.type.enumMember" {sym "@property"}, -- @lsp.type.enumMember xxx links to @property
        sym "@lsp.type.property" {sym "@property"}, -- @lsp.type.property xxx links to @property
        sym "@lsp.type.struct" {sym "@property"}, -- @lsp.type.struct xxx links to @property
        sym "@lsp.type.namespace" {
            fg = "#dec76e"
        }, -- @lsp.type.namespace xxx guifg=#dec76e
        MatchParen {
            gui = "bold"
        }, -- MatchParen     xxx cterm=bold gui=bold
        NvimInternalError {
            bg = "red",
            fg = "red"
        }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
        NvimFigureBrace {NvimInternalError}, -- NvimFigureBrace xxx links to NvimInternalError
        NvimSingleQuotedUnknownEscape {NvimInternalError}, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
                NvimInvalidSingleQuotedUnknownEscape {NvimInternalError}, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
                TelescopeResultsNumber {}, -- TelescopeResultsNumber xxx cterm= gui=
        TelescopeResultsIdentifier {}, -- TelescopeResultsIdentifier xxx cterm= gui=
        TelescopeResultsLineNr {}, -- TelescopeResultsLineNr xxx cterm= gui=
        TelescopeResultsVariable {}, -- TelescopeResultsVariable xxx cterm= gui=
        TelescopeResultsStruct {}, -- TelescopeResultsStruct xxx cterm= gui=
        TelescopeResultsOperator {}, -- TelescopeResultsOperator xxx cterm= gui=
        TelescopeResultsMethod {}, -- TelescopeResultsMethod xxx cterm= gui=
        TelescopeResultsFunction {}, -- TelescopeResultsFunction xxx cterm= gui=
        TelescopeResultsField {}, -- TelescopeResultsField xxx cterm= gui=
        TelescopeResultsConstant {}, -- TelescopeResultsConstant xxx cterm= gui=
        TelescopeResultsClass {}, -- TelescopeResultsClass xxx cterm= gui=
        TelescopePreviewMessageFillchar {}, -- TelescopePreviewMessageFillchar xxx cterm= gui=
        TelescopePreviewMessage {}, -- TelescopePreviewMessage xxx cterm= gui=
        TelescopePreviewNormal {}, -- TelescopePreviewNormal xxx cterm= gui=
        TelescopeNormal {
            bg = "#1f2335",
            fg = "#c0caf5"
        }, -- TelescopeNormal xxx guifg=#c0caf5 guibg=#1f2335
        TelescopePreviewDate {}, -- TelescopePreviewDate xxx cterm= gui=
        TelescopePreviewGroup {}, -- TelescopePreviewGroup xxx cterm= gui=
        TelescopePreviewUser {}, -- TelescopePreviewUser xxx cterm= gui=
        TelescopePreviewSize {}, -- TelescopePreviewSize xxx cterm= gui=
        TelescopePreviewSticky {}, -- TelescopePreviewSticky xxx cterm= gui=
        TelescopeResultsDiffUntracked {}, -- TelescopeResultsDiffUntracked xxx cterm= gui=
        TelescopePreviewHyphen {}, -- TelescopePreviewHyphen xxx cterm= gui=
        TelescopePreviewExecute {}, -- TelescopePreviewExecute xxx cterm= gui=
        TelescopePreviewWrite {}, -- TelescopePreviewWrite xxx cterm= gui=
        TelescopeResultsDiffDelete {}, -- TelescopeResultsDiffDelete xxx cterm= gui=
        TelescopePreviewRead {}, -- TelescopePreviewRead xxx cterm= gui=
        TelescopePreviewSocket {}, -- TelescopePreviewSocket xxx cterm= gui=
        TelescopePreviewLink {}, -- TelescopePreviewLink xxx cterm= gui=
        TelescopeResultsDiffAdd {}, -- TelescopeResultsDiffAdd xxx cterm= gui=
        TelescopePreviewBlock {}, -- TelescopePreviewBlock xxx cterm= gui=
        TelescopePreviewDirectory {}, -- TelescopePreviewDirectory xxx cterm= gui=
        TelescopePreviewCharDev {}, -- TelescopePreviewCharDev xxx cterm= gui=
        TelescopePreviewPipe {}, -- TelescopePreviewPipe xxx cterm= gui=
        TelescopePreviewMatch {}, -- TelescopePreviewMatch xxx cterm= gui=
        TelescopeResultsDiffChange {}, -- TelescopeResultsDiffChange xxx cterm= gui=
        TelescopePreviewLine {}, -- TelescopePreviewLine xxx cterm= gui=
        TelescopeResultsComment {}, -- TelescopeResultsComment xxx cterm= gui=
        TelescopePromptPrefix {}, -- TelescopePromptPrefix xxx cterm= gui=
        TelescopeMatching {}, -- TelescopeMatching xxx cterm= gui=
        TelescopePromptCounter {}, -- TelescopePromptCounter xxx cterm= gui=
        TelescopePreviewTitle {}, -- TelescopePreviewTitle xxx cterm= gui=
        TelescopeTitle {}, -- TelescopeTitle xxx cterm= gui=
        TelescopeBorder {
            fg = "#7aa2f7"
        }, -- TelescopeBorder xxx guifg=#7aa2f7
        TelescopeResultsTitle {}, -- TelescopeResultsTitle xxx cterm= gui=
        TelescopePromptTitle {}, -- TelescopePromptTitle xxx cterm= gui=
        TelescopePreviewBorder {}, -- TelescopePreviewBorder xxx cterm= gui=
        TelescopeResultsBorder {}, -- TelescopeResultsBorder xxx cterm= gui=
        TelescopePromptBorder {}, -- TelescopePromptBorder xxx cterm= gui=
        TelescopeResultsNormal {}, -- TelescopeResultsNormal xxx cterm= gui=
        TelescopePromptNormal {}, -- TelescopePromptNormal xxx cterm= gui=
        TelescopeMultiIcon {}, -- TelescopeMultiIcon xxx cterm= gui=
        TelescopeMultiSelection {}, -- TelescopeMultiSelection xxx cterm= gui=
        TelescopeResultsSpecialComment {}, -- TelescopeResultsSpecialComment xxx cterm= gui=
        TelescopeSelectionCaret {}, -- TelescopeSelectionCaret xxx cterm= gui=
        TelescopeSelection {}, -- TelescopeSelection xxx cterm= gui=
        DevIconDefault {
            fg = "#6d8086"
        }, -- DevIconDefault xxx ctermfg=66 guifg=#6d8086
        WindowPickerStatusLine {
            bg = "#7dcfff",
            fg = "#24283b",
            gui = "bold"
        }, -- WindowPickerStatusLine xxx cterm=bold gui=bold guifg=#24283b guibg=#7dcfff
        WindowPickerStatusLineNC {
            bg = "#7dcfff",
            fg = "#24283b",
            gui = "bold"
        }, -- WindowPickerStatusLineNC xxx cterm=bold gui=bold guifg=#24283b guibg=#7dcfff
        WindowPickerWinBar {
            bg = "#7dcfff",
            fg = "#24283b",
            gui = "bold"
        }, -- WindowPickerWinBar xxx cterm=bold gui=bold guifg=#24283b guibg=#7dcfff
        WindowPickerWinBarNC {
            bg = "#7dcfff",
            fg = "#24283b",
            gui = "bold"
        }, -- WindowPickerWinBarNC xxx cterm=bold gui=bold guifg=#24283b guibg=#7dcfff
        NeoTreeNormal {
            bg = "#1d1f2d",
            fg = "#c0caf5"
        }, -- NeoTreeNormal  xxx guifg=#c0caf5 guibg=#1d1f2d
        NeoTreeNormalNC {
            fg = "#7aa2f7"
        }, -- NeoTreeNormalNC xxx guifg=#7aa2f7
        NeoTreeFloatBorder {
            fg = "#444444"
        }, -- NeoTreeFloatBorder xxx guifg=#444444
        NeoTreeTitleBar {
            bg = "#444444"
        }, -- NeoTreeTitleBar xxx guibg=#444444
        NeoTreeMessage {
            fg = "#4c4c4c",
            gui = "italic"
        }, -- NeoTreeMessage xxx gui=italic guifg=#4c4c4c
        NeoTreeFadeText1 {
            fg = "#626262"
        }, -- NeoTreeFadeText1 xxx guifg=#626262
        NeoTreeFadeText2 {
            fg = "#444444"
        }, -- NeoTreeFadeText2 xxx guifg=#444444
        NeoTreeDotfile {
            fg = "#626262"
        }, -- NeoTreeDotfile xxx guifg=#626262
        NeoTreeHiddenByName {NeoTreeDotfile}, -- NeoTreeHiddenByName xxx links to NeoTreeDotfile
        NeoTreeWindowsHidden {NeoTreeDotfile}, -- NeoTreeWindowsHidden xxx links to NeoTreeDotfile
        NeoTreeGitIgnored {NeoTreeDotfile}, -- NeoTreeGitIgnored xxx links to NeoTreeDotfile
        NeoTreeDimText {
            fg = "#3b4261"
        }, -- NeoTreeDimText xxx guifg=#3b4261
        NeoTreeIndentMarker {NeoTreeDimText}, -- NeoTreeIndentMarker xxx links to NeoTreeDimText
        NeoTreeExpander {NeoTreeDimText}, -- NeoTreeExpander xxx links to NeoTreeDimText
        NeoTreeFileNameOpened {
            gui = "bold"
        }, -- NeoTreeFileNameOpened xxx gui=bold
        NeoTreeRootName {
            gui = "bold,italic"
        }, -- NeoTreeRootName xxx gui=bold,italic
        NeoTreeModified {
            fg = "#d7d787"
        }, -- NeoTreeModified xxx guifg=#d7d787
        NeoTreeGitAdded {
            fg = "#5faf5f"
        }, -- NeoTreeGitAdded xxx guifg=#5faf5f
        NeoTreeGitStaged {NeoTreeGitAdded}, -- NeoTreeGitStaged xxx links to NeoTreeGitAdded
        NeoTreeGitDeleted {
            fg = "#ff5900"
        }, -- NeoTreeGitDeleted xxx guifg=#ff5900
        NeoTreeGitModified {
            fg = "#d7af5f"
        }, -- NeoTreeGitModified xxx guifg=#d7af5f
        NeoTreeGitRenamed {NeoTreeGitModified}, -- NeoTreeGitRenamed xxx links to NeoTreeGitModified
        NeoTreeGitConflict {
            fg = "#ff8700",
            gui = "bold,italic"
        }, -- NeoTreeGitConflict xxx gui=bold,italic guifg=#ff8700
        NeoTreeGitUnstaged {NeoTreeGitConflict}, -- NeoTreeGitUnstaged xxx links to NeoTreeGitConflict
        NeoTreeGitUntracked {
            fg = "#ff8700",
            gui = "italic"
        }, -- NeoTreeGitUntracked xxx gui=italic guifg=#ff8700
        NeoTreeTabActive {
            gui = "bold"
        }, -- NeoTreeTabActive xxx gui=bold
        NeoTreeTabInactive {
            bg = "#141414",
            fg = "#777777"
        }, -- NeoTreeTabInactive xxx guifg=#777777 guibg=#141414
        NeoTreeTabSeparatorActive {
            fg = "#0a0a0a"
        }, -- NeoTreeTabSeparatorActive xxx guifg=#0a0a0a
        NeoTreeTabSeparatorInactive {
            bg = "#141414",
            fg = "#101010"
        }, -- NeoTreeTabSeparatorInactive xxx guifg=#101010 guibg=#141414
        NeoTreeFileStats {
            fg = "#666666"
        }, -- NeoTreeFileStats xxx guifg=#666666
        NeoTreeFileStatsHeader {
            fg = "#7f7f7f",
            gui = "bold,italic"
        }, -- NeoTreeFileStatsHeader xxx gui=bold,italic guifg=#7f7f7f
        CopilotSuggestion {
            fg = "#808080"
        }, -- CopilotSuggestion xxx ctermfg=244 guifg=#808080
        DiffviewFilePanelCounter {
            fg = "#40ffff",
            gui = "bold"
        }, -- DiffviewFilePanelCounter xxx cterm=bold gui=bold guifg=#40ffff
        DiffviewFilePanelTitle {
            fg = "#ffff60",
            gui = "bold"
        }, -- DiffviewFilePanelTitle xxx cterm=bold gui=bold guifg=#ffff60
        DiffviewSecondary {
            fg = "#ffa0a0"
        }, -- DiffviewSecondary xxx cterm= gui= guifg=#ffa0a0
        DiffviewPrimary {
            fg = "#40ffff"
        }, -- DiffviewPrimary xxx cterm= gui= guifg=#40ffff
        DiffviewDim1 {
            fg = "#80a0ff"
        }, -- DiffviewDim1   xxx cterm= gui= guifg=#80a0ff
        DiffviewFilePanelFileName {
            fg = "white"
        }, -- DiffviewFilePanelFileName xxx cterm= gui= guifg=White
        DiffviewStatusTypeChange {}, -- DiffviewStatusTypeChange xxx cterm= gui=
        diffChanged {
            fg = "#e2c08d"
        }, -- diffChanged    xxx guifg=#e2c08d
        DiffviewStatusCopied {}, -- DiffviewStatusCopied xxx cterm= gui=
        DiffviewStatusRenamed {}, -- DiffviewStatusRenamed xxx cterm= gui=
        DiffviewStatusModified {}, -- DiffviewStatusModified xxx cterm= gui=
        DiffviewStatusUntracked {}, -- DiffviewStatusUntracked xxx cterm= gui=
        diffAdded {
            fg = "#59db10"
        }, -- diffAdded      xxx guifg=#59db10
        DiffviewStatusAdded {}, -- DiffviewStatusAdded xxx cterm= gui=
        DiffviewReference {}, -- DiffviewReference xxx cterm= gui=
        DiffviewHash {}, -- DiffviewHash   xxx cterm= gui=
        DiffviewFolderSign {}, -- DiffviewFolderSign xxx cterm= gui=
        DiffviewFolderName {}, -- DiffviewFolderName xxx cterm= gui=
        DiffviewFilePanelConflicts {}, -- DiffviewFilePanelConflicts xxx cterm= gui=
        DiffviewFilePanelDeletions {}, -- DiffviewFilePanelDeletions xxx cterm= gui=
        DiffviewFilePanelInsertions {}, -- DiffviewFilePanelInsertions xxx cterm= gui=
        DiffviewFilePanelPath {}, -- DiffviewFilePanelPath xxx cterm= gui=
        DiffviewFilePanelRootPath {}, -- DiffviewFilePanelRootPath xxx cterm= gui=
        DiffviewCursorLine {}, -- DiffviewCursorLine xxx cterm= gui=
        DiffviewNormal {}, -- DiffviewNormal xxx cterm= gui=
        DiffviewDiffDelete {}, -- DiffviewDiffDelete xxx cterm= gui=
        DiffviewDiffChange {}, -- DiffviewDiffChange xxx cterm= gui=
        DiffviewStatusLineNC {}, -- DiffviewStatusLineNC xxx cterm= gui=
        DiffviewStatusLine {}, -- DiffviewStatusLine xxx cterm= gui=
        DiffviewSignColumn {}, -- DiffviewSignColumn xxx cterm= gui=
        DiffviewNonText {}, -- DiffviewNonText xxx cterm= gui=
        DiffviewReflogSelector {}, -- DiffviewReflogSelector xxx cterm= gui=
        DiffviewFilePanelSelected {}, -- DiffviewFilePanelSelected xxx cterm= gui=
        DiffviewDiffText {}, -- DiffviewDiffText xxx cterm= gui=
        DiffviewDiffAdd {}, -- DiffviewDiffAdd xxx cterm= gui=
        DiffviewStatusIgnored {}, -- DiffviewStatusIgnored xxx cterm= gui=
        DiffviewStatusBroken {}, -- DiffviewStatusBroken xxx cterm= gui=
        DiffviewWinSeparator {}, -- DiffviewWinSeparator xxx cterm= gui=
        DiffviewStatusDeleted {}, -- DiffviewStatusDeleted xxx cterm= gui=
        DiffviewStatusUnknown {}, -- DiffviewStatusUnknown xxx cterm= gui=
        DiffviewStatusUnmerged {}, -- DiffviewStatusUnmerged xxx cterm= gui=
        DiffviewEndOfBuffer {}, -- DiffviewEndOfBuffer xxx cterm= gui=
        DiffviewDiffAddAsDelete {
            bg = "#008b8b",
            fg = "#0000ff",
            gui = "bold"
        }, -- DiffviewDiffAddAsDelete xxx cterm=bold gui=bold guifg=#0000ff guibg=#008b8b
        DiffviewDiffDeleteDim {}, -- DiffviewDiffDeleteDim xxx cterm= gui=
        GitSignsAdd {
            fg = "#59db10"
        }, -- GitSignsAdd    xxx guifg=#59db10
        GitSignsChange {
            fg = "#e2c08d"
        }, -- GitSignsChange xxx guifg=#e2c08d
        sym "@parameter.builtin" {
            fg = "#d4daf2"
        }, -- @parameter.builtin xxx guifg=#d4daf2
        sym "@parameter.bash" {
            fg = "#e08f68"
        }, -- @parameter.bash xxx guifg=#e08f68
        sym "@parameter.python" {
            fg = "#f7768e",
            gui = "italic"
        }, -- @parameter.python xxx cterm=italic gui=italic guifg=#f7768e
        sym "@parameter.lua" {
            fg = "#d4daf2",
            gui = "italic"
        }, -- @parameter.lua xxx cterm=italic gui=italic guifg=#d4daf2
        sym "@function.call" {
            fg = "#7aa2f7"
        }, -- @function.call xxx guifg=#7aa2f7
        sym "@function.call.php" {
            fg = "#7dcfff"
        }, -- @function.call.php xxx guifg=#7dcfff
        sym "@function.call.cpp" {
            fg = "#7aa2f7"
        }, -- @function.call.cpp xxx guifg=#7aa2f7
        sym "@function.call.c" {
            fg = "#7aa2f7"
        }, -- @function.call.c xxx guifg=#7aa2f7
        sym "@function.call.bash" {
            fg = "#7aa2f7"
        }, -- @function.call.bash xxx guifg=#7aa2f7
        sym "@function.css" {
            fg = "#7dcfff"
        }, -- @function.css  xxx guifg=#7dcfff
        sym "@number.dockerfile" {
            fg = "#f7768e"
        }, -- @number.dockerfile xxx guifg=#f7768e
        sym "@character.c" {
            fg = "#9ece6a"
        }, -- @character.c   xxx guifg=#9ece6a
        sym "@constant.builtin.python" {
            fg = "#e08f68"
        }, -- @constant.builtin.python xxx guifg=#e08f68
        sym "@constant.gitignore" {
            fg = "#d4daf2"
        }, -- @constant.gitignore xxx guifg=#d4daf2
        sym "@constant.html" {
            fg = "#f7768e"
        }, -- @constant.html xxx guifg=#f7768e
        sym "@constant.lua" {
            fg = "#f7768e"
        }, -- @constant.lua  xxx guifg=#f7768e
        sym "@constant.php" {
            fg = "#f7768e"
        }, -- @constant.php  xxx guifg=#f7768e
        sym "@constant.bash" {
            fg = "#f7768e"
        }, -- @constant.bash xxx guifg=#f7768e
        sym "@constant.python" {
            fg = "#dec76e"
        }, -- @constant.python xxx guifg=#dec76e
        sym "@punctuation.special" {
            fg = "#7dcfff"
        }, -- @punctuation.special xxx guifg=#7dcfff
        sym "@punctuation.special.javascript" {
            fg = "#bb9af7"
        }, -- @punctuation.special.javascript xxx guifg=#bb9af7
        sym "@punctuation.special.typescript" {
            fg = "#bb9af7"
        }, -- @punctuation.special.typescript xxx guifg=#bb9af7
        sym "@punctuation.special.bash" {
            fg = "#f7768e",
            gui = "italic"
        }, -- @punctuation.special.bash xxx cterm=italic gui=italic guifg=#f7768e
        sym "@punctuation.special.vue" {
            fg = "#f5cd06"
        }, -- @punctuation.special.vue xxx guifg=#f5cd06
        sym "@punctuation.special.markdown" {
            fg = "#f7768e"
        }, -- @punctuation.special.markdown xxx guifg=#f7768e
        sym "@punctuation.bracket" {
            fg = "#f5cd06"
        }, -- @punctuation.bracket xxx guifg=#f5cd06
        sym "@punctuation.delimiter.markdown" {
            fg = "#e08f68",
            gui = "bold"
        }, -- @punctuation.delimiter.markdown xxx cterm=bold gui=bold guifg=#e08f68
        sym "@punctuation.delimiter.css" {
            fg = "#7dcfff"
        }, -- @punctuation.delimiter.css xxx guifg=#7dcfff
        sym "@comment.documentation" {
            gui = "italic"
        }, -- @comment.documentation xxx cterm=italic gui=italic
        sym "@text.quote" {
            fg = "#dec76e",
            gui = "italic"
        }, -- @text.quote    xxx cterm=italic gui=italic guifg=#dec76e
        sym "@text.strike" {
            gui = "strikethrough"
        }, -- @text.strike   xxx cterm=strikethrough gui=strikethrough
        sym "@text.emphasis" {
            fg = "#bb9af7",
            gui = "italic"
        }, -- @text.emphasis xxx cterm=italic gui=italic guifg=#bb9af7
        sym "@text.strong" {
            fg = "#e08f68",
            gui = "bold"
        }, -- @text.strong   xxx cterm=bold gui=bold guifg=#e08f68
        sym "@text.title.html" {
            fg = "#d4daf2"
        }, -- @text.title.html xxx guifg=#d4daf2
        sym "@text.html" {
            fg = "#d4daf2"
        }, -- @text.html     xxx guifg=#d4daf2
        ALEWarningSign {
            fg = "#d79a42"
        }, -- ALEWarningSign xxx guifg=#d79a42
        ALEErrorSign {
            fg = "#f44747"
        }, -- ALEErrorSign   xxx guifg=#f44747
        LspCodeLens {
            fg = "#4d526b"
        }, -- LspCodeLens    xxx guifg=#4d526b
        LspReferenceWrite {
            bg = "#3b4261"
        }, -- LspReferenceWrite xxx guibg=#3b4261
        LspReferenceRead {
            bg = "#3b4261"
        }, -- LspReferenceRead xxx guibg=#3b4261
        LspReferenceText {
            bg = "#3b4261"
        }, -- LspReferenceText xxx guibg=#3b4261
        Italic {
            gui = "italic"
        }, -- Italic         xxx cterm=italic gui=italic
        VisualNOS {
            bg = "#314163"
        }, -- VisualNOS      xxx guibg=#314163
        CursorIM {
            bg = "#202437",
            fg = "#0c0e15"
        }, -- CursorIM       xxx guifg=#0c0e15 guibg=#202437
        Foo {
            bg = "#bb9af7",
            fg = "#bb9af7"
        }, -- Foo            xxx guifg=#bb9af7 guibg=#bb9af7
        NavicIconsFile {
            fg = "#c0caf5"
        }, -- NavicIconsFile xxx guifg=#c0caf5
        CmpItemKindSnippet {
            fg = "#414868"
        }, -- CmpItemKindSnippet xxx guifg=#414868
        CmpItemKindOperator {
            fg = "#9ece6a"
        }, -- CmpItemKindOperator xxx guifg=#9ece6a
        CmpItemKindEnumMember {
            fg = "#9ece6a"
        }, -- CmpItemKindEnumMember xxx guifg=#9ece6a
        CmpItemKindTypeParameter {
            fg = "#9ece6a"
        }, -- CmpItemKindTypeParameter xxx guifg=#9ece6a
        CmpItemKindField {
            fg = "#9ece6a"
        }, -- CmpItemKindField xxx guifg=#9ece6a
        CmpItemKindProperty {
            fg = "#9ece6a"
        }, -- CmpItemKindProperty xxx guifg=#9ece6a
        CmpItemKindModule {
            fg = "#dec76e"
        }, -- CmpItemKindModule xxx guifg=#dec76e
        CmpItemKindUnit {
            fg = "#e08f68"
        }, -- CmpItemKindUnit xxx guifg=#e08f68
        CmpItemKindEnum {
            fg = "#e08f68"
        }, -- CmpItemKindEnum xxx guifg=#e08f68
        CmpItemKindEvent {
            fg = "#e08f68"
        }, -- CmpItemKindEvent xxx guifg=#e08f68
        CmpItemKindStruct {
            fg = "#e08f68"
        }, -- CmpItemKindStruct xxx guifg=#e08f68
        CmpItemKindInterface {
            fg = "#e08f68"
        }, -- CmpItemKindInterface xxx guifg=#e08f68
        CmpItemKindClass {
            fg = "#e08f68"
        }, -- CmpItemKindClass xxx guifg=#e08f68
        CmpItemKindConstructor {
            fg = "#7aa2f7"
        }, -- CmpItemKindConstructor xxx guifg=#7aa2f7
        CmpItemKindMethod {
            fg = "#7aa2f7"
        }, -- CmpItemKindMethod xxx guifg=#7aa2f7
        CmpItemKindFunction {
            fg = "#7aa2f7"
        }, -- CmpItemKindFunction xxx guifg=#7aa2f7
        CmpItemKindCopilot {
            fg = "#1abc9c"
        }, -- CmpItemKindCopilot xxx guifg=#1abc9c
        CmpItemKindValue {
            fg = "#bb9af7"
        }, -- CmpItemKindValue xxx guifg=#bb9af7
        CmpItemKindReference {
            fg = "#bb9af7"
        }, -- CmpItemKindReference xxx guifg=#bb9af7
        CmpItemKindConstant {
            fg = "#bb9af7"
        }, -- CmpItemKindConstant xxx guifg=#bb9af7
        CmpItemKindVariable {
            fg = "#bb9af7"
        }, -- CmpItemKindVariable xxx guifg=#bb9af7
        CmpItemKindKeyword {
            fg = "#7dcfff"
        }, -- CmpItemKindKeyword xxx guifg=#7dcfff
        CmpItemKindDefault {
            fg = "#d4daf2"
        }, -- CmpItemKindDefault xxx guifg=#d4daf2
        CmpItemMenu {
            fg = "#4d526b"
        }, -- CmpItemMenu    xxx guifg=#4d526b
        CmpItemAbbrMatchFuzzy {
            fg = "#7aa2f7"
        }, -- CmpItemAbbrMatchFuzzy xxx guifg=#7aa2f7
        CmpItemAbbrMatch {
            fg = "#7aa2f7"
        }, -- CmpItemAbbrMatch xxx guifg=#7aa2f7
        CmpItemAbbrDeprecated {
            fg = "#7aa2f7",
            gui = "strikethrough"
        }, -- CmpItemAbbrDeprecated xxx cterm=strikethrough gui=strikethrough guifg=#7aa2f7
        CmpItemAbbr {
            fg = "#c0caf5"
        }, -- CmpItemAbbr    xxx guifg=#c0caf5
        CmpDocumentationBorder {
            bg = "#1f2335",
            fg = "#7aa2f7"
        }, -- CmpDocumentationBorder xxx guifg=#7aa2f7 guibg=#1f2335
        CmpDocumentation {
            bg = "#1d1b26",
            fg = "#c0caf5"
        }, -- CmpDocumentation xxx guifg=#c0caf5 guibg=#1d1b26
        LightspeedUnlabeledMatch {
            fg = "#7aa2f7",
            gui = "bold"
        }, -- LightspeedUnlabeledMatch xxx cterm=bold gui=bold guifg=#7aa2f7
        LightspeedShortcut {
            bg = "#bb9af7",
            fg = "#c0caf5",
            gui = "bold,underline"
        }, -- LightspeedShortcut xxx cterm=bold,underline gui=bold,underline guifg=#c0caf5 guibg=#bb9af7
        LightspeedPendingOpArea {
            bg = "#bb9af7",
            fg = "#c0caf5"
        }, -- LightspeedPendingOpArea xxx guifg=#c0caf5 guibg=#bb9af7
        LightspeedOneCharMatch {
            bg = "#bb9af7",
            fg = "#c0caf5",
            gui = "bold"
        }, -- LightspeedOneCharMatch xxx cterm=bold gui=bold guifg=#c0caf5 guibg=#bb9af7
        LightspeedMaskedChar {
            fg = "#e08f68"
        }, -- LightspeedMaskedChar xxx guifg=#e08f68
        LightspeedLabelOverlapped {
            fg = "#bb9af7",
            gui = "underline"
        }, -- LightspeedLabelOverlapped xxx cterm=underline gui=underline guifg=#bb9af7
        LightspeedLabelDistantOverlapped {
            fg = "#9ece6a",
            gui = "underline"
        }, -- LightspeedLabelDistantOverlapped xxx cterm=underline gui=underline guifg=#9ece6a
        LightspeedLabelDistant {
            fg = "#9ece6a",
            gui = "bold,underline"
        }, -- LightspeedLabelDistant xxx cterm=bold,underline gui=bold,underline guifg=#9ece6a
        LightspeedLabel {
            fg = "#bb9af7",
            gui = "bold,underline"
        }, -- LightspeedLabel xxx cterm=bold,underline gui=bold,underline guifg=#bb9af7
        LeapLabelSecondary {
            fg = "#9ece6a",
            gui = "bold"
        }, -- LeapLabelSecondary xxx cterm=bold gui=bold guifg=#9ece6a
        LeapLabelPrimary {
            fg = "#bb9af7",
            gui = "bold"
        }, -- LeapLabelPrimary xxx cterm=bold gui=bold guifg=#bb9af7
        LeapMatch {
            bg = "#bb9af7",
            fg = "#c0caf5",
            gui = "bold"
        }, -- LeapMatch      xxx cterm=bold gui=bold guifg=#c0caf5 guibg=#bb9af7
        TSNodeKey {
            fg = "#bb9af7",
            gui = "bold"
        }, -- TSNodeKey      xxx cterm=bold gui=bold guifg=#bb9af7
        HopUnmatched {
            fg = "#414868"
        }, -- HopUnmatched   xxx guifg=#414868
        HopNextKey2 {
            fg = "#496194"
        }, -- HopNextKey2    xxx guifg=#496194
        HopNextKey1 {
            fg = "#7aa2f7",
            gui = "bold"
        }, -- HopNextKey1    xxx cterm=bold gui=bold guifg=#7aa2f7
        HopNextKey {
            fg = "#bb9af7",
            gui = "bold"
        }, -- HopNextKey     xxx cterm=bold gui=bold guifg=#bb9af7
        SneakScope {
            bg = "#182440"
        }, -- SneakScope     xxx guibg=#182440
        Sneak {
            bg = "#bb9af7",
            fg = "#202437"
        }, -- Sneak          xxx guifg=#202437 guibg=#bb9af7
        BufferlineBufferSelected {
            fg = "#d4daf2"
        }, -- BufferlineBufferSelected xxx guifg=#d4daf2
        BufferlineFill {
            bg = "#222332",
            fg = "#222332"
        }, -- BufferlineFill xxx guifg=#222332 guibg=#222332
        BufferlineIndicatorSelected {
            fg = "#e08f68"
        }, -- BufferlineIndicatorSelected xxx guifg=#e08f68
        NvimTreeFolderIcon {
            fg = "#7aa2f7"
        }, -- NvimTreeFolderIcon xxx guifg=#7aa2f7
        NvimTreeSymlink {
            fg = "#7aa2f7"
        }, -- NvimTreeSymlink xxx guifg=#7aa2f7
        NvimTreeImageFile {
            fg = "#c0caf5"
        }, -- NvimTreeImageFile xxx guifg=#c0caf5
        NvimTreeIndentMarker {
            fg = "#3b4261"
        }, -- NvimTreeIndentMarker xxx guifg=#3b4261
        NvimTreeSpecialFile {
            fg = "#f7768e",
            gui = "underline,italic"
        }, -- NvimTreeSpecialFile xxx cterm=underline,italic gui=underline,italic guifg=#f7768e
        NvimTreeOpenedFile {
            bg = "#202437"
        }, -- NvimTreeOpenedFile xxx guibg=#202437
        NvimTreeGitNew {
            fg = "#59db10"
        }, -- NvimTreeGitNew xxx guifg=#59db10
        NvimTreeGitDirty {
            fg = "#e2c08d"
        }, -- NvimTreeGitDirty xxx guifg=#e2c08d
        NvimTreeRootFolder {
            fg = "#e08f68",
            gui = "bold"
        }, -- NvimTreeRootFolder xxx cterm=bold gui=bold guifg=#e08f68
        NvimTreeNormalNC {
            bg = "#1d1f2d",
            fg = "#c0caf5"
        }, -- NvimTreeNormalNC xxx guifg=#c0caf5 guibg=#1d1f2d
        NvimTreeWinSeparator {
            bg = "#1d1f2d",
            fg = "#414868"
        }, -- NvimTreeWinSeparator xxx guifg=#414868 guibg=#1d1f2d
        NvimTreeNormal {
            bg = "#1d1f2d",
            fg = "#c0caf5"
        }, -- NvimTreeNormal xxx guifg=#c0caf5 guibg=#1d1f2d
        diffIndexLine {
            fg = "#bb9af7"
        }, -- diffIndexLine  xxx guifg=#bb9af7
        diffLine {
            fg = "#4d526b"
        }, -- diffLine       xxx guifg=#4d526b
        diffFile {
            fg = "#7aa2f7"
        }, -- diffFile       xxx guifg=#7aa2f7
        diffNewFile {
            fg = "#e08f68"
        }, -- diffNewFile    xxx guifg=#e08f68
        diffOldFile {
            fg = "#dec76e"
        }, -- diffOldFile    xxx guifg=#dec76e
        TSRainbowCyan {
            fg = "#7dcfff"
        }, -- TSRainbowCyan  xxx guifg=#7dcfff
        TSRainbowViolet {
            fg = "#cd6bcb"
        }, -- TSRainbowViolet xxx guifg=#cd6bcb
        TSRainbowBlue {
            fg = "#1c99f4"
        }, -- TSRainbowBlue  xxx guifg=#1c99f4
        TSRainbowGreen {
            fg = "#9ece6a"
        }, -- TSRainbowGreen xxx guifg=#9ece6a
        TSRainbowYellow {
            fg = "#f5cd06"
        }, -- TSRainbowYellow xxx guifg=#f5cd06
        TSRainbowOrange {
            fg = "#e08f68"
        }, -- TSRainbowOrange xxx guifg=#e08f68
        TSRainbowRed {
            fg = "#f7768e"
        }, -- TSRainbowRed   xxx guifg=#f7768e
        rainbowcol7 {
            fg = "#f5cd06"
        }, -- rainbowcol7    xxx guifg=#f5cd06
        rainbowcol6 {
            fg = "#1c99f4"
        }, -- rainbowcol6    xxx guifg=#1c99f4
        rainbowcol5 {
            fg = "#cd6bcb"
        }, -- rainbowcol5    xxx guifg=#cd6bcb
        rainbowcol4 {
            fg = "#f5cd06"
        }, -- rainbowcol4    xxx guifg=#f5cd06
        rainbowcol3 {
            fg = "#1c99f4"
        }, -- rainbowcol3    xxx guifg=#1c99f4
        rainbowcol2 {
            fg = "#cd6bcb"
        }, -- rainbowcol2    xxx guifg=#cd6bcb
        rainbowcol1 {
            fg = "#f5cd06"
        }, -- rainbowcol1    xxx guifg=#f5cd06
        cppStructure {
            fg = "#bb9af7"
        }, -- cppStructure   xxx guifg=#bb9af7
        cCharacter {
            fg = "#9ece6a"
        }, -- cCharacter     xxx guifg=#9ece6a
        phpMethodsVar {
            fg = "#f7768e"
        }, -- phpMethodsVar  xxx guifg=#f7768e
        phpIdentifier {
            fg = "#f7768e"
        }, -- phpIdentifier  xxx guifg=#f7768e
        phpLabel {
            fg = "#bb9af7"
        }, -- phpLabel       xxx guifg=#bb9af7
        phpStructure {
            fg = "#bb9af7"
        }, -- phpStructure   xxx guifg=#bb9af7
        phpSpecialFunction {
            fg = "#7dcfff"
        }, -- phpSpecialFunction xxx guifg=#7dcfff
        phpDefine {
            fg = "#bb9af7"
        }, -- phpDefine      xxx guifg=#bb9af7
        phpParen {
            fg = "#f5cd06"
        }, -- phpParen       xxx guifg=#f5cd06
        phpComparision {
            fg = "#7dcfff"
        }, -- phpComparision xxx guifg=#7dcfff
        phpVarSelector {
            fg = "#f7768e"
        }, -- phpVarSelector xxx guifg=#f7768e
        markdownBlockQuote {
            fg = "#dec76e"
        }, -- markdownBlockQuote xxx guifg=#dec76e
        markdownH5Delimiter {
            fg = "#f7768e"
        }, -- markdownH5Delimiter xxx guifg=#f7768e
        markdownH3Delimiter {
            fg = "#f7768e"
        }, -- markdownH3Delimiter xxx guifg=#f7768e
        markdownH2Delimiter {
            fg = "#f7768e"
        }, -- markdownH2Delimiter xxx guifg=#f7768e
        markdownH1Delimiter {
            fg = "#f7768e"
        }, -- markdownH1Delimiter xxx guifg=#f7768e
        markdownH6 {
            fg = "#f7768e"
        }, -- markdownH6     xxx guifg=#f7768e
        markdownH5 {
            fg = "#f7768e"
        }, -- markdownH5     xxx guifg=#f7768e
        markdownH4 {
            fg = "#f7768e"
        }, -- markdownH4     xxx guifg=#f7768e
        markdownH3 {
            fg = "#f7768e"
        }, -- markdownH3     xxx guifg=#f7768e
        markdownH2 {
            fg = "#f7768e"
        }, -- markdownH2     xxx guifg=#f7768e
        markdownH1 {
            fg = "#f7768e"
        }, -- markdownH1     xxx guifg=#f7768e
        javaParentT {
            fg = "#d4daf2"
        }, -- javaParentT    xxx guifg=#d4daf2
        javaType {
            fg = "#bb9af7"
        }, -- javaType       xxx guifg=#bb9af7
        javaFold {
            fg = "#f7768e"
        }, -- javaFold       xxx guifg=#f7768e
        sassMedia {
            fg = "#bb9af7"
        }, -- sassMedia      xxx guifg=#bb9af7
        sassProperty {
            fg = "#d4daf2"
        }, -- sassProperty   xxx guifg=#d4daf2
        sassAmpersand {
            fg = "#f7768e"
        }, -- sassAmpersand  xxx guifg=#f7768e
        sassIdChar {
            fg = "#7aa2f7"
        }, -- sassIdChar     xxx guifg=#7aa2f7
        sassId {
            fg = "#7aa2f7"
        }, -- sassId         xxx guifg=#7aa2f7
        sassClassChar {
            fg = "#7aa2f7"
        }, -- sassClassChar  xxx guifg=#7aa2f7
        Bold {
            gui = "bold"
        }, -- Bold           xxx cterm=bold gui=bold
        NeogitDiffAddHighlight {
            bg = "#202437",
            fg = "#59db10"
        }, -- NeogitDiffAddHighlight xxx guifg=#59db10 guibg=#202437
        NeogitDiffDeleteHighlight {
            bg = "#202437",
            fg = "#f53615"
        }, -- NeogitDiffDeleteHighlight xxx guifg=#f53615 guibg=#202437
        NeogitDiffContextHighlight {
            bg = "#1d1b26",
            fg = "#c0caf5"
        }, -- NeogitDiffContextHighlight xxx guifg=#c0caf5 guibg=#1d1b26
        NeogitDiffDeleteRegion {
            bg = "#1d1b26",
            fg = "#c0caf5"
        }, -- NeogitDiffDeleteRegion xxx guifg=#c0caf5 guibg=#1d1b26
        NeogitDiffDelete {
            bg = "#1d1b26",
            fg = "#f53615"
        }, -- NeogitDiffDelete xxx guifg=#f53615 guibg=#1d1b26
        NeogitDiffAddRegion {
            bg = "#1d1b26",
            fg = "#59db10"
        }, -- NeogitDiffAddRegion xxx guifg=#59db10 guibg=#1d1b26
        NeogitDiffAdd {
            bg = "#1d1b26",
            fg = "#59db10"
        }, -- NeogitDiffAdd  xxx guifg=#59db10 guibg=#1d1b26
        NeogitHunkHeaderHighlight {
            bg = "#3b4261",
            fg = "#c0caf5"
        }, -- NeogitHunkHeaderHighlight xxx guifg=#c0caf5 guibg=#3b4261
        NeogitHunkHeader {
            bg = "#3b4261",
            fg = "#c0caf5"
        }, -- NeogitHunkHeader xxx guifg=#c0caf5 guibg=#3b4261
        NeogitRemote {
            fg = "#9d7cd8"
        }, -- NeogitRemote   xxx guifg=#9d7cd8
        NeogitBranch {
            fg = "#bb9af7"
        }, -- NeogitBranch   xxx guifg=#bb9af7
        NotifyTRACEBody {
            bg = "#1f2335",
            fg = "#c0caf5"
        }, -- NotifyTRACEBody xxx guifg=#c0caf5 guibg=#1f2335
        NotifyDEBUGBody {
            bg = "#1f2335",
            fg = "#c0caf5"
        }, -- NotifyDEBUGBody xxx guifg=#c0caf5 guibg=#1f2335
        NotifyINFOBody {
            bg = "#1f2335",
            fg = "#c0caf5"
        }, -- NotifyINFOBody xxx guifg=#c0caf5 guibg=#1f2335
        NotifyWARNBody {
            bg = "#1f2335",
            fg = "#c0caf5"
        }, -- NotifyWARNBody xxx guifg=#c0caf5 guibg=#1f2335
        NotifyERRORBody {
            bg = "#1f2335",
            fg = "#c0caf5"
        }, -- NotifyERRORBody xxx guifg=#c0caf5 guibg=#1f2335
        NotifyTRACETitle {
            fg = "#9d7cd8"
        }, -- NotifyTRACETitle xxx guifg=#9d7cd8
        NotifyDEBUGTitle {
            fg = "#4d526b"
        }, -- NotifyDEBUGTitle xxx guifg=#4d526b
        NotifyINFOTitle {
            fg = "#7aa2f7"
        }, -- NotifyINFOTitle xxx guifg=#7aa2f7
        NotifyWARNTitle {
            fg = "#d79a42"
        }, -- NotifyWARNTitle xxx guifg=#d79a42
        NotifyERRORTitle {
            fg = "#f44747"
        }, -- NotifyERRORTitle xxx guifg=#f44747
        NotifyTRACEIcon {
            fg = "#9d7cd8"
        }, -- NotifyTRACEIcon xxx guifg=#9d7cd8
        NotifyDEBUGIcon {
            fg = "#4d526b"
        }, -- NotifyDEBUGIcon xxx guifg=#4d526b
        NotifyINFOIcon {
            fg = "#7aa2f7"
        }, -- NotifyINFOIcon xxx guifg=#7aa2f7
        NotifyWARNIcon {
            fg = "#d79a42"
        }, -- NotifyWARNIcon xxx guifg=#d79a42
        NotifyERRORIcon {
            fg = "#f44747"
        }, -- NotifyERRORIcon xxx guifg=#f44747
        NotifyTRACEBorder {
            bg = "#1f2335",
            fg = "#9d7cd8"
        }, -- NotifyTRACEBorder xxx guifg=#9d7cd8 guibg=#1f2335
        NotifyDEBUGBorder {
            bg = "#1f2335",
            fg = "#4d526b"
        }, -- NotifyDEBUGBorder xxx guifg=#4d526b guibg=#1f2335
        NotifyINFOBorder {
            bg = "#1f2335",
            fg = "#7aa2f7"
        }, -- NotifyINFOBorder xxx guifg=#7aa2f7 guibg=#1f2335
        NotifyWARNBorder {
            bg = "#1f2335",
            fg = "#d79a42"
        }, -- NotifyWARNBorder xxx guifg=#d79a42 guibg=#1f2335
        NotifyERRORBorder {
            bg = "#1f2335",
            fg = "#f44747"
        }, -- NotifyERRORBorder xxx guifg=#f44747 guibg=#1f2335
        LazyProgressTodo {
            fg = "#3b4261",
            gui = "bold"
        }, -- LazyProgressTodo xxx cterm=bold gui=bold guifg=#3b4261
        LazyProgressDone {
            fg = "#bb9af7",
            gui = "bold"
        }, -- LazyProgressDone xxx cterm=bold gui=bold guifg=#bb9af7
        ScrollbarMisc {
            fg = "#9d7cd8"
        }, -- ScrollbarMisc  xxx guifg=#9d7cd8
        ScrollbarMiscHandle {
            bg = "#202437",
            fg = "#9d7cd8"
        }, -- ScrollbarMiscHandle xxx guifg=#9d7cd8 guibg=#202437
        ScrollbarHint {
            fg = "#1abc9c"
        }, -- ScrollbarHint  xxx guifg=#1abc9c
        ScrollbarHintHandle {
            bg = "#202437",
            fg = "#1abc9c"
        }, -- ScrollbarHintHandle xxx guifg=#1abc9c guibg=#202437
        ScrollbarInfo {
            fg = "#7aa2f7"
        }, -- ScrollbarInfo  xxx guifg=#7aa2f7
        ScrollbarInfoHandle {
            bg = "#202437",
            fg = "#7aa2f7"
        }, -- ScrollbarInfoHandle xxx guifg=#7aa2f7 guibg=#202437
        ScrollbarWarn {
            fg = "#d79a42"
        }, -- ScrollbarWarn  xxx guifg=#d79a42
        ScrollbarWarnHandle {
            bg = "#202437",
            fg = "#d79a42"
        }, -- ScrollbarWarnHandle xxx guifg=#d79a42 guibg=#202437
        javascript {
            fg = "#f7768e"
        }, -- javascript     xxx guifg=#f7768e
        ScrollbarError {
            fg = "#f44747"
        }, -- ScrollbarError xxx guifg=#f44747
        ScrollbarErrorHandle {
            bg = "#202437",
            fg = "#f44747"
        }, -- ScrollbarErrorHandle xxx guifg=#f44747 guibg=#202437
        ScrollbarSearch {
            fg = "#e08f68"
        }, -- ScrollbarSearch xxx guifg=#e08f68
        ScrollbarSearchHandle {
            bg = "#202437",
            fg = "#e08f68"
        }, -- ScrollbarSearchHandle xxx guifg=#e08f68 guibg=#202437
        ScrollbarHandle {
            bg = "#202437"
        }, -- ScrollbarHandle xxx guibg=#202437
        IndentBlanklineContextChar {
            fg = "#9d7cd8",
            gui = "nocombine"
        }, -- IndentBlanklineContextChar xxx cterm=nocombine gui=nocombine guifg=#9d7cd8
        IndentBlanklineChar {
            fg = "#3b4261",
            gui = "nocombine"
        }, -- IndentBlanklineChar xxx cterm=nocombine gui=nocombine guifg=#3b4261
        NavicSeparator {
            fg = "#c0caf5"
        }, -- NavicSeparator xxx guifg=#c0caf5
        NavicText {
            fg = "#c0caf5"
        }, -- NavicText      xxx guifg=#c0caf5
        NavicIconsTypeParameter {
            fg = "#9ece6a"
        }, -- NavicIconsTypeParameter xxx guifg=#9ece6a
        NavicIconsOperator {
            fg = "#c0caf5"
        }, -- NavicIconsOperator xxx guifg=#c0caf5
        NavicIconsEvent {
            fg = "#e08f68"
        }, -- NavicIconsEvent xxx guifg=#e08f68
        NavicIconsStruct {
            fg = "#e08f68"
        }, -- NavicIconsStruct xxx guifg=#e08f68
        NavicIconsEnumMember {
            fg = "#9ece6a"
        }, -- NavicIconsEnumMember xxx guifg=#9ece6a
        NavicIconsNull {
            fg = "#e08f68"
        }, -- NavicIconsNull xxx guifg=#e08f68
        NavicIconsKeyword {
            fg = "#9d7cd8"
        }, -- NavicIconsKeyword xxx guifg=#9d7cd8
        NavicIconsKey {
            fg = "#9d7cd8"
        }, -- NavicIconsKey  xxx guifg=#9d7cd8
        NavicIconsObject {
            fg = "#e08f68"
        }, -- NavicIconsObject xxx guifg=#e08f68
        NavicIconsArray {
            fg = "#e08f68"
        }, -- NavicIconsArray xxx guifg=#e08f68
        NavicIconsBoolean {
            fg = "#e08f68"
        }, -- NavicIconsBoolean xxx guifg=#e08f68
        NavicIconsNumber {
            fg = "#e08f68"
        }, -- NavicIconsNumber xxx guifg=#e08f68
        NavicIconsString {
            fg = "#9ece6a"
        }, -- NavicIconsString xxx guifg=#9ece6a
        NavicIconsConstant {
            fg = "#bb9af7"
        }, -- NavicIconsConstant xxx guifg=#bb9af7
        NavicIconsVariable {
            fg = "#bb9af7"
        }, -- NavicIconsVariable xxx guifg=#bb9af7
        NavicIconsFunction {
            fg = "#7aa2f7"
        }, -- NavicIconsFunction xxx guifg=#7aa2f7
        NavicIconsInterface {
            fg = "#e08f68"
        }, -- NavicIconsInterface xxx guifg=#e08f68
        NavicIconsEnum {
            fg = "#e08f68"
        }, -- NavicIconsEnum xxx guifg=#e08f68
        NavicIconsConstructor {
            fg = "#e08f68"
        }, -- NavicIconsConstructor xxx guifg=#e08f68
        sassClass {
            fg = "#7aa2f7"
        }, -- sassClass      xxx guifg=#7aa2f7
        cssNoise {
            fg = "#7dcfff"
        }, -- cssNoise       xxx guifg=#7dcfff
        cssMediaProp {
            fg = "#d4daf2"
        }, -- cssMediaProp   xxx guifg=#d4daf2
        cssMediaType {
            fg = "#d4daf2"
        }, -- cssMediaType   xxx guifg=#d4daf2
        cssAtRuleLogical {
            fg = "#7dcfff"
        }, -- cssAtRuleLogical xxx guifg=#7dcfff
        cssAtRule {
            fg = "#bb9af7"
        }, -- cssAtRule      xxx guifg=#bb9af7
        cssPageProp {
            fg = "#d4daf2"
        }, -- cssPageProp    xxx guifg=#d4daf2
        cssBorderProp {
            fg = "#d4daf2"
        }, -- cssBorderProp  xxx guifg=#d4daf2
        cssFontProp {
            fg = "#d4daf2"
        }, -- cssFontProp    xxx guifg=#d4daf2
        cssBoxProp {
            fg = "#d4daf2"
        }, -- cssBoxProp     xxx guifg=#d4daf2
        cssBackgroundProp {
            fg = "#d4daf2"
        }, -- cssBackgroundProp xxx guifg=#d4daf2
        cssTextProp {
            fg = "#d4daf2"
        }, -- cssTextProp    xxx guifg=#d4daf2
        cssDefinition {
            fg = "#d4daf2"
        }, -- cssDefinition  xxx guifg=#d4daf2
        cssIdentifier {
            fg = "#7aa2f7"
        }, -- cssIdentifier  xxx guifg=#7aa2f7
        cssClassName {
            fg = "#7aa2f7"
        }, -- cssClassName   xxx guifg=#7aa2f7
        cssBraces {
            fg = "#f5cd06"
        }, -- cssBraces      xxx guifg=#f5cd06
        cssTagName {
            fg = "#f7768e"
        }, -- cssTagName     xxx guifg=#f7768e
        luaTableBlock {
            fg = "#d4daf2"
        }, -- luaTableBlock  xxx guifg=#d4daf2
        luaParen {
            fg = "#f7768e"
        }, -- luaParen       xxx guifg=#f7768e
        luaFunc {
            fg = "#7dcfff"
        }, -- luaFunc        xxx guifg=#7dcfff
        luaFunction {
            fg = "#bb9af7"
        }, -- luaFunction    xxx guifg=#bb9af7
        luaFunctionBlock {
            fg = "#7aa2f7"
        }, -- luaFunctionBlock xxx guifg=#7aa2f7
        pythonAttribute {
            fg = "#7aa2f7"
        }, -- pythonAttribute xxx guifg=#7aa2f7
        goBlock {
            fg = "#f7768e"
        }, -- goBlock        xxx guifg=#f7768e
        shTestOpr {
            fg = "#7dcfff"
        }, -- shTestOpr      xxx guifg=#7dcfff
        shLoop {
            fg = "#bb9af7"
        }, -- shLoop         xxx guifg=#bb9af7
        shFor {
            fg = "#f7768e"
        }, -- shFor          xxx guifg=#f7768e
        shStatement {
            fg = "#7dcfff"
        }, -- shStatement    xxx guifg=#7dcfff
        shFunctionOne {
            fg = "#7dcfff"
        }, -- shFunctionOne  xxx guifg=#7dcfff
        shEcho {
            fg = "#7dcfff"
        }, -- shEcho         xxx guifg=#7dcfff
        shDerefSimple {
            fg = "#f7768e"
        }, -- shDerefSimple  xxx guifg=#f7768e
        jsonStringMatch {
            fg = "#9ece6a"
        }, -- jsonStringMatch xxx guifg=#9ece6a
        jsonBraces {
            fg = "#f5cd06"
        }, -- jsonBraces     xxx guifg=#f5cd06
        jsonFold {
            fg = "#f7768e"
        }, -- jsonFold       xxx guifg=#f7768e
        jsonKeywordMatch {
            fg = "#f7768e"
        }, -- jsonKeywordMatch xxx guifg=#f7768e
        jsonQuote {
            fg = "#f7768e"
        }, -- jsonQuote      xxx guifg=#f7768e
        tsxMemberOptionality {
            fg = "#7dcfff"
        }, -- tsxMemberOptionality xxx guifg=#7dcfff
        tsxIdentifierName {
            fg = "#dec76e"
        }, -- tsxIdentifierName xxx guifg=#dec76e
        tsxRegion {
            fg = "#9ece6a"
        }, -- tsxRegion      xxx guifg=#9ece6a
        tsxTagName {
            fg = "#dec76e"
        }, -- tsxTagName     xxx guifg=#dec76e
        tsxAttrib {
            fg = "#7aa2f7",
            gui = "italic"
        }, -- tsxAttrib      xxx cterm=italic gui=italic guifg=#7aa2f7
        tsxCloseString {
            fg = "#d4daf2"
        }, -- tsxCloseString xxx guifg=#d4daf2
        typescriptDefaultParam {
            fg = "#7dcfff"
        }, -- typescriptDefaultParam xxx guifg=#7dcfff
        typescriptMemberOptionality {
            fg = "#7dcfff"
        }, -- typescriptMemberOptionality xxx guifg=#7dcfff
        typescriptExceptions {
            fg = "#bb9af7"
        }, -- typescriptExceptions xxx guifg=#bb9af7
        typescriptTry {
            fg = "#bb9af7"
        }, -- typescriptTry  xxx guifg=#bb9af7
        typescriptPromiseMethod {
            fg = "#7aa2f7"
        }, -- typescriptPromiseMethod xxx guifg=#7aa2f7
        typescriptArrayMethod {
            fg = "#7aa2f7"
        }, -- typescriptArrayMethod xxx guifg=#7aa2f7
        typescriptArray {
            fg = "#f7768e"
        }, -- typescriptArray xxx guifg=#f7768e
        typescriptProp {
            fg = "#7dcfff"
        }, -- typescriptProp xxx guifg=#7dcfff
        typescriptParenExp {
            fg = "#f7768e"
        }, -- typescriptParenExp xxx guifg=#f7768e
        typescriptLoopParen {
            fg = "#f7768e"
        }, -- typescriptLoopParen xxx guifg=#f7768e
        typescriptDestructureVariable {
            fg = "#f7768e"
        }, -- typescriptDestructureVariable xxx guifg=#f7768e
        typescriptArrayDestructure {
            fg = "#f7768e"
        }, -- typescriptArrayDestructure xxx guifg=#f7768e
        typescriptClassName {
            fg = "#dec76e"
        }, -- typescriptClassName xxx guifg=#dec76e
        typescriptCallHeritage {
            fg = "#dec76e"
        }, -- typescriptCallHeritage xxx guifg=#dec76e
        typescriptCall {
            fg = "#f7768e",
            gui = "italic"
        }, -- typescriptCall xxx cterm=italic gui=italic guifg=#f7768e
        typescriptHeadersMethod {
            fg = "#7aa2f7"
        }, -- typescriptHeadersMethod xxx guifg=#7aa2f7
        typescriptObjectLiteral {
            fg = "#f7768e"
        }, -- typescriptObjectLiteral xxx guifg=#f7768e
        typescriptMember {
            fg = "#7dcfff"
        }, -- typescriptMember xxx guifg=#7dcfff
        typescriptObjectType {
            fg = "#7dcfff"
        }, -- typescriptObjectType xxx guifg=#7dcfff
        typescriptAssign {
            fg = "#7dcfff"
        }, -- typescriptAssign xxx guifg=#7dcfff
        typescriptImportType {
            fg = "#bb9af7"
        }, -- typescriptImportType xxx guifg=#bb9af7
        typescriptVariableDeclaration {
            fg = "#dec76e"
        }, -- typescriptVariableDeclaration xxx guifg=#dec76e
        typescriptVariable {
            fg = "#bb9af7"
        }, -- typescriptVariable xxx guifg=#bb9af7
        typescriptString {
            fg = "#9ece6a"
        }, -- typescriptString xxx guifg=#9ece6a
        typescriptExport {
            fg = "#bb9af7"
        }, -- typescriptExport xxx guifg=#bb9af7
        typescriptParens {
            fg = "#f5cd06"
        }, -- typescriptParens xxx guifg=#f5cd06
        typescriptBraces {
            fg = "#f5cd06"
        }, -- typescriptBraces xxx guifg=#f5cd06
        typescriptBlock {
            fg = "#f7768e"
        }, -- typescriptBlock xxx guifg=#f7768e
        typescriptTypeReference {
            fg = "#dec76e"
        }, -- typescriptTypeReference xxx guifg=#dec76e
        typescriptIdentifierName {
            fg = "#dec76e"
        }, -- typescriptIdentifierName xxx guifg=#dec76e
        typescriptIdentifier {
            fg = "#dec76e"
        }, -- typescriptIdentifier xxx guifg=#dec76e
        typescriptImport {
            fg = "#bb9af7"
        }, -- typescriptImport xxx guifg=#bb9af7
        javascriptStringS {
            fg = "#9ece6a"
        }, -- javascriptStringS xxx guifg=#9ece6a
        javascriptReserved {
            fg = "#bb9af7"
        }, -- javascriptReserved xxx guifg=#bb9af7
        javascriptBraces {
            fg = "#f5cd06"
        }, -- javascriptBraces xxx guifg=#f5cd06
        javascriptParens {
            fg = "#f5cd06"
        }, -- javascriptParens xxx guifg=#f5cd06
        javascriptLabel {
            fg = "#bb9af7"
        }, -- javascriptLabel xxx guifg=#bb9af7
        javascriptFunction {
            fg = "#bb9af7"
        }, -- javascriptFunction xxx guifg=#bb9af7
        javascriptNumber {
            fg = "#e08f68"
        }, -- javascriptNumber xxx guifg=#e08f68
        javascriptValue {
            fg = "#e08f68"
        }, -- javascriptValue xxx guifg=#e08f68
        javascriptIdentifier {
            fg = "#bb9af7"
        }, -- javascriptIdentifier xxx guifg=#bb9af7
        htmlTitle {
            fg = "#d4daf2"
        }, -- htmlTitle      xxx guifg=#d4daf2
        htmlSpecialTagName {
            fg = "#f7768e"
        }, -- htmlSpecialTagName xxx guifg=#f7768e
        htmlArg {
            fg = "#7aa2f7",
            gui = "italic"
        }, -- htmlArg        xxx cterm=italic gui=italic guifg=#7aa2f7
        htmlTagName {
            fg = "#f7768e"
        }, -- htmlTagName    xxx guifg=#f7768e
        htmlTagN {
            fg = "#f7768e"
        }, -- htmlTagN       xxx guifg=#f7768e
        htmlEndTag {
            fg = "#d4daf2"
        }, -- htmlEndTag     xxx guifg=#d4daf2
        htmlTag {
            fg = "#d4daf2"
        }, -- htmlTag        xxx guifg=#d4daf2
        sym "@lsp.mod.deprecated" {
            gui = "strikethrough"
        }, -- @lsp.mod.deprecated xxx cterm=strikethrough gui=strikethrough
        sym "@lsp.typemod.variable.defaultLibrary.cpp" {
            fg = "#d4daf2"
        }, -- @lsp.typemod.variable.defaultLibrary.cpp xxx guifg=#d4daf2
        sym "@variable.builtin" {
            fg = "#dec76e"
        }, -- @variable.builtin xxx guifg=#dec76e
        sym "@lsp.typemod.variable.defaultLibrary" {sym "@variable.builtin"}, -- @lsp.typemod.variable.defaultLibrary xxx links to @variable.builtin
                sym "@variable.cpp" {
            fg = "#d4daf2"
        }, -- @variable.cpp  xxx guifg=#d4daf2
        sym "@lsp.type.variable.cpp" {sym "@variable.cpp"}, -- @lsp.type.variable.cpp xxx links to @variable.cpp
        sym "@variable.c" {
            fg = "#d4daf2"
        }, -- @variable.c    xxx guifg=#d4daf2
        sym "@lsp.type.variable.c" {sym "@variable.c"}, -- @lsp.type.variable.c xxx links to @variable.c
        sym "@field.cpp" {
            fg = "#d4daf2"
        }, -- @field.cpp     xxx guifg=#d4daf2
        sym "@lsp.type.property.cpp" {sym "@field.cpp"}, -- @lsp.type.property.cpp xxx links to @field.cpp
        sym "@field.lua" {
            fg = "#d4daf2"
        }, -- @field.lua     xxx guifg=#d4daf2
        sym "@lsp.type.property.lua" {sym "@field.lua"}, -- @lsp.type.property.lua xxx links to @field.lua
        sym "@namespace.cpp" {
            fg = "#dec76e"
        }, -- @namespace.cpp xxx guifg=#dec76e
        sym "@lsp.type.namespace.cpp" {sym "@namespace.cpp"}, -- @lsp.type.namespace.cpp xxx links to @namespace.cpp
        sym "@namespace.c" {
            fg = "#dec76e"
        }, -- @namespace.c   xxx guifg=#dec76e
        sym "@lsp.type.namespace.c" {sym "@namespace.c"}, -- @lsp.type.namespace.c xxx links to @namespace.c
        sym "@tag.delimiter" {
            fg = "#d4daf2"
        }, -- @tag.delimiter xxx guifg=#d4daf2
        sym "@tag.attribute" {
            fg = "#7aa2f7",
            gui = "italic"
        }, -- @tag.attribute xxx cterm=italic gui=italic guifg=#7aa2f7
        sym "@attribute" {
            fg = "#bb9af7"
        }, -- @attribute     xxx guifg=#bb9af7
        sym "@attribute.typescript" {
            fg = "#7aa2f7"
        }, -- @attribute.typescript xxx guifg=#7aa2f7
        sym "@attribute.javascript" {
            fg = "#7aa2f7"
        }, -- @attribute.javascript xxx guifg=#7aa2f7
        sym "@preproc.bash" {
            fg = "#4d526b",
            gui = "italic"
        }, -- @preproc.bash  xxx cterm=italic gui=italic guifg=#4d526b
        sym "@preproc.lua" {
            fg = "#4d526b",
            gui = "italic"
        }, -- @preproc.lua   xxx cterm=italic gui=italic guifg=#4d526b
        sym "@include.python" {
            fg = "#bb9af7",
            gui = "italic"
        }, -- @include.python xxx cterm=italic gui=italic guifg=#bb9af7
        sym "@namespace.go" {
            fg = "#dec76e"
        }, -- @namespace.go  xxx guifg=#dec76e
        sym "@namespace.php" {
            fg = "#dec76e"
        }, -- @namespace.php xxx guifg=#dec76e
        sym "@type.qualifier" {
            fg = "#bb9af7"
        }, -- @type.qualifier xxx guifg=#bb9af7
        sym "@type.builtin.java" {
            fg = "#bb9af7"
        }, -- @type.builtin.java xxx guifg=#bb9af7
        sym "@type.builtin.go" {
            fg = "#bb9af7"
        }, -- @type.builtin.go xxx guifg=#bb9af7
        sym "@type.builtin.c" {
            fg = "#bb9af7"
        }, -- @type.builtin.c xxx guifg=#bb9af7
        sym "@type.builtin.cpp" {
            fg = "#bb9af7"
        }, -- @type.builtin.cpp xxx guifg=#bb9af7
        sym "@type.builtin.python" {
            fg = "#7dcfff"
        }, -- @type.builtin.python xxx guifg=#7dcfff
        sym "@type.go" {
            fg = "#d4daf2"
        }, -- @type.go       xxx guifg=#d4daf2
        sym "@type.sql" {
            fg = "#7aa2f7"
        }, -- @type.sql      xxx guifg=#7aa2f7
        sym "@type.scss" {
            fg = "#f7768e"
        }, -- @type.scss     xxx guifg=#f7768e
        sym "@type.css" {
            fg = "#f7768e"
        }, -- @type.css      xxx guifg=#f7768e
        sym "@type.python" {
            fg = "#7dcfff"
        }, -- @type.python   xxx guifg=#7dcfff
        sym "@variable.builtin.lua" {
            fg = "#7dcfff"
        }, -- @variable.builtin.lua xxx guifg=#7dcfff
        sym "@variable.bash" {
            fg = "#f7768e",
            gui = "italic"
        }, -- @variable.bash xxx cterm=italic gui=italic guifg=#f7768e
        sym "@variable.go" {
            fg = "#f7768e"
        }, -- @variable.go   xxx guifg=#f7768e
        sym "@variable.python" {
            fg = "#d4daf2"
        }, -- @variable.python xxx guifg=#d4daf2
        sym "@variable.astro" {
            fg = "#bb9af7"
        }, -- @variable.astro xxx guifg=#bb9af7
        sym "@exception.python" {
            fg = "#bb9af7",
            gui = "italic"
        }, -- @exception.python xxx cterm=italic gui=italic guifg=#bb9af7
        sym "@keyword.operator" {
            fg = "#bb9af7"
        }, -- @keyword.operator xxx guifg=#bb9af7
        sym "@keyword.operator.php" {
            fg = "#bb9af7"
        }, -- @keyword.operator.php xxx guifg=#bb9af7
        sym "@keyword.php" {
            fg = "#7dcfff"
        }, -- @keyword.php   xxx guifg=#7dcfff
        sym "@keyword.python" {
            fg = "#bb9af7",
            gui = "italic"
        }, -- @keyword.python xxx cterm=italic gui=italic guifg=#bb9af7
        sym "@operator.bash" {
            fg = "#7dcfff"
        }, -- @operator.bash xxx guifg=#7dcfff
        sym "@operator.python" {
            fg = "#7dcfff"
        }, -- @operator.python xxx guifg=#7dcfff
        sym "@operator.c" {
            fg = "#bb9af7"
        }, -- @operator.c    xxx guifg=#bb9af7
        sym "@operator.cpp" {
            fg = "#bb9af7"
        }, -- @operator.cpp  xxx guifg=#bb9af7
        sym "@label.lua" {
            fg = "#d4daf2"
        }, -- @label.lua     xxx guifg=#d4daf2
        sym "@repeat.python" {
            fg = "#bb9af7",
            gui = "italic"
        }, -- @repeat.python xxx cterm=italic gui=italic guifg=#bb9af7
        sym "@conditional.python" {
            fg = "#bb9af7",
            gui = "italic"
        }, -- @conditional.python xxx cterm=italic gui=italic guifg=#bb9af7
        sym "@constructor.python" {
            fg = "#7aa2f7"
        }, -- @constructor.python xxx guifg=#7aa2f7
        sym "@constructor.lua" {
            fg = "#bb9af7"
        }, -- @constructor.lua xxx guifg=#bb9af7
        sym "@constructor.javascript" {
            fg = "#bb9af7"
        }, -- @constructor.javascript xxx guifg=#bb9af7
        sym "@constructor.tsx" {
            fg = "#dec76e"
        }, -- @constructor.tsx xxx guifg=#dec76e
        sym "@property.bultin" {
            fg = "#7dcfff"
        }, -- @property.bultin xxx guifg=#7dcfff
        sym "@property.scss" {
            fg = "#d4daf2"
        }, -- @property.scss xxx guifg=#d4daf2
        sym "@property.css" {
            fg = "#d4daf2"
        }, -- @property.css  xxx guifg=#d4daf2
        sym "@field.go" {
            fg = "#d4daf2"
        }, -- @field.go      xxx guifg=#d4daf2
        sym "@field.python" {
            fg = "#dec76e"
        }, -- @field.python  xxx guifg=#dec76e
        sym "@method.call.go" {
            fg = "#7dcfff"
        }, -- @method.call.go xxx guifg=#7dcfff
        NavicIconsMethod {
            fg = "#7aa2f7"
        }, -- NavicIconsMethod xxx guifg=#7aa2f7
        NavicIconsClass {
            fg = "#e08f68"
        }, -- NavicIconsClass xxx guifg=#e08f68
        NavicIconsPackage {
            fg = "#c0caf5"
        }, -- NavicIconsPackage xxx guifg=#c0caf5
        NavicIconsNamespace {
            fg = "#c0caf5"
        }, -- NavicIconsNamespace xxx guifg=#c0caf5
        NavicIconsModule {
            fg = "#dec76e"
        }, -- NavicIconsModule xxx guifg=#dec76e
        cType {
            fg = "#bb9af7"
        }, -- cType          xxx guifg=#bb9af7
        phpType {
            fg = "#7dcfff"
        }, -- phpType        xxx guifg=#7dcfff
        phpMemberSelector {
            fg = "#d4daf2"
        }, -- phpMemberSelector xxx guifg=#d4daf2
        phpRegion {
            fg = "#dec76e"
        }, -- phpRegion      xxx guifg=#dec76e
        markdownUrl {
            fg = "#bb9af7",
            gui = "underline"
        }, -- markdownUrl    xxx cterm=underline gui=underline guifg=#bb9af7
        markdownLinkText {
            fg = "#7aa2f7"
        }, -- markdownLinkText xxx guifg=#7aa2f7
        markdownLink {
            fg = "#bb9af7",
            gui = "underline"
        }, -- markdownLink   xxx cterm=underline gui=underline guifg=#bb9af7
        markdownCodeDelimiter {
            fg = "#9ece6a"
        }, -- markdownCodeDelimiter xxx guifg=#9ece6a
        markdownStrike {
            gui = "strikethrough"
        }, -- markdownStrike xxx cterm=strikethrough gui=strikethrough
        markdownItalic {
            fg = "#bb9af7",
            gui = "italic"
        }, -- markdownItalic xxx cterm=italic gui=italic guifg=#bb9af7
        markdownBold {
            fg = "#e08f68",
            gui = "bold"
        }, -- markdownBold   xxx cterm=bold gui=bold guifg=#e08f68
        markdownEscape {
            fg = "#7dcfff"
        }, -- markdownEscape xxx guifg=#7dcfff
        markdownH6Delimiter {
            fg = "#f7768e"
        }, -- markdownH6Delimiter xxx guifg=#f7768e
        markdownH4Delimiter {
            fg = "#f7768e"
        }, -- markdownH4Delimiter xxx guifg=#f7768e
        typescriptTypeAnnotation {
            fg = "#7dcfff"
        }, -- typescriptTypeAnnotation xxx guifg=#7dcfff
        typescriptFuncCallArg {
            fg = "#f7768e"
        }, -- typescriptFuncCallArg xxx guifg=#f7768e
        typescriptDOMElementTargetMethod {
            fg = "#7aa2f7"
        }, -- typescriptDOMElementTargetMethod xxx guifg=#7aa2f7
        typescriptStringMethod {
            fg = "#7aa2f7"
        }, -- typescriptStringMethod xxx guifg=#7aa2f7
        typescriptConditionalParen {
            fg = "#f7768e"
        }, -- typescriptConditionalParen xxx guifg=#f7768e
        typescriptArrowFuncDef {
            fg = "#7aa2f7"
        }, -- typescriptArrowFuncDef xxx guifg=#7aa2f7
        typescriptClassBlock {
            fg = "#7aa2f7"
        }, -- typescriptClassBlock xxx guifg=#7aa2f7
        typescriptInterfaceName {
            fg = "#dec76e"
        }, -- typescriptInterfaceName xxx guifg=#dec76e
        typescriptTypeBracket {
            fg = "#1c99f4"
        }, -- typescriptTypeBracket xxx guifg=#1c99f4
        typescriptObjectLabel {
            fg = "#7dcfff"
        }, -- typescriptObjectLabel xxx guifg=#7dcfff
        typescriptDecorator {
            fg = "#7aa2f7"
        }, -- typescriptDecorator xxx guifg=#7aa2f7
        typescriptFuncName {
            fg = "#7aa2f7"
        }, -- typescriptFuncName xxx guifg=#7aa2f7
        typescriptFuncTypeArrow {
            fg = "#7dcfff"
        }, -- typescriptFuncTypeArrow xxx guifg=#7dcfff
        sym "@operator.lua" {
            fg = "#d4daf2"
        }, -- @operator.lua  xxx guifg=#d4daf2
        sym "@constructor.typescript" {
            fg = "#bb9af7"
        }, -- @constructor.typescript xxx guifg=#bb9af7
        CratesNvimLoading {}, -- CratesNvimLoading xxx cterm= gui=
        CratesNvimVersion {}, -- CratesNvimVersion xxx cterm= gui=
        CratesNvimPreRelease {}, -- CratesNvimPreRelease xxx cterm= gui=
        CratesNvimYanked {}, -- CratesNvimYanked xxx cterm= gui=
        CratesNvimNoMatch {}, -- CratesNvimNoMatch xxx cterm= gui=
        CratesNvimUpgrade {}, -- CratesNvimUpgrade xxx cterm= gui=
        CratesNvimError {}, -- CratesNvimError xxx cterm= gui=
        CratesNvimPopupTitle {}, -- CratesNvimPopupTitle xxx cterm= gui=
        CratesNvimPopupPillText {
            bg = "#3a3a3a",
            fg = "#e0e0e0"
        }, -- CratesNvimPopupPillText xxx cterm= ctermfg=15 ctermbg=242 gui= guifg=#e0e0e0 guibg=#3a3a3a
        CratesNvimPopupPillBorder {
            fg = "#3a3a3a"
        }, -- CratesNvimPopupPillBorder xxx cterm= ctermfg=242 gui= guifg=#3a3a3a
        CratesNvimPopupDescription {}, -- CratesNvimPopupDescription xxx cterm= gui=
        CratesNvimPopupLabel {}, -- CratesNvimPopupLabel xxx cterm= gui=
        CratesNvimPopupValue {}, -- CratesNvimPopupValue xxx cterm= gui=
        CratesNvimPopupUrl {}, -- CratesNvimPopupUrl xxx cterm= gui=
        CratesNvimPopupVersion {}, -- CratesNvimPopupVersion xxx cterm= gui=
        CratesNvimPopupPreRelease {}, -- CratesNvimPopupPreRelease xxx cterm= gui=
        CratesNvimPopupYanked {}, -- CratesNvimPopupYanked xxx cterm= gui=
        CratesNvimPopupVersionDate {}, -- CratesNvimPopupVersionDate xxx cterm= gui=
        CratesNvimPopupFeature {}, -- CratesNvimPopupFeature xxx cterm= gui=
        CratesNvimPopupEnabled {
            fg = "#23ab49"
        }, -- CratesNvimPopupEnabled xxx cterm= ctermfg=2 gui= guifg=#23ab49
        CratesNvimPopupTransitive {
            fg = "#238bb9"
        }, -- CratesNvimPopupTransitive xxx cterm= ctermfg=4 gui= guifg=#238bb9
        CratesNvimPopupNormalDependenciesTitle {}, -- CratesNvimPopupNormalDependenciesTitle xxx cterm= gui=
        CratesNvimPopupBuildDependenciesTitle {}, -- CratesNvimPopupBuildDependenciesTitle xxx cterm= gui=
        CratesNvimPopupDevDependenciesTitle {}, -- CratesNvimPopupDevDependenciesTitle xxx cterm= gui=
        CratesNvimPopupDependency {}, -- CratesNvimPopupDependency xxx cterm= gui=
        CratesNvimPopupOptional {}, -- CratesNvimPopupOptional xxx cterm= gui=
        CratesNvimPopupDependencyVersion {}, -- CratesNvimPopupDependencyVersion xxx cterm= gui=
        CratesNvimPopupLoading {}, -- CratesNvimPopupLoading xxx cterm= gui=
        CmpItemKindVersion {}, -- CmpItemKindVersion xxx cterm= gui=
        CmpItemKindFeature {}, -- CmpItemKindFeature xxx cterm= gui=
        PounceCursor {
            bg = "#ff0000",
            fg = "#111111",
            gui = "bold"
        }, -- PounceCursor   xxx cterm=bold ctermfg=0 ctermbg=9 gui=bold guifg=#111111 guibg=#ff0000
        PounceUnmatched {}, -- PounceUnmatched xxx cterm= gui=
        PounceCursorAcceptBest {
            bg = "#03cafc",
            fg = "#111111",
            gui = "bold"
        }, -- PounceCursorAcceptBest xxx cterm=bold ctermfg=0 ctermbg=14 gui=bold guifg=#111111 guibg=#03cafc
        PounceAcceptBest {
            bg = "#03cafc",
            fg = "#111111",
            gui = "bold"
        }, -- PounceAcceptBest xxx cterm=bold ctermfg=0 ctermbg=14 gui=bold guifg=#111111 guibg=#03cafc
        PounceAccept {
            bg = "#de940b",
            fg = "#111111",
            gui = "bold"
        }, -- PounceAccept   xxx cterm=bold ctermfg=0 ctermbg=224 gui=bold guifg=#111111 guibg=#de940b
        PounceGap {
            bg = "#00aa00",
            fg = "#555555",
            gui = "bold"
        }, -- PounceGap      xxx cterm=bold ctermfg=0 ctermbg=2 gui=bold guifg=#555555 guibg=#00aa00
        PounceMatch {
            bg = "#11dd11",
            fg = "#555555",
            gui = "bold"
        }, -- PounceMatch    xxx cterm=bold ctermfg=0 ctermbg=10 gui=bold guifg=#555555 guibg=#11dd11
        PounceCursorGap {
            bg = "#aa0000",
            fg = "#111111",
            gui = "bold"
        }, -- PounceCursorGap xxx cterm=bold ctermfg=0 ctermbg=1 gui=bold guifg=#111111 guibg=#aa0000
        PounceCursorAccept {
            bg = "#de940b",
            fg = "#111111",
            gui = "bold"
        }, -- PounceCursorAccept xxx cterm=bold ctermfg=0 ctermbg=224 gui=bold guifg=#111111 guibg=#de940b
        SagaSpinner {}, -- SagaSpinner    xxx cterm= gui=
        SagaSpinnerTitle {}, -- SagaSpinnerTitle xxx cterm= gui=
        SagaVirtLine {
            fg = "#444a4d"
        }, -- SagaVirtLine   xxx cterm= gui= guifg=#444a4d
        SagaBeacon {
            bg = "#c43963"
        }, -- SagaBeacon     xxx cterm= gui= guibg=#c43963
        SagaToggle {}, -- SagaToggle     xxx cterm= gui=
        SagaTitle {}, -- SagaTitle      xxx cterm= gui=
        SagaNormal {}, -- SagaNormal     xxx cterm= gui=
        SagaFolderName {}, -- SagaFolderName xxx cterm= gui=
        SagaFileName {}, -- SagaFileName   xxx cterm= gui=
        SagaWinbarFolder {}, -- SagaWinbarFolder xxx cterm= gui=
        SagaFolder {}, -- SagaFolder     xxx cterm= gui=
        SagaWinbarFolderName {}, -- SagaWinbarFolderName xxx cterm= gui=
        SagaWinbarFileName {}, -- SagaWinbarFileName xxx cterm= gui=
        SagaWinbarSep {}, -- SagaWinbarSep  xxx cterm= gui=
        SagaImpIcon {}, -- SagaImpIcon    xxx cterm= gui=
        TerminalNormal {}, -- TerminalNormal xxx cterm= gui=
        TerminalBorder {}, -- TerminalBorder xxx cterm= gui=
        SagaBorder {}, -- SagaBorder     xxx cterm= gui=
        SagaLightBulb {}, -- SagaLightBulb  xxx cterm= gui=
        DiagnosticShowBorder {}, -- DiagnosticShowBorder xxx cterm= gui=
        DiagnosticShowNormal {}, -- DiagnosticShowNormal xxx cterm= gui=
        DiagnosticText {}, -- DiagnosticText xxx cterm= gui=
        DiagnosticNormal {}, -- DiagnosticNormal xxx cterm= gui=
        DiagnosticBorder {}, -- DiagnosticBorder xxx cterm= gui=
        RenameMatch {}, -- RenameMatch    xxx cterm= gui=
        RenameNormal {}, -- RenameNormal   xxx cterm= gui=
        RenameBorder {}, -- RenameBorder   xxx cterm= gui=
        HoverBorder {}, -- HoverBorder    xxx cterm= gui=
        HoverNormal {}, -- HoverNormal    xxx cterm= gui=
        CodeActionNumber {}, -- CodeActionNumber xxx cterm= gui=
        CodeActionText {}, -- CodeActionText xxx cterm= gui=
        ActionPreviewTitle {}, -- ActionPreviewTitle xxx cterm= gui=
        ActionPreviewBorder {}, -- ActionPreviewBorder xxx cterm= gui=
        ActionPreviewNormal {}, -- ActionPreviewNormal xxx cterm= gui=
        ActionFix {}, -- ActionFix      xxx cterm= gui=
        SagaSep {}, -- SagaSep        xxx cterm= gui=
        SagaCount {
            bg = "gray",
            fg = "white",
            gui = "bold"
        }, -- SagaCount      xxx cterm=bold gui=bold guifg=White guibg=Gray
        SagaInCurrent {}, -- SagaInCurrent  xxx cterm= gui=
        SagaDetail {}, -- SagaDetail     xxx cterm= gui=
        SagaFinderFname {}, -- SagaFinderFname xxx cterm= gui=
        SagaSearch {}, -- SagaSearch     xxx cterm= gui=
        SagaSelect {}, -- SagaSelect     xxx cterm= gui=
        SagaText {}, -- SagaText       xxx cterm= gui=
        SagaFile {}, -- SagaFile       xxx cterm= gui=
        SagaModule {}, -- SagaModule     xxx cterm= gui=
        SagaNamespace {}, -- SagaNamespace  xxx cterm= gui=
        SagaPackage {}, -- SagaPackage    xxx cterm= gui=
        SagaClass {}, -- SagaClass      xxx cterm= gui=
        SagaMethod {}, -- SagaMethod     xxx cterm= gui=
        SagaProperty {}, -- SagaProperty   xxx cterm= gui=
        SagaField {}, -- SagaField      xxx cterm= gui=
        SagaConstructor {}, -- SagaConstructor xxx cterm= gui=
        SagaEnum {}, -- SagaEnum       xxx cterm= gui=
        SagaInterface {}, -- SagaInterface  xxx cterm= gui=
        SagaFunction {}, -- SagaFunction   xxx cterm= gui=
        SagaVariable {}, -- SagaVariable   xxx cterm= gui=
        SagaConstant {}, -- SagaConstant   xxx cterm= gui=
        SagaString {}, -- SagaString     xxx cterm= gui=
        SagaNumber {}, -- SagaNumber     xxx cterm= gui=
        SagaBoolean {}, -- SagaBoolean    xxx cterm= gui=
        SagaArray {}, -- SagaArray      xxx cterm= gui=
        SagaObject {}, -- SagaObject     xxx cterm= gui=
        SagaKey {}, -- SagaKey        xxx cterm= gui=
        SagaNull {}, -- SagaNull       xxx cterm= gui=
        SagaEnumMember {}, -- SagaEnumMember xxx cterm= gui=
        SagaStruct {}, -- SagaStruct     xxx cterm= gui=
        SagaEvent {}, -- SagaEvent      xxx cterm= gui=
        SagaOperator {}, -- SagaOperator   xxx cterm= gui=
        SagaTypeParameter {}, -- SagaTypeParameter xxx cterm= gui=
        SagaTypeAlias {}, -- SagaTypeAlias  xxx cterm= gui=
        SagaParameter {}, -- SagaParameter  xxx cterm= gui=
        SagaUnit {}, -- SagaUnit       xxx cterm= gui=
        SagaStaticMethod {}, -- SagaStaticMethod xxx cterm= gui=
        SagaValue {}, -- SagaValue      xxx cterm= gui=
        SagaMacro {}, -- SagaMacro      xxx cterm= gui=
        SagaSnippet {}, -- SagaSnippet    xxx cterm= gui=
        VirtColumn {
            fg = "#414868"
        }, -- VirtColumn     xxx cterm= gui= guifg=#414868
        LspInfoFiletype {}, -- LspInfoFiletype xxx cterm= gui=
        LspInfoTitle {}, -- LspInfoTitle   xxx cterm= gui=
        LspInfoTip {}, -- LspInfoTip     xxx cterm= gui=
        LspInfoList {}, -- LspInfoList    xxx cterm= gui=
        LspInfoBorder {}, -- LspInfoBorder  xxx cterm= gui=
        MiniTrailspace {}, -- MiniTrailspace xxx cterm= gui=
        lualine_a_insert {
            bg = "#9ece6a",
            fg = "#2c323c",
            gui = "bold"
        }, -- lualine_a_insert xxx gui=bold guifg=#2c323c guibg=#9ece6a
        lualine_a_visual {
            bg = "#9d7cd8",
            fg = "#2c323c",
            gui = "bold"
        }, -- lualine_a_visual xxx gui=bold guifg=#2c323c guibg=#9d7cd8
        lualine_a_terminal {
            bg = "#7dcfff",
            fg = "#2c323c",
            gui = "bold"
        }, -- lualine_a_terminal xxx gui=bold guifg=#2c323c guibg=#7dcfff
        lualine_a_normal {
            bg = "#7dcfff",
            fg = "#2c323c",
            gui = "bold"
        }, -- lualine_a_normal xxx gui=bold guifg=#2c323c guibg=#7dcfff
        lualine_b_normal {
            bg = "#2c323c",
            fg = "#c0caf5"
        }, -- lualine_b_normal xxx guifg=#c0caf5 guibg=#2c323c
        lualine_c_normal {
            bg = "#2c323c",
            fg = "#c0caf5"
        }, -- lualine_c_normal xxx guifg=#c0caf5 guibg=#2c323c
        lualine_a_command {
            bg = "#e0af68",
            fg = "#2c323c",
            gui = "bold"
        }, -- lualine_a_command xxx gui=bold guifg=#2c323c guibg=#e0af68
        lualine_a_inactive {
            bg = "#2c323c",
            fg = "#686d75",
            gui = "bold"
        }, -- lualine_a_inactive xxx gui=bold guifg=#686d75 guibg=#2c323c
        lualine_b_inactive {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_b_inactive xxx guifg=#686d75 guibg=#2c323c
        lualine_c_inactive {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_c_inactive xxx guifg=#686d75 guibg=#2c323c
        lualine_a_replace {
            bg = "#f7768e",
            fg = "#2c323c",
            gui = "bold"
        }, -- lualine_a_replace xxx gui=bold guifg=#2c323c guibg=#f7768e
        lualine_z_location {
            bg = "#3e4452",
            fg = "#c0caf5"
        }, -- lualine_z_location xxx guifg=#c0caf5 guibg=#3e4452
        lualine_y_encoding_normal {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_y_encoding_normal xxx guifg=#686d75 guibg=#2c323c
        lualine_y_encoding_insert {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_y_encoding_insert xxx guifg=#686d75 guibg=#2c323c
        lualine_y_encoding_visual {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_y_encoding_visual xxx guifg=#686d75 guibg=#2c323c
        lualine_y_encoding_replace {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_y_encoding_replace xxx guifg=#686d75 guibg=#2c323c
        lualine_y_encoding_command {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_y_encoding_command xxx guifg=#686d75 guibg=#2c323c
        lualine_y_encoding_terminal {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_y_encoding_terminal xxx guifg=#686d75 guibg=#2c323c
        lualine_y_encoding_inactive {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_y_encoding_inactive xxx guifg=#686d75 guibg=#2c323c
        lualine_y_progress {
            bg = "#3e4452",
            fg = "#c0caf5"
        }, -- lualine_y_progress xxx guifg=#c0caf5 guibg=#3e4452
        lualine_b_filename {
            bg = "#3e4452",
            fg = "#c0caf5"
        }, -- lualine_b_filename xxx guifg=#c0caf5 guibg=#3e4452
        lualine_b_branch {
            bg = "#2c323c",
            fg = "#c0caf5"
        }, -- lualine_b_branch xxx guifg=#c0caf5 guibg=#2c323c
        lualine_a_13 {
            bg = "#7dcfff",
            fg = "#2c323c",
            gui = "bold"
        }, -- lualine_a_13   xxx gui=bold guifg=#2c323c guibg=#7dcfff
        lualine_z_tabs_active {
            bg = "#3e4452",
            fg = "#c0caf5"
        }, -- lualine_z_tabs_active xxx guifg=#c0caf5 guibg=#3e4452
        lualine_z_tabs_inactive {
            bg = "#2c323c",
            fg = "#686d75"
        }, -- lualine_z_tabs_inactive xxx guifg=#686d75 guibg=#2c323c
        WinShiftLineNr {
            bg = "#1d1b26",
            fg = "#3b4261"
        }, -- WinShiftLineNr xxx guifg=#3b4261 guibg=#1d1b26
        WinShiftLineNrAbove {WinShiftLineNr}, -- WinShiftLineNrAbove xxx links to WinShiftLineNr
        WinShiftLineNrBelow {WinShiftLineNr}, -- WinShiftLineNrBelow xxx links to WinShiftLineNr
        WinShiftSignColumn {
            bg = "#1d1b26",
            fg = "#3b4261"
        }, -- WinShiftSignColumn xxx guifg=#3b4261 guibg=#1d1b26
        WinShiftWindowPicker {
            bg = "#4493c8",
            fg = "#ededed",
            gui = "bold"
        }, -- WinShiftWindowPicker xxx gui=bold guifg=#ededed guibg=#4493c8
        WinShiftNormal {
            bg = "#1d1b26"
        }, -- WinShiftNormal xxx guibg=#1d1b26
        WinShiftFoldColumn {
            bg = "#1d1b26",
            fg = "#4d526b"
        }, -- WinShiftFoldColumn xxx guifg=#4d526b guibg=#1d1b26
        WinShiftEndOfBuffer {
            bg = "#1d1b26",
            fg = "#1d1b26"
        }, -- WinShiftEndOfBuffer xxx guifg=#1d1b26 guibg=#1d1b26
        WinShiftCursorLineNr {
            bg = "#1d1b26",
            fg = "#d4daf2"
        }, -- WinShiftCursorLineNr xxx guifg=#d4daf2 guibg=#1d1b26
        WhichKeyDesc {}, -- WhichKeyDesc   xxx cterm= gui=
        WhichKeyGroup {}, -- WhichKeyGroup  xxx cterm= gui=
        WhichKey {}, -- WhichKey       xxx cterm= gui=
        WhichKeyValue {}, -- WhichKeyValue  xxx cterm= gui=
        WhichKeyFloat {}, -- WhichKeyFloat  xxx cterm= gui=
        WhichKeyBorder {}, -- WhichKeyBorder xxx cterm= gui=
        WhichKeySeparator {}, -- WhichKeySeparator xxx cterm= gui=
        NoicePopupmenuSelected {}, -- NoicePopupmenuSelected xxx cterm= gui=
        NoicePopupmenuMatch {}, -- NoicePopupmenuMatch xxx cterm= gui=
        NoicePopupmenuBorder {}, -- NoicePopupmenuBorder xxx cterm= gui=
        NoiceCmdlinePopupBorderHelp {}, -- NoiceCmdlinePopupBorderHelp xxx cterm= gui=
        NoiceCmdlinePopupBorder {}, -- NoiceCmdlinePopupBorder xxx cterm= gui=
        NoiceCmdlineIconInput {}, -- NoiceCmdlineIconInput xxx cterm= gui=
        NoiceCmdlineIcon {}, -- NoiceCmdlineIcon xxx cterm= gui=
        NoiceCmdlinePopupBorderInput {}, -- NoiceCmdlinePopupBorderInput xxx cterm= gui=
        NoiceCmdlineIconCmdline {}, -- NoiceCmdlineIconCmdline xxx cterm= gui=
        NoiceCmdlinePopupBorderCmdline {}, -- NoiceCmdlinePopupBorderCmdline xxx cterm= gui=
        NoiceCmdlineIconFilter {}, -- NoiceCmdlineIconFilter xxx cterm= gui=
        NoiceCmdlinePopupBorderFilter {}, -- NoiceCmdlinePopupBorderFilter xxx cterm= gui=
        NoiceCmdlineIconCalculator {}, -- NoiceCmdlineIconCalculator xxx cterm= gui=
        NoiceCmdlinePopupBorderCalculator {}, -- NoiceCmdlinePopupBorderCalculator xxx cterm= gui=
        NoiceCmdlineIconLua {}, -- NoiceCmdlineIconLua xxx cterm= gui=
        NoiceCmdlinePopupBorderLua {}, -- NoiceCmdlinePopupBorderLua xxx cterm= gui=
        NoiceCursor {}, -- NoiceCursor    xxx cterm= gui=
        NoiceCmdlineIconHelp {}, -- NoiceCmdlineIconHelp xxx cterm= gui=
        NoicePopupmenu {}, -- NoicePopupmenu xxx cterm= gui=
        NoicePopupBorder {}, -- NoicePopupBorder xxx cterm= gui=
        NoicePopup {}, -- NoicePopup     xxx cterm= gui=
        NoiceMini {}, -- NoiceMini      xxx cterm= gui=
        NoiceConfirmBorder {}, -- NoiceConfirmBorder xxx cterm= gui=
        NoiceConfirm {}, -- NoiceConfirm   xxx cterm= gui=
        NoiceCmdlinePopupBorderSearch {}, -- NoiceCmdlinePopupBorderSearch xxx cterm= gui=
        NoiceCmdlinePopupTitle {}, -- NoiceCmdlinePopupTitle xxx cterm= gui=
        NoiceCmdlinePopup {}, -- NoiceCmdlinePopup xxx cterm= gui=
        NoiceCmdlinePrompt {}, -- NoiceCmdlinePrompt xxx cterm= gui=
        NoiceCmdlineIconSearch {}, -- NoiceCmdlineIconSearch xxx cterm= gui=
        NoiceCompletionItemKindMethod {}, -- NoiceCompletionItemKindMethod xxx cterm= gui=
        NoiceCompletionItemKindDefault {}, -- NoiceCompletionItemKindDefault xxx cterm= gui=
        NoiceCompletionItemKindEnum {}, -- NoiceCompletionItemKindEnum xxx cterm= gui=
        NoiceCompletionItemKindVariable {}, -- NoiceCompletionItemKindVariable xxx cterm= gui=
        NoiceCompletionItemKindFile {}, -- NoiceCompletionItemKindFile xxx cterm= gui=
        NoiceCompletionItemKindField {}, -- NoiceCompletionItemKindField xxx cterm= gui=
        NoiceCompletionItemKindUnit {}, -- NoiceCompletionItemKindUnit xxx cterm= gui=
        NoiceCompletionItemKindEnumMember {}, -- NoiceCompletionItemKindEnumMember xxx cterm= gui=
        NoiceCompletionItemKindText {}, -- NoiceCompletionItemKindText xxx cterm= gui=
        NoiceCompletionItemKindFolder {}, -- NoiceCompletionItemKindFolder xxx cterm= gui=
        NoiceCompletionItemKindSnippet {}, -- NoiceCompletionItemKindSnippet xxx cterm= gui=
        NoiceCompletionItemKindConstant {}, -- NoiceCompletionItemKindConstant xxx cterm= gui=
        NoiceCompletionItemKindProperty {}, -- NoiceCompletionItemKindProperty xxx cterm= gui=
        NoiceCompletionItemKindValue {}, -- NoiceCompletionItemKindValue xxx cterm= gui=
        NoiceCompletionItemKindKeyword {}, -- NoiceCompletionItemKindKeyword xxx cterm= gui=
        NoiceCompletionItemKindStruct {}, -- NoiceCompletionItemKindStruct xxx cterm= gui=
        NoiceCompletionItemKindModule {}, -- NoiceCompletionItemKindModule xxx cterm= gui=
        NoiceCompletionItemKindInterface {}, -- NoiceCompletionItemKindInterface xxx cterm= gui=
        NoiceCompletionItemKindConstructor {}, -- NoiceCompletionItemKindConstructor xxx cterm= gui=
        NoiceCompletionItemKindClass {}, -- NoiceCompletionItemKindClass xxx cterm= gui=
        NoiceCompletionItemKindFunction {}, -- NoiceCompletionItemKindFunction xxx cterm= gui=
        NoiceCompletionItemKindColor {}, -- NoiceCompletionItemKindColor xxx cterm= gui=
        NoiceCmdline {}, -- NoiceCmdline   xxx cterm= gui=
        NoiceLspProgressClient {}, -- NoiceLspProgressClient xxx cterm= gui=
        NoiceLspProgressTitle {}, -- NoiceLspProgressTitle xxx cterm= gui=
        NoiceLspProgressSpinner {}, -- NoiceLspProgressSpinner xxx cterm= gui=
        NoiceFormatLevelError {}, -- NoiceFormatLevelError xxx cterm= gui=
        NoiceFormatLevelWarn {}, -- NoiceFormatLevelWarn xxx cterm= gui=
        NoiceFormatLevelInfo {}, -- NoiceFormatLevelInfo xxx cterm= gui=
        NoiceFormatLevelOff {}, -- NoiceFormatLevelOff xxx cterm= gui=
        NoiceFormatLevelTrace {}, -- NoiceFormatLevelTrace xxx cterm= gui=
        NoiceFormatLevelDebug {}, -- NoiceFormatLevelDebug xxx cterm= gui=
        NoiceFormatTitle {}, -- NoiceFormatTitle xxx cterm= gui=
        NoiceFormatConfirmDefault {}, -- NoiceFormatConfirmDefault xxx cterm= gui=
        NoiceFormatConfirm {}, -- NoiceFormatConfirm xxx cterm= gui=
        NoiceFormatDate {}, -- NoiceFormatDate xxx cterm= gui=
        NoiceFormatKind {}, -- NoiceFormatKind xxx cterm= gui=
        NoiceFormatEvent {}, -- NoiceFormatEvent xxx cterm= gui=
        NoiceFormatProgressTodo {}, -- NoiceFormatProgressTodo xxx cterm= gui=
        NoiceFormatProgressDone {
            bg = "#3b4261",
            fg = "#c0caf5"
        }, -- NoiceFormatProgressDone xxx cterm= gui= guifg=#c0caf5 guibg=#3b4261
        NoiceVirtualText {}, -- NoiceVirtualText xxx cterm= gui=
        NoiceSplitBorder {}, -- NoiceSplitBorder xxx cterm= gui=
        NoiceSplit {}, -- NoiceSplit     xxx cterm= gui=
        NoiceScrollbarThumb {}, -- NoiceScrollbarThumb xxx cterm= gui=
        NoiceScrollbar {}, -- NoiceScrollbar xxx cterm= gui=
        NoiceHiddenCursor {
            blend = 100,
            gui = "nocombine"
        }, -- NoiceHiddenCursor xxx cterm=nocombine gui=nocombine blend=100
        lualine_transitional_lualine_y_progress_to_lualine_c_normal {
            bg = "#2c323c",
            fg = "#3e4452"
        }, -- lualine_transitional_lualine_y_progress_to_lualine_c_normal xxx guifg=#3e4452 guibg=#2c323c
        lualine_transitional_lualine_z_tabs_active_to_lualine_c_normal {
            bg = "#2c323c",
            fg = "#3e4452"
        }, -- lualine_transitional_lualine_z_tabs_active_to_lualine_c_normal xxx guifg=#3e4452 guibg=#2c323c
        NoiceAttr101 {
            fg = "#f44747"
        }, -- NoiceAttr101   xxx guifg=#f44747
        TodoComment {
            fg = color.purple
        }, FixmeComment {
            fg = color.purple
        }, HackComment {
            fg = color.yellow
        }, PriorityComment {
            fg = color.orange
        }}
    end)

    lush(theme)

    vim.api.nvim_exec_autocmds("User", {
        pattern = "ThemeApplied"
    })
end

function M.enable_VertSplit()
    local palette = require "theme.palette"
    local lush = require "lush"

    local color = lush.hsl(palette.thin_line).lighten(5)

    vim.cmd("hi VertSplit guifg=" .. color)
end

function M.disable_VertSplit()
    local palette = require "theme.palette"

    vim.cmd("hi VertSplit guifg=" .. palette.bg)
end

return M

-- vi:nowrap
