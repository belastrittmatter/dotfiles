return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      show_buffer_close_icons = false,
      max_prefix_length = 8,
      enforce_regular_tabs = true,
      always_show_bufferline = false,
      offsets = {
        {
          filetype = "NvimTree",           
          text_align = "center",
          highlight = "Directory",
          separator = true,
        }
      }
    },
  },
}
