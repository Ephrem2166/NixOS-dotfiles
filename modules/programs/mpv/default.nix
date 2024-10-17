{pkgs, ...}:
{
  programs.mpv = {
    enable = true;
    config = {
      fullscreen = "yes";
      force-seekable = "yes";
      cursor-autohide = 1000;
      cache = "yes";
      demuxer-max-bytes="1800M";
      demuxer-max-back-bytes="1200M";
      autofit-larger="100%x100%";
      osd-duration=500;
      osd-font="Ubuntu";
      osd-font-size=24;
      osd-bar="no";
      border="no";
      slang="en,eng";
      alang="en,eng";
      volume=80;
      volume-max=200;
      sub-font="Noto Sans";
      sub-bold="yes";
      sub-font-size=48;
      sub-blur=0.1;
      sub-border-size=3;
      sub-color="#FFFFFF";
      sub-fix-timing="yes";
      sub-margin-x=100;
      sub-margin-y=50;
      sub-scale=1.0;
      sub-shadow-color="0.0/0.0/0.0";
      sub-shadow-offset=2;
      sub-ass-override="no";
      sub-auto = "fuzzy";
      sub-file-paths-append="srt,sub,subs,Subs,Sub,subtitles,Subtitles";
      blend-subtitles="yes";
      sub-scale-with-window="yes";
      embeddedfonts="yes";
      screenshot-sw="yes";
      screenshot-format="png";
      screenshot-high-bit-depth="yes";
      screenshot-png-compression=3;
      screenshot-jpeg-quality=95;
      screenshot-directory="~/Pictures/mpv/";
      screenshot-template="%f-%wH.%wM.%wS.%wT-#%#00n";

    };
    scripts = [
      pkgs.mpvScripts.uosc
      pkgs.mpvScripts.mpris
      pkgs.mpvScripts.thumbfast
    ];
  };
}
