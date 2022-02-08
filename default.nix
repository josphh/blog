{ pkgsLib, ... }:
{
  baseUrl = "https://josphh.pwak.org/";

  posts = [

  ];
  pages = {
    index = {
      path = "index.html";
      title = "About me";
      body.markdown = builtins.readFile ./markdown/index.md;
      meta.author = "Joseph Nuttall";
    };
  };
}
