{ stdenv, fetchurl, pkgconfig, fuse }:

stdenv.mkDerivation rec {
  pname = "libbde";
  version = "20191221";

  nativeBuildInputs = [pkgconfig];
  buildInputs = [fuse];

  src = fetchurl {
    url = "https://github.com/libyal/libbde/releases/download/${version}/libbde-alpha-${version}.tar.gz";
    sha256 = "0v1b7xzph2hacwxkr94m5xzh2y7dk45vxhaw8vgl085d60k8xc5a";
  };
}
