return {
  'Civitasv/cmake-tools.nvim',
--[[
  require('lspconfig').clangd.setup {
    on_new_config = function(new_config, new_cwd)
      local status, cmake = pcall(require, 'cmake-tools')
      if status then
        cmake.clangd_on_new_config(new_config)
      end
    end,
  },
}
]]--
}
--  'alepez/vim-gtest', look this up for using gtest faster
