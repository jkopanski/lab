final: prev: {
  agdaPackages = prev.agdaPackages // {
    standard-library = prev.agdaPackages.standard-library.overrideAttrs (_: {
      version = "2.0";
      src = final.fetchFromGitHub {
        repo = "agda-stdlib";
        owner = "agda";
        rev = "v2.0";
        hash = "sha256-TjGvY3eqpF+DDwatT7A78flyPcTkcLHQ1xcg+MKgCoE=";
      };
    });
  };
}
