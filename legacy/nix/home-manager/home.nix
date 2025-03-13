{ config, pkgs, ... }:
let
  configFilesToLink = {
    
  };
  variant = "mocha";
  accent = "yellow";
  kvantumThemePackage = pkgs.catppuccin-kvantum.override {
    inherit variant accent;
  };
in
{
  imports = [
    <catppuccin/modules/home-manager>
  ];
  home.username = "glow";
  home.homeDirectory = "/home/glow";
  catppuccin = {
    flavor = "mocha";
    accent = "yellow";
    enable = true;
  };
  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style.name = "kvantum";
  };
  gtk = {
    enable = true;
    gtk3.extraConfig.gtk-decoration-layout = "menu";
    cursorTheme = {
      name = "Banana";
      package = pkgs.banana-cursor;
    };
    iconTheme = {
      name = "Dracula";
      package = pkgs.dracula-icon-theme;
    };
    catppuccin = {
      enable = true; # this throws a scary error but theres no replacement yet so 🍌 the issue literally says yea we give up
      accent = "yellow";
    };
  };
  xdg.configFile = { # please future hannah dont touch this unless its broken
    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=Catppuccin-Mocha-Yellow
    '';
    "Kvantum/Catppuccin-Mocha-Yellow".source = "${kvantumThemePackage}/share/Kvantum/Catppuccin-Mocha-Yellow";
  };

  home.stateVersion = "24.05"; # dont touch please

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    qbittorrent
    stremio
    vesktop
    obsidian
    tidal-hifi
    # libreoffice-qt
    # hunspell
    zathura
    syncthing
    gh
    glow
    blanket
    r2modman
    gimp
    (catppuccin-kvantum.override {
      accent = "yellow";
      variant = "mocha";
    })
    # uni
    ruby # uni
    rubocop # uni
    ruby-lsp # uni
    # ghc # haskell compiler (uni)
    # haskell-language-server # uni
    gradle
    jetbrains.idea-ultimate
    postman
    jdk17
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/glow/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    GTK_THEME = "catppuccin mocha";
    # EDITOR = "emacs";
  };
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
