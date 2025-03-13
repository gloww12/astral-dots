# python.nix
with (import <nixpkgs> {});
let
  pyp = python311Packages;
in mkShell {
  allowUnfree = true;
  packages = with pkgs; [
    cowsay
    vscodium
    jetbrains.pycharm-professional
    pyp.ipykernel
    pyp.pandas
    pyp.requests
    pyp.scipy
    pyp.pillow
    pyp.defusedxml
    pyp.ffmpeg-python
    pyp.protobuf
    pyp.pycryptodomex
    pyp.tqdm
    pyp.mutagen
    pyp.m3u8
    pyp.jupyter
    pyp.ipykernel
    pyp.matplotlib
    pyp.setuptools
    pyp.scikit-learn
    pyp.clickgen
    pyp.seaborn
    pyp.astroid
    pyp.colorama
    pyp.isort
    pyp.pylint
    pyp.mccabe
    pyp.lazy-object-proxy
    pyp.wrapt
    pyp.six
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      numpy
      dialog
    ]))
  ];
  shellHook = ''
    cowsay python
  '';
}

