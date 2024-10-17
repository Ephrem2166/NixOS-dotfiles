{...}:
{
	programs.yt-dlp = {
		enable = true;
		settings = {
			embed-thumbnail = true;
			audio-quality = 0;
			embed-metadata = true;
			#embed-subs = true;
			#sub-langs = "all";
			embed-chapters = true;
			downloader = "aria2c";
			downloader-args = "aria2c:'-c -x8 -s8 -k1M'";
			format = "bestvideo[height<=?1080][fps<=?60][vcodec!=?vp9]+bestaudio/best";
		};
		extraConfig = ''
			--ignore-errors
# --no-playlist

# Save in ~/Videos
			-o ~/Videos/%(title)s.%(ext)s

			--buffer-size 4096

# Prefer 1080p or lower resolutions
			-f bestvideo[ext=mp4][width<2000][height<=1200]+bestaudio[ext=m4a]/bestvideo[ext=webm][width<2000][height<=1200]+bestaudio[ext=webm]/bestvideo[width<2000][height<=1200]+bestaudio/best[width<2000][height<=1200]/best

# Merge output format mkv
			--merge-output-format mkv
# external downloader aria2
			--downloader aria2c --downloader-args aria2c:'-c -j 3 -x 3 -s 3 -k 1M'
# Restrict filenames
			--restrict-filenames


			'';
	};
}
