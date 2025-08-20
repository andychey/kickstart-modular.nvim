return {
  'smoka7/hop.nvim',
  version = '*',
  config = function()
    local hop = require 'hop'
    local hint = require 'hop.hint'
    local directions = hint.HintDirection
    local positions = hint.HintPosition

    hop.setup {}

    --[[
    vim.keymap.set({ 'n' }, 'f', function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR }
    end, { remap = true })
    vim.keymap.set({ 'n' }, 'F', function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR }
    end, { remap = true })
    vim.keymap.set({ 'n' }, 't', function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, hint_offset = -1 }
    end, { remap = true })
    vim.keymap.set({ 'n' }, 'T', function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, hint_offset = 1 }
    end, { remap = true })
		]]

    vim.keymap.set({ 'o' }, 's', function()
      hop.hint_char2 {}
    end, { remap = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>x', function()
      hop.hint_char2 {}
    end, { remap = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>w', function()
      hop.hint_words { direction = directions.AFTER_CURSOR }
    end, { remap = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>b', function()
      hop.hint_words { direction = directions.BEFORE_CURSOR }
    end, { remap = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>e', function()
      hop.hint_words { direction = directions.AFTER_CURSOR, hint_position = positions.END }
    end, { remap = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>ge', function()
      hop.hint_words { direction = directions.BEFORE_CURSOR, hint_position = positions.END }
    end, { remap = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>j', function()
      hop.hint_lines_skip_whitespace { direction = directions.AFTER_CURSOR }
    end, { remap = true })
    vim.keymap.set({ 'n', 'v' }, '<leader>k', function()
      hop.hint_lines_skip_whitespace { direction = directions.BEFORE_CURSOR }
    end, { remap = true })
  end,
}
