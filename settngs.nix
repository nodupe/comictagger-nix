with import <nixpkgs> {};
with pkgs.python3Packages;

buildPythonPackage rec {
  name = "settngs";
  version = "0.7.1";

  src = pkgs.fetchFromGitHub {
    
    owner = "lordwelch";
    repo = "settngs";
    rev = "0.7.1";
#    url = "https://github.com/lordwelch/settngs/archive/refs/tags/0.7.1.tar.gz";
    sha256 = "NXc/IzTLo8DGZhR1qp/v1KmzpPc3X7hp70uPDUU0AnQ=";
  };
    propagatedBuildInputs = [
    # ...
      setuptools
      python3Packages.typing-extensions
      python3Packages.pytest
  ];
  meta = {
    homepage = "https://github.com/lordwelch/settngs/";
    description = "A library for managing settings";
#    license = licenses.bsd3;
    maintainers = with maintainers; [ lordwelch ];
  };
}
