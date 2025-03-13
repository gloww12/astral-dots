{ config, pkgs, ... }: {
imports = [ ./hardware-configuration.nix ];

boot = {

  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  plymouth = {
    enable = true;
  };

  consoleLogLevel = 0;
  initrd.verbose = false;
  kernelParams = [
    "quiet"
    "splash"
    "boot.shell_on_fail"
    "loglevel=3"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
  ];

  loader.timeout = 0;

};

networking.hostName = "beans";
networking.networkmanager.enable = true;
networking.firewall.checkReversePath = false; 

time.timeZone = "Europe/London";
i18n.defaultLocale = "en_GB.UTF-8";
i18n.extraLocaleSettings = {
  LC_ADDRESS = "en_GB.UTF-8";
  LC_IDENTIFICATION = "en_GB.UTF-8";
  LC_MEASUREMENT = "en_GB.UTF-8";
  LC_MONETARY = "en_GB.UTF-8";
  LC_NAME = "en_GB.UTF-8";
  LC_NUMERIC = "en_GB.UTF-8";
  LC_PAPER = "en_GB.UTF-8";
  LC_TELEPHONE = "en_GB.UTF-8";
  LC_TIME = "en_GB.UTF-8";
};

services.xserver.xkb = {
  layout = "us";
  variant = "";
};

services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  jack.enable = true;
};

users.users.glow = {
  isNormalUser = true;
  description = "hannah";
  extraGroups = [ "networkmanager" "wheel" ];
  packages = with pkgs; [];
  shell = pkgs.fish;
};

nixpkgs.config.allowUnfree = true;

programs.steam = {
  enable = true;
  remotePlay.openFirewall = true;
  dedicatedServer.openFirewall = true;
  localNetworkGameTransfers.openFirewall = true;
};

nixpkgs.overlays = [(final: prev: {
    rofi-file-browser = prev.rofi-file-browser.override { rofi = prev.rofi-wayland; };
})];

environment.systemPackages = with pkgs; [
  vim
  kitty
  git
  fish
  zoxide
  (rofi-wayland.override {
    plugins = [ rofi-file-browser ];
  })
  rofimoji
  rofi-bluetooth
  rofi-rbw-wayland
  rofi-file-browser
  rbw
  pinentry-all
  cliphist
  ranger
  yazi
  waybar
  strawberry
  firefox
  flatpak
  dunst
  hyprpaper
  hyprpicker
  hyprsunset
  hypridle
  hyprland-protocols
  hyprutils
  starship
  brightnessctl
  playerctl
  librewolf
  qt6ct
  sddm
  ripgrep
  swaylock
  banana-cursor
  grim
  slurp
  swappy
  pwvucontrol
  openvpn
  mullvad-vpn
  wireguard-tools
  wireguard-ui
  nwg-look
  glib
  home-manager
  libsForQt5.qtstyleplugin-kvantum
  libsForQt5.qt5ct
  font-awesome
  plymouth
  python3
  wget
  bottom
  btop
  networkmanagerapplet
  lua
  vitetris
  wireplumber
  pamixer
  xdg-desktop-portal-hyprland
  xdg-desktop-portal-gtk
  obs-studio
  neovim
  lua-language-server
  java-language-server
  unzip
  gcc
  jq
  wl-clipboard
  sl
  vscodium
  prismlauncher
];

# sql for uni work
services.mysql= {
  enable = true;
  package = pkgs.mariadb;
};


services.flatpak.enable = true;

programs.hyprland = {
  enable = true;
  xwayland.enable = true;  
};

programs.fish.enable = true;

programs.thunar.enable = true;
programs.xfconf.enable = true;
services.gvfs.enable = true;
services.tumbler.enable = true;
programs.thunar.plugins = with pkgs.xfce; [
  thunar-archive-plugin
  thunar-volman
];

services.displayManager.sddm = {
  enable = true;
  wayland.enable = true;
};

fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "RobotoMono" ]; })
];

powerManagement.enable = true;
services.tlp = {
    enable = true;
    settings = {
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 20;
    };
};

nixpkgs.config.qt5 = {
  enable = true;
  platformTheme = "qt5ct";
  style = {
    package = pkgs.catppuccin-qt5ct;
    name = "catppuccin";
  };
};

hardware.bluetooth = {
  enable = true;
  powerOnBoot = true;
};

services.blueman.enable = true;

environment.variables.QT_QPA_PLATFORMTHEME = "qt5ct";

nix.settings.experimental-features = [ "nix-command" ];

services.logind.extraConfig = ''
  HandlePowerKey=ignore
'';

# programs.mtr.enable = true;
# programs.gnupg.agent = {
#   enable = true;
#   enableSSHSupport = true;
# };

services.openssh.enable = true;
programs.ssh.startAgent = true;

system.stateVersion = "24.05"; # Dont touch
}
