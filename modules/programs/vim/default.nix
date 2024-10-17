{pkgs, ...}:
{
	programs.vim = {
		enable = true;
		#extraConfig = builtins.readFile vim/vimrc;
		extraConfig = ''
		filetype on
		filetype indent on
		syntax on
		set number
		'';
		#settings = {
		#	relativenumber = false;
		#	number = true;
		#};
		plugins = with pkgs.vimPlugins; [
			vim-airline
				vim-easy-align
				vim-snippets
				nerdtree
				vim-fireplace
#fzf
				emmet-vim
				vim-surround
#lightline
				vim-css-color
				#nord-vim
#vim-instant-markdown
				python-syntax
				ale

				#dracula-vim
				tokyonight-nvim
		];
	};
}
