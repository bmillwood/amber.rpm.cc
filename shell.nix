let
  pkgs = import <nixpkgs> {};
in
pkgs.ruby.withPackages (ps: with ps; [
  github-pages
  jekyll
  jekyll-paginate
  jekyll-sitemap
  jekyll-gist
  jekyll-feed
  jemoji
  jekyll-include-cache
])
