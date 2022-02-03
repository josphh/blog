{
  baseUrl = "https://josphh.pwak.org/";
}

{ pkgsLib }:
{
  # (other options here)
  pages.postsIndex.path = pkgsLib.mkForce "index.html";
}
