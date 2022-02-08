{ pkgsLib, ... }:
{
  baseUrl = "https://josphh.pwak.org/";

  posts = [

  ];
  pages = {
    index = {
      path = "index.html";
      title = "About me";
      body.markdown = bulitins.readFile ./markdown/index.md;
    }
  }
}
