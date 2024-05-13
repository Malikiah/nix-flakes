{...}:
{
    services.yabai = {
      enable = true;
      extraConfig = ''
        #!/usr/bin/env sh # for this to work you must configure sudo such that it will be able to run the command without password see this wiki page for information: - https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)#configure-scripting-addition
        #
        yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
        sudo yabai --load-sa
        #
        
        # global settings
        yabai -m config \
        	focus_follows_mouse on \
        	mouse_follows_focus on \
        	focus_follows_mouse autoraise \
        	window_origin_display default \
        	window_placement second_child \
        	window_zoom_persist on \
        	window_shadow on \
        	window_animation_duration 0.0 \
        	window_animation_frame_rate 120.0 \
        	window_opacity_duration 0.0 \
        	window_border on \
        	window_border_width 12.0 \
        	window_active_border_color 0xff775759 \
        	normal_window_border_color 0xff555555 \
        	active_window_opacity 1.0 \
        	normal_window_opacity 1.0 \
        	window_opacity on \
        	insert_feedback_color 0xffd75f5f \
        	split_ratio 0.50 \
        	split_type auto \
        	auto_balance on \
        	top_padding 6 \
        	bottom_padding 6 \
        	left_padding 6 \
        	right_padding 6 \
        	window_gap 12 \
        	layout bsp \
        	mouse_modifier fn \
        	mouse_action1 move \
        	mouse_action2 resize \
        	mouse_drop_action swap
        
        #yabai -m rule --add app="^System Settings$" sticky=on layer=above manage=off
        #yabai -m rule --add app="^Digital Color Meter$" sticky=on layer=above manage=off
        #yabai -m window --toggle border
        
        echo "yabai configuration loaded.."
        '';
    };
}