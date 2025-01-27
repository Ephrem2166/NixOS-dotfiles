{pkgs, ...}:
{
  programs.neovim = 
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraPackages = with pkgs; [
      lua-language-server
      xclip
      nil
      wl-clipboard
    ];
    plugins = with pkgs.vimPlugins; [
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./lua/plugin/lsp.lua;
      }

      {
        plugin = comment-nvim;
        config = toLua "require(\"Comment\").setup()";
      }

      {
        plugin = gruvbox-nvim;
        config = "colorscheme gruvbox";
      }
      {
        plugin = tokyonight-nvim;
        config = "colorscheme tokyonight";
      }
      {
        plugin = neo-tree-nvim;
        config = toLua ./lua/plugin/neo-tree.lua;
      }
      neodev-nvim
      nvim-cmp
      {
        plugin = alpha-nvim;
        config = toLuaFile ./lua/plugin/alpha.lua;
      }
      {
        plugin = nvim-cmp;
        config = toLuaFile ./lua/plugin/cmp.lua;
      }

      {
        plugin = telescope-nvim;
        config = toLuaFile ./lua/plugin/telescope.lua;
      }

      telescope-fzf-native-nvim

      cmp_luasnip
      cmp-nvim-lsp

      luasnip
      friendly-snippets


      lualine-nvim
      nvim-web-devicons

      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-nix
          p.tree-sitter-vim
          p.tree-sitter-bash
          p.tree-sitter-lua
          p.tree-sitter-python
          p.tree-sitter-json
        ]));
        config = toLuaFile ./lua/plugin/treesitter.lua;
      }

      vim-nix

# {
#   plugin = vimPlugins.own-onedark-nvim;
#   config = "colorscheme onedark";
# }
            ];
            extraLuaConfig = ''
              ${builtins.readFile ./lua/options.lua}
            '';

          };
        }
