{ pkgsLib, ... }:
{
  baseUrl = "https://josphh.pwak.org/";

  language =  "en-gb";

  styles = {
    custom = {
      path = "josphh.css";
      file = ./style.css;
    };
  };

  header.html = ''
    <h1>My Website</h1>
  '';

  posts = [
    {
      title = "Lorem Ipsum";
      datetime = "2022-01-31 20:10:05Z";
      authors = [ "Joseph Nuttall" ];
      body.markdown = builtins.readFile ./markdown/lorem.md;
    }
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
