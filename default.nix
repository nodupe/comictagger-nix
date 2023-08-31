{ lib
, python3
, fetchFromGitHub
}:
let
  text2digits = import ./text2digits.nix;
  wordninja = import ./wordninja.nix;
  settngs = import ./settngs.nix;

in
python3.pkgs.buildPythonApplication rec {
  pname = "comictagger";
  version = "1.5.5";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "comictagger";
    repo = "comictagger";
    rev = "e5f6a7d1d636eccf68538283aac898f82fed082d";
    hash = "sha256-v9sYAonUUgxznQJB3uTI4IHDEhMLwW0FxC1nPcsQU0U=";
    leaveDotGit = true;
    deepClone = true;
    fetchSubmodules = true;

};

  nativeBuildInputs = with python3.pkgs; [
    setuptools
#    python3.pkgs.setuptools-scm
    wheel
    beautifulsoup4
    importlib-metadata
    natsort
    pathvalidate
    pillow
    pycountry
    pyicu
    rapidfuzz
    requests
    text2digits
    typing-extensions
    wordninja
    settngs
    rarfile

  ];
 
  propagatedBuildInputs = with python3.pkgs; [

    rarfile
    beautifulsoup4
    importlib-metadata
    natsort
    pathvalidate
    pillow
    pycountry
    pyicu
    rapidfuzz
    requests
    text2digits
    typing-extensions
    wordninja
    settngs
  ];

  pythonImportsCheck = [ "comictagger" ];

  meta = with lib; {
    description = "A multi-platform app for writing metadata to digital comics";
    homepage = "https://github.com/comictagger/comictagger";
    license = licenses.unfree; # FIXME: nix-init did not found a license
    maintainers = with maintainers; [ ];
    mainProgram = "comictagger";
  };
}
