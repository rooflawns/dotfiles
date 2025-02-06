return
 {
  'eero-lehtinen/oklch-color-picker.nvim',
  event = 'VeryLazy',
  opts = {
  highlight = {
    enabled = true,
    edit_delay = 60, -- ms
    scroll_delay = 0, -- ms
    -- options: 'background'|'foreground'|'virtual_left'|'virtual_right'|'virtual_eol'
    style = 'virtual_left',
    -- '● ' also looks nice (space can be removed if using monospace nerd symbols)
    virtual_text = '■ ',
    priority = 500,
  },

    },
  keys = {
    -- One handed keymap recommended, you will be using the mouse
    { '<leader>v', '<cmd>ColorPickOklch<cr>', desc = 'Color pick under cursor' }
  }
}
