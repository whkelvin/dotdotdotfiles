-- This is an example chadrc file , its supposed to be placed in /lua/custom/
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.ui = {
   theme = "nord",
}

-- Install plugins
local userPlugins = require "custom.plugins" -- path to table
local pluginConfig = require "custom.plugin_config.config"

M.plugins = {
  install = userPlugins,

  status = {
    colorizer = true
  },

  default_plugin_config_replace = {
    nvim_tree = pluginConfig.nvimtree,
    nvim_cmp = "custom.plugin_config.cmp"
  },

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugin_config.lspconfig"
    },
    statusline = {
      style = "arrow"
    }
  }
}

M.mappings = {
  plugins = {
    nvimtree = {
      toggle =  "<leader>n"
    },
    lspconfig = {
      formatting = "<leader>p"
    },
    telescope = {
      find_hiddenfiles = "<leader>sf",
      live_grep = "<leader>ss"
    }
  }
}

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

return M
