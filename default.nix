{ pkgsLib, ... }:
{
  baseUrl = "https://josphh.pwak.org/";

  language =  "en-gb";

  siteTitle = "JMGN";

  styles = {
    custom = {
      path = "style.css";
      css = builtins.readFile ./style.css;
    };
  };


  posts = [
    {
      title = "Rust & Linux: A match made in heaven?";
      datetime = "2022-02-27";
      authors = [ "Joseph Gill-Nuttall" ];
      body.markdown = builtins.readFile ./markdown/rustLinuxKernel.md;
      page.meta.description = "A case study of Rust in the Linux kernel.";
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
