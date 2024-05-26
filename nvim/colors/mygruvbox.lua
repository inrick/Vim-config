-- Neovim colorscheme based on gruvbox.
--
-- A quieter colorscheme based on the gruvbox palette. I like the gruvbox
-- colors but found the vim theme a bit too noisy and made this alternative.
--
-- Includes both a light and dark variant, and one can switch between them
-- using `:set bg=light` and `:set bg=dark` respectively.

local light = {
  fg     = "#000000",
  bg     = "#fbf1c7",
  bgalt  = "#ebdbb2",
  yellow = "#b57614",
  red    = "#9d0006",
  purple = "#8f3f71",
  blue   = "#458588",
  aqua   = "#427b58",
  green  = "#79740e",
  gray   = "#928374",
  darker = "#504945",
}

local dark = {
  fg     = "#fbf1c7",
  bg     = "#282828",
  bgalt  = "#3c3836",
  yellow = "#fabd2f",
  red    = "#fb4934",
  purple = "#d3869b",
  blue   = "#458588",
  aqua   = "#8ec07c",
  green  = "#b8bb26",
  gray   = "#ebdbb2",
  darker = "#d5c4a1",
}

local none = "NONE"

-- Palette
local function colors(p)
  return {
    Normal           = { fg = p.fg,     bg = p.bg     },
    ColorColumn      = { fg = p.fg,     bg = p.bgalt  },
    Comment          = { fg = p.darker, bg = none     },
    Conceal          = { fg = p.fg,     bg = none     },
    Constant         = { fg = p.aqua,   bg = none     },
    Number           = { fg = p.purple, bg = none     },
    String           = { fg = p.aqua,   bg = none     },
    lCursor          = { fg = none,     bg = none     },
    Cursor           = { fg = none,     bg = none     },
    CursorIM         = { fg = none,     bg = none     },
    CursorColumn     = { fg = p.fg,     bg = p.bgalt  },
    CursorLine       = { fg = p.fg,     bg = p.bgalt  },
    DiffAdd          = { fg = p.green,  bg = none,    reverse = true },
    DiffChange       = { fg = p.purple, bg = none,    reverse = true },
    DiffDelete       = { fg = p.red,    bg = none,    reverse = true },
    DiffText         = { fg = p.fg,     bg = none,    reverse = true },
    Directory        = { fg = p.fg,     bg = none     },
    EndOfBuffer      = { fg = p.gray,   bg = none     },
    Error            = { fg = p.fg,     bg = none     },
    ErrorMsg         = { fg = p.fg,     bg = none     },
    FoldColumn       = { fg = p.fg,     bg = none     },
    Folded           = { fg = p.fg,     bg = p.bgalt  },
    Identifier       = { fg = p.fg,     bg = none     },
    Ignore           = { fg = p.fg,     bg = none     },
    IncSearch        = { fg = p.bg,     bg = p.darker },
    LineNr           = { fg = p.gray,   bg = none     },
    CursorLineNr     = { fg = p.fg,     bg = none     },
    MatchParen       = { fg = p.fg,     bg = p.bgalt  },
    ModeMsg          = { fg = p.fg,     bg = none     },
    MoreMsg          = { fg = p.fg,     bg = none     },
    NonText          = { fg = p.gray,   bg = none     },
    NormalFloat      = { fg = p.fg,     bg = p.bgalt  },
    NormalNC         = { fg = p.fg,     bg = none     },
    Pmenu            = { fg = p.fg,     bg = p.bgalt  },
    PmenuSbar        = { fg = p.fg,     bg = p.bgalt  },
    PmenuSel         = { fg = p.bgalt,  bg = p.darker },
    PmenuThumb       = { fg = p.fg,     bg = p.darker },
    PreProc          = { fg = p.darker, bg = none     },
    Question         = { fg = p.fg,     bg = none     },
    QuickFixLine     = { fg = p.fg,     bg = p.bgalt  },
    Search           = { fg = p.fg,     bg = p.bgalt  },
    SignColumn       = { fg = p.fg,     bg = p.bgalt  },
    Special          = { fg = p.red,    bg = none     },
    SpecialKey       = { fg = p.red,    bg = none     },
    SpellBad         = { fg = none,     bg = none,    undercurl = true },
    SpellCap         = { fg = none,     bg = none,    undercurl = true },
    SpellLocal       = { fg = none,     bg = none,    undercurl = true },
    SpellRare        = { fg = p.purple, bg = none,    undercurl = true },
    Statement        = { fg = p.red,    bg = none     },
    StatusLine       = { fg = p.fg,     bg = p.bgalt  },
    StatusLineNC     = { fg = p.gray,   bg = p.bgalt  },
    StatusLineTerm   = { fg = p.fg,     bg = p.bgalt  },
    StatusLineTermNC = { fg = p.gray,   bg = p.bgalt  },
    Substitute       = { fg = p.fg,     bg = p.gray   },
    TabLine          = { fg = p.darker, bg = p.bgalt  },
    TabLineFill      = { fg = p.fg,     bg = p.bgalt  },
    TabLineSel       = { fg = p.bgalt,  bg = p.gray   },
    Terminal         = { fg = p.fg,     bg = none     },
    TermCursor       = { fg = p.fg,     bg = none,    reverse = true },
    TermCursorNC     = { fg = p.fg,     bg = none     },
    Title            = { fg = p.fg,     bg = none     },
    Todo             = { fg = p.red,    bg = none     },
    Type             = { fg = p.fg,     bg = none     },
    Underlined       = { fg = p.fg,     bg = none,    underline = true },
    VertSplit        = { fg = p.gray,   bg = none     },
    Visual           = { fg = p.fg,     bg = p.bgalt  },
    VisualNOS        = { fg = p.fg,     bg = p.bgalt  },
    WarningMsg       = { fg = p.fg,     bg = none     },
    Whitespace       = { fg = p.gray,   bg = none     },
    WildMenu         = { fg = p.gray,   bg = p.bg,    reverse = true },

    Function = { link = "Identifier" },

    -- LSP
    DiagnosticError     = { fg = p.red,    bg = none    },
    DiagnosticSignError = { fg = p.red,    bg = p.bgalt },
    DiagnosticWarn      = { fg = p.yellow, bg = none    },
    DiagnosticSignWarn  = { fg = p.yellow, bg = p.bgalt },
    DiagnosticInfo      = { fg = p.blue,   bg = none    },
    DiagnosticSignInfo  = { fg = p.blue,   bg = p.bgalt },
    DiagnosticHint      = { fg = p.blue,   bg = none    },
    DiagnosticSignHint  = { fg = p.blue,   bg = p.bgalt },
    LspReferenceText    = { fg = p.yellow, bg = none    },
    LspReferenceRead    = { fg = p.yellow, bg = none    },
    LspReferenceWrite   = { fg = p.yellow, bg = none    },

    -- Don't highlight the code different, it becomes too difficult to read.
    DiagnosticUnderlineError = { fg = none, bg = none },
    DiagnosticUnderlineWarn  = { fg = none, bg = none },
    DiagnosticUnderlineInfo  = { fg = none, bg = none },
    DiagnosticUnderlineHint  = { fg = none, bg = none },

    IndentBlanklineIndent = { fg = p.bgalt, bg = none },

    -- Curiously, diff.vim links groups below to Identifier/Special/PreProc.
    -- Why?
    diffAdded   = { link = "DiffAdd" },
    diffRemoved = { link = "DiffDelete" },
    diffChanged = { link = "DiffChange" },

    -- Language additions
    luaFunction = { link = "Special" },

    -- Plugins
    NvimTreeExecFile         = { link = "Special" },
    NvimTreeSpecialFile      = { link = "Special" },
    NvimTreeRootFolder       = { link = "LineNr" },
    NvimTreeFolderIcon       = { link = "LineNr" },
    NvimTreeIndentMarker     = { link = "LineNr" },
    NvimTreeGitDirty         = { link = "LineNr" },
    NvimTreeGitStaged        = { link = "LineNr" },
    NvimTreeGitMerge         = { link = "LineNr" },
    NvimTreeGitRenamed       = { link = "LineNr" },
    NvimTreeGitNew           = { link = "LineNr" },
    NvimTreeGitDeleted       = { link = "LineNr" },
    NvimTreeSymlink          = { link = "Normal" },
    NvimTreeFolderName       = { link = "Normal" },
    NvimTreeEmptyFolderName  = { link = "Normal" },
    NvimTreeOpenedFolderName = { link = "Normal" },
    NvimTreeOpenedFile       = { link = "Normal" },
    NvimTreeImageFile        = { link = "Normal" },
    NvimTreeWindowPicker     = { link = "TabLineSel" },

    FocusedSymbol = { link = "TabLine" },
  }
end

local function set_colors()
  vim.cmd.highlight("clear")
  vim.opt.termguicolors = true
  if vim.fn.exists("syntax_on") then
    vim.cmd.syntax("reset")
  end
  vim.g.colors_name = "mygruvbox"

  local palette
  if vim.o.background == "light" then
    palette = light
  else
    palette = dark
  end

  for name, val in pairs(colors(palette)) do
    vim.api.nvim_set_hl(0, name, val)
  end
end

set_colors()
