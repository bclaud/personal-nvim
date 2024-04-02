{
#  options = {
#    number = true;
#    relativenumber = true;
#  };

  globals.mapleader = " ";
  keymaps = [
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>sg";
    }

  ];

  plugins.lsp = {
    enable = true;
    servers = { 
      lua-ls.enable = true;
      pyright.enable = true;
    };
  };

  plugins = {
    telescope.enable = true;

    treesitter.enable = true;
    luasnip.enable = true;
  };

  plugins.cmp = {
    enable = true;
    cmdline.mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<Tab>" = ''function(fallback)
      if cmp.visible() then
      cmp.select_next_item()
      elseif luasnip.expandable() then
      luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
      elseif check_backspace() then
      fallback()
      else
      fallback()
      end
      end, { 'i', 's' }
      '';
    };
  };
}
