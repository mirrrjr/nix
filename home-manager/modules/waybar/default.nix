{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 26;
        modules-left = ["hyprland/workspaces"];
        modules-center = ["clock"]; # hyprland/window
        modules-right = ["hyprland/language" "network" "pulseaudio" "battery" "tray"];
        "hyprland/workspaces" = {
          disable-scroll = true;
          show-special = true;
          special-visible-only = true;
          all-outputs = false;
          format = "{icon}";
          format-icons = {
            "1" = "";
            "2" = "";
            "3" = "";
            "4" = "";
            "5" = "";
            "6" = "";
            "7" = "";
            "8" = "";
            "9" = "";
            "magic" = "";
          };

          persistent-workspaces = {
            "*" = 9;
          };
        };

        "hyprland/language" = {
          format-en = "us";
          format-ru = "ru";
          min-length = 5;
          tooltip = false;
        };

        # "custom/weather" = {
        #   format = " {} ";
        #   exec = "curl -s 'wttr.in/Tashkent?format=%c%t'";
        #   interval = 300;
        #   class = "weather";
        # };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% ";
          format-muted = "";
          format-icons = {
            "headphones" = "";
            "handsfree" = "";
            "headset" = "";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = ["" ""];
          };
          on-click = "pavucontrol";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 1;
          };
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = ["" "" "" "" ""];
        };

        "network" = {
          interface = "wlp4s0";
          format = "{ifname}";
          # format-wifi = "{essid} ({signalStrength}%) ";
          format-ethernet = "{ipaddr}/{cidr} 󰊗";
          format-disconnected = ""; # An empty format will hide the module.
          tooltip-format = "{ifname} via {gwaddr} 󰊗";
          tooltip-format-wifi = "{essid} ({signalStrength}%) ";
          tooltip-format-ethernet = "{ifname} ";
          tooltip-format-disconnected = "Disconnected";
          max-length = 90;
        };

        "clock" = {
          format = "{%H:%M | %d/%m/%Y}";
          format-alt = "{:%A, %B %d at %R}";
        };

        "tray" = {
          icon-size = 11;
          spacing = 1;
        };
      };
    };
  };
}
