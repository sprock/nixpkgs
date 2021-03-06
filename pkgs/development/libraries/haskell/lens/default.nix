{ cabal, bifunctors, comonad, contravariant, deepseq, distributive
, doctest, filepath, genericDeriving, hashable, HUnit
, MonadCatchIOTransformers, mtl, nats, parallel, profunctors
, QuickCheck, reflection, semigroupoids, semigroups, simpleReflect
, split, tagged, testFramework, testFrameworkHunit
, testFrameworkQuickcheck2, testFrameworkTh, text, transformers
, transformersCompat, unorderedContainers, vector, void
}:

cabal.mkDerivation (self: {
  pname = "lens";
  version = "3.10.1";
  sha256 = "0xjjld1ra1a0a739ia8swgbpw7r72hv0bs9akbqr9wyw8qdzibnh";
  buildDepends = [
    bifunctors comonad contravariant distributive filepath
    genericDeriving hashable MonadCatchIOTransformers mtl parallel
    profunctors reflection semigroupoids semigroups split tagged text
    transformers transformersCompat unorderedContainers vector void
  ];
  testDepends = [
    deepseq doctest filepath genericDeriving HUnit mtl nats parallel
    QuickCheck semigroups simpleReflect split testFramework
    testFrameworkHunit testFrameworkQuickcheck2 testFrameworkTh text
    transformers unorderedContainers vector
  ];
  doCheck = false;
  meta = {
    homepage = "http://github.com/ekmett/lens/";
    description = "Lenses, Folds and Traversals";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
