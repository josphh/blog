{ pkgsLib, ... }:
{
  baseUrl = "https://josphh.pwak.org/";

  posts = [
    {
      title = "Lorem Ipsum";
      datetime = "2022-01-31 20:10:05Z";
      authors = [ "Joseph Gill-Nuttall" ];
      body.markdown = builtins.readFile ./markdown/lorem_ipsum.md;
    }
    {
      title = "another!";
      datetime = "2022-01-31 20:10:05Z";
      authors = [ "Joseph Gill-Nuttall" ];
      body.markdown = builtins.readFile ./markdown/extra.md;
    }
  ];
  pages.postsIndex.path = pkgsLib.mkForce "index.html";
}
