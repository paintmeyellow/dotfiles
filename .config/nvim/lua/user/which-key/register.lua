-- Add bindings which show up as group name
return {
  n = {
    ["<leader>"] = {
      ["t"] = {
        ["f"] = { ":GoTestFunc -F<cr>", "GoTestFunc" },
        ["t"] = { ":GoTestFile -F<cr>", "GoTestFile" },
        ["c"] = { ":GoCoverage<cr>", "GoCoverage" },
      },
    },
  },
}
