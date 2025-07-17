let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.black
      pkgs.isort
      (pkgs.python3.withPackages (python-pkgs: [
        # select Python packages here
        python-pkgs.xlib
        python-pkgs.evdev
      ]))
      pkgs.xclip
      pkgs.rofi
    ];
  }
