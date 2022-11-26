return {
  -- first key is the mode
  n = {
    -- disable default bindings
    ["<leader>tf"] = false,
    ["<leader>th"] = false,
    ["<leader>tl"] = false,
    ["<leader>tn"] = false,
    ["<leader>tp"] = false,
    ["<leader>tt"] = false,
    ["<leader>tu"] = false,
    ["<leader>tv"] = false,
    ["<leader>d"] = false,
    ["<leader>/"] = false,
    ["<leader>q"] = false,
    ["<leader>w"] = false,
    ["<leader>s"] = false,
    ["<leader>S"] = false,
    ["<leader>lh"] = false,
    ["<leader>b"] = false,
    ["<leader>ua"] = false,
    ["<leader>ub"] = false,
    ["<leader>uc"] = false,
    ["<leader>uC"] = false,
    ["<leader>ud"] = false,
    ["<leader>uj"] = false,
    ["<leader>ui"] = false,
    ["<leader>ul"] = false,
    ["<leader>un"] = false,
    ["<leader>up"] = false,
    ["<leader>us"] = false,
    ["<leader>ut"] = false,
    ["<leader>uu"] = false,
    ["<leader>uw"] = false,
    ["<leader>uy"] = false,
    ["<leader>ug"] = false,
    ["<leader>o"] = false,
    ["<leader>u"] = false,

    -- mappings seen under group name "Go"
    -- ["<leader><space>i"] = { "<Plug>(go-info)", desc = "GoInfo" },
    -- ["<leader><space>d"] = { "<Plug>(go-def-vertical)", desc = "GoDefVertical" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
