return {
  {
    'Civitasv/cmake-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = {
      'CMakeGenerate',
      'CMakeBuild',
      'CMakeRun',
      'CMakeDebug',
      'CMakeRunTest',
      'CMakeSelectBuildType',
      'CMakeSelectBuildTarget',
      'CMakeSelectLaunchTarget',
      'CMakeSelectConfigurePreset',
      'CMakeSelectBuildPreset',
    },
    opts = {
      cmake_command = 'cmake',
      ctest_command = 'ctest',
      cmake_use_preset = true,
      cmake_regenerate_on_save = true,

      -- Very important for clangd.
      cmake_generate_options = { '-DCMAKE_EXPORT_COMPILE_COMMANDS=1' },

      cmake_build_directory = 'build/${variant:buildType}',

      cmake_compile_commands_options = {
        action = 'soft_link',
        target = function()
          return vim.fn.getcwd()
        end,
      },

      cmake_dap_configuration = {
        name = 'cpp',
        type = 'codelldb',
        request = 'launch',
        stopOnEntry = false,
        runInTerminal = true,
        console = 'integratedTerminal',
      },
    },
    keys = {
      { '<leader>cg', '<cmd>CMakeGenerate<cr>', desc = '[C]Make [G]enerate' },
      { '<leader>cb', '<cmd>CMakeBuild<cr>', desc = '[C]Make [B]uild' },
      { '<leader>cr', '<cmd>CMakeRun<cr>', desc = '[C]Make [R]un' },
      { '<leader>cd', '<cmd>CMakeDebug<cr>', desc = '[C]Make [D]ebug' },
      { '<leader>ct', '<cmd>CMakeRunTest<cr>', desc = '[C]Make [T]est' },
      { '<leader>cB', '<cmd>CMakeSelectBuildType<cr>', desc = '[C]Make Select [B]uild Type' },
      { '<leader>cT', '<cmd>CMakeSelectBuildTarget<cr>', desc = '[C]Make Select [T]arget' },
    },
  },
}
