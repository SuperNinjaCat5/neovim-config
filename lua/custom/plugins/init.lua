-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvimdev/dashboard-nvim',
    lazy = false, -- load immediately at startup
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
        config = {
          header = {
            '███╗   ██╗██╗   ██╗██╗███╗   ███╗',
            '████╗  ██║██║   ██║██║████╗ ████║',
            '██╔██╗ ██║██║   ██║██║██╔████╔██║',
            '██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
            '██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
            '╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
          },
          center = {
            { icon = ' ', desc = 'Find File', key = 'f', action = 'Telescope find_files' },
            { icon = ' ', desc = 'Config', key = 'c', action = 'edit $MYVIMRC' },
          },
          footer = { 'neovim ♥ lazy.nvim' },
        },
      }
      -- Dashboard theme: full green

      -- Header (title) in light hacker green
      vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#a8ff60', bold = true })

      -- Center items in medium green
      vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#00ff00' })

      -- Footer in darker, muted green, italicized
      vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#339933', italic = true })

      -- Shortcut highlights (if your dashboard uses shortcuts)
      vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = '#66ff66', bold = true })

      -- Buttons or selected items
      vim.api.nvim_set_hl(0, 'DashboardButton', { fg = '#55aa55', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardSelected', { fg = '#a0ffa0', bold = true, underline = true })

      -- Optional: Hint/info text in a soft green
      vim.api.nvim_set_hl(0, 'DashboardHint', { fg = '#88cc88', italic = true })

      -- Recent Projects section
      vim.api.nvim_set_hl(0, 'DashboardRecent', { fg = '#99ff99', bold = true }) -- "Recent Projects:" title
      vim.api.nvim_set_hl(0, 'DashboardRecentFile', { fg = '#66ff66' }) -- each project/file entry

      -- Most Recent Files section
      vim.api.nvim_set_hl(0, 'DashboardMRU', { fg = '#99ff99', bold = true }) -- "Most Recent Files:" title
      vim.api.nvim_set_hl(0, 'DashboardMRUFile', { fg = '#66ff66' }) -- each file entry
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
}
