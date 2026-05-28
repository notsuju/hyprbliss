 return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" }, -- Comment any line using gcc and comment in visual mode using gc 
    config = function ()
        require("Comment").setup()
    end,
}
