{ pkgsLib, ... }:
{
  baseUrl = "https://josphh.pwak.org/";

  language =  "en-gb";

  styles = {
    custom = {
      path = "style.css";
      css = builtins.readFile ./style.css;
    };
  };

  header.html = ''
    <h1><a href="/index.html">JMGN</a></h1>
  '';

  posts = [
    {
      title = "Rust & Linux: A match made in heaven?";
      datetime = "2022-02-27";
      authors = [ "Joseph Gill-Nuttall" ];
      body.markdown = builtins.readFile ./markdown/rustLinuxKernal.md;
    }
  ];
  pages = {
    index = {
      path = "index.html";
      title = "Homepage";
      body.markdown = builtins.readFile ./markdown/index.md;
      meta.author = "Joseph Nuttall";
    };
  };
}
