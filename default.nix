{
  baseUrl = "https://josphh.pwak.org/";
}

{ pkgsLib, ... }:
{
  baseUrl = "https://josphh.pwak.org/";
  pages.postsIndex.path = pkgsLib.mkForce "index.html";
}
