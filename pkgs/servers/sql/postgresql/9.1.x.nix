{ stdenv, fetchurl, zlib, readline }:

let version = "9.1.11"; in

stdenv.mkDerivation rec {
  name = "postgresql-${version}";

  src = fetchurl {
    url = "mirror://postgresql/source/v${version}/${name}.tar.bz2";
    sha256 = "ccbc35aae1490ee5878b97a6aea48dad7465cdad296b380542e4303b68cc6f74";
  };

  buildInputs = [ zlib readline ];

  enableParallelBuilding = true;

  LC_ALL = "C";

  postInstall =
    ''
      mkdir -p $out/share/man
      cp -rvd doc/src/sgml/man1 $out/share/man
    '';

  passthru = {
    inherit readline;
    psqlSchema = "9.1";
  };

  meta = {
    homepage = http://www.postgresql.org/;
    description = "A powerful, open source object-relational database system";
    license = "bsd";
  };
}
