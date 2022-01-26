conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 5,
    gap_y = -95,
    minimum_width = 200,
    maximum_width = 2000,
    minimum_height = 200,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'dock',

    -- Text settings
    uppercase = true,
    use_xft = true,
    override_utf8_locale = true
};

conky.text = [[
${if_running spotify}${color #aaa}${font Gotham Book:pixelsize=10}NOW PLAYING:
${font Gotham:style=bold:pixelsize=10}
${color #aaa}${font Gotham Book:pixelsize=15}                 ${font Gotham Book:pixelsize=45}${exec playerctl -p spotify metadata title}${font Gotham:style=bold:pixelsize=10}
${color #aaa}${font Gotham:pixelsize=15}                 ${font Gotham:style=bold:pixelsize=21}${exec playerctl -p spotify metadata artist}${font Gotham:style=bold:pixelsize=1}

${else}${if_match "" != "${exec playerctl -p spotifyd status}"}${color #fff}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color #fff}${font Gotham Book:pixelsize=15}
${color #fff}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p spotifyd metadata artist}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p spotifyd metadata title}

${else}${if_match "" != "${exec playerctl -p vlc status}"}${color #fff}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color #fff}${font Gotham Book:pixelsize=15}
${color #fff}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p vlc metadata artist}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p vlc metadata title}

${else}${if_match "" != "${exec playerctl -p Lollypop status}"}${color #fff}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color #fff}${font Gotham Book:pixelsize=15}
${color #fff}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p Lollypop metadata artist}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p Lollypop metadata title}

${else}${if_running cmus}${color #fff}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color #fff}${font Gotham Book:pixelsize=15}
${color #fff}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec cmus-remote -Q 2>/dev/null | grep 'tag artist' | cut -d " " -f 3-}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham:style=bold:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- }

${else}${color #bbb}${font Gotham Book:pixelsize=66}${time %H:%M:%S}${font Gotham Book:pixelsize=25}
${color #bbb}${font Montserrat Light:pixelsize=30} ${time %B}${time %d}${if_match ${time %d}==1}st${else}${if_match ${time %d}==2}nd${else}${if_match ${time %d}==3}rd${else}${if_match ${time %d}==4}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==7}th${else}${if_match ${time %d}==8}th${else}${if_match ${time %d}==9}th${else}${if_match ${time %d}==10}th${else}${if_match ${time %d}==11}th${else}${if_match ${time %d}==12}th${else}${if_match ${time %d}==13}th${else}${if_match ${time %d}==14}th${else}${if_match ${time %d}==15}th${else}${if_match ${time %d}==16}th${else}${if_match ${time %d}==17}th${else}${if_match ${time %d}==18}th${else}${if_match ${time %d}==19}th${else}${if_match ${time %d}==20}th${else}${if_match ${time %d}==21}st${else}${if_match ${time %d}==22}nd${else}${if_match ${time %d}==23}rd${else}${if_match ${time %d}==24}th${else}${if_match ${time %d}==25}th${else}${if_match ${time %d}==26}th${else}${if_match ${time %d}==27}th${else}${if_match ${time %d}==28}th${else}${if_match ${time %d}==29}th${else}${if_match ${time %d}==30}th${else}${if_match ${time %d}==31}st${else}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif} ${time %Y}${endif}${endif}${endif}${endif}${endif}
]];
