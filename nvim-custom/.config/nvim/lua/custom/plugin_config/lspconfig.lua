local M = {}

M.setup_lsp = function(attach, capabilities)
    --local pid = vim.fn.getpid()
    --local omnisharp_bin = "/usr/local/bin/omnisharp/run"

    --require'lspconfig'.omnisharp.setup {
    --   capabilities = capabilities,
    --   cmd={omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid)},
    --}

    --require'lspconfig'.terraformls.setup{}
    --require'lspconfig'.yamlls.setup{}

    --local languageServerPath = "/usr/local/lib"
    --local cmd = {"node", languageServerPath.."/node_modules/@angular/language-server/index.js", "--stdio", "--tsProbeLocations", languageServerPath, "--ngProbeLocations", languageServerPath}

    --require'lspconfig'.angularls.setup
    --{
    --  cmd = cmd,
    --  on_new_config = function(new_config,new_root_dir)
    --    new_config.cmd = cmd
    --  end,
    --}

  require 'lspconfig'.rls.setup {
    settings = {
      rust = {
        unstable_features = false,
        build_on_save = false,
        all_features = true,
      },
    },  
  }

  require 'lspconfig'.angularls.setup {}

end

return M
