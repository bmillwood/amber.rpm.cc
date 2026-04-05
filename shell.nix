let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  packages = [
    (pkgs.ruby.withPackages (
      ps: with ps; [
        github-pages
        jekyll
        jekyll-paginate
        jekyll-sitemap
        jekyll-gist
        jekyll-feed
        jemoji
        jekyll-include-cache
      ]
    ))
  ];
  shellHook = ''
    echo "Run: jekyll serve --host 0.0.0.0"
  '';
}
