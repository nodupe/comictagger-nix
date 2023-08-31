with import <nixpkgs> {};
with pkgs.python3Packages;

buildPythonPackage rec {
  name = "wordninja";
#  version = "0.7.1";
  format = "pyproject";

  src = pkgs.fetchFromGitHub {
    owner = "keredson";
    repo = "wordninja";
    rev = "0421d148cd3d88e4f075aa9c703006f31809e9e5";
#    url = "https://github.com/keredson/wordninja/archive/refs/heads/master.zip";
    sha256 = "oI4gf41XODByf3dnu0nB7ucYGYLvLg+aEywq0ClhuFk=";
  };
    propagatedBuildInputs = [
    # ...
    setuptools
  ];
  meta = {
    homepage = "https://github.com/keredson/wordninja.git";
    description = "Probabilistically split concatenated words using NLP based on English Wikipedia unigram frequencies.s";
#    license = licenses.bsd3;
    maintainers = with maintainers; [ keredson ];
  };
}
