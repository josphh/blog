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
    <h1><a href="/index.html">My Website</a></h1>
  '';

  posts = [
    {
      title = "Rust & Linux: A match made in heaven?";
      datetime = "2022-02-18";
      authors = [ "Joseph Nuttall" ];
      body.markdown = builtins.readFile ./markdown/rustLinuxKernal.md;
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
