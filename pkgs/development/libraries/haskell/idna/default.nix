{ cabal, punycode, stringprep, text }:

cabal.mkDerivation (self: {
  pname = "idna";
  version = "0.3.0";
  sha256 = "04w2mp9wa4mzdz4njx47j081jia8y000b46cw8vmx44fx8gv1zwp";
  buildDepends = [ punycode stringprep text ];
  meta = {
    description = "Implements IDNA (RFC 3490)";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
