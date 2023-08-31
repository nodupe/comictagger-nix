with import <nixpkgs> {};

pkgs.python3Packages.buildPythonPackage rec {
  name = "text2digits";
  version = "0.9.9";

  src = pkgs.fetchurl{
    url = "https://github.com/ShailChoksi/text2digits/archive/refs/heads/master.zip";
    sha256 = "0QHmCvzpUMQVMtifSgrkHgozvRRco2gSFQ/ak2ZTSYk=";
  };

  meta = {
    homepage = "http://github.com/ShailChoksi/text2digits";
    description = "Converts text such as 'twenty three' to number/digit '23' in any sentence";
#    license = licenses.bsd3;
    maintainers = with maintainers; [ ShailChoksi ];
  };
}
