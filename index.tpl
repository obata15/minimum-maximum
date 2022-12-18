<!DOCTYPE html>
<html lang="{text:Language BCP47}">

<head>
  <meta name="text:Language BCP47" content="en">
  <meta name="text:Aside text color" content="#eeeeee">

  <link rel="shortcut icon" href="{Favicon}">
  <link rel="alternate" type="application/rss+xml" href="{RSS}">
  <link rel="apple-touch-icon-precomposed" href="{PortraitURL-128}">
  <link href="https://unpkg.com/sanitize.css" rel="stylesheet" />

  <title>{Title}</title>

  <meta name="description" content="{MetaDescription}" />

  <style>
    body {
      background: {BackgroundColor};
    }

    h1 {
      color: {TitleColor};
    }

    a {
      color: {AccentColor};
    }

    footer,
    footer a {
      color: {text:Aside text color};
    }
  </style>
</head>

<body>
  <header>
    {block:HomePage}
      {block:ShowTitle}
        <h1><a href="/">{Title}</a></h1>
      {/block:ShowTitle}

      {block:ShowDescription}
        <p id="description">{Description}</p>
      {/block:ShowDescription}
    {/block:HomePage}
    {block:PermalinkPage}
      <nav><a href="/">{Title}</a></nav>
    {/block:PermalinkPage}
  </header>

  <ol id="posts">
    {block:Posts}
      <li class="post">
        {block:Text}
          {block:Title}
            <h2><a href="{Permalink}">{Title}</a></h2>
          {/block:Title}
          {Body}
        {/block:Text}
        {block:Photo}
          <strong>Photo post is not supported.</strong>
        {/block:Photo}
        {block:Panorama}
          <strong>Panorama post is not supported.</strong>
        {/block:Panorama}
        {block:Photoset}
          <strong>Photoset post is not supported.</strong>
        {/block:Photoset}
        {block:Quote}
          <strong>Quote post is not supported.</strong>
        {/block:Quote}
        {block:Link}
          <strong>Link post is not supported.</strong>
        {/block:Link}
        {block:Chat}
          <strong>Chat post is not supported.</strong>
        {/block:Chat}
        {block:Video}
          <strong>Video post is not supported.</strong>
        {/block:Video}
        {block:Audio}
          <strong>Audio post is not supported.</strong>
        {/block:Audio}
      </li>
    {/block:Posts}
  </ol>

  <nav id="footer-navigation">
    {block:PreviousPage}
      <a href="{PreviousPage}">&#171; Previous</a>
      {/block:PreviousPage}{block:NextPage}
      <a href="{NextPage}">Next &#187;</a>
    {/block:NextPage}

    <a href="/archive">Archive</a>
  </nav>

  <footer>
    Powered by
    <a href="https://www.tumblr.com/">Tumblr</a>
    and
    <a href="https://github.com/obata15/minimum-maximum">Minimum-Maximum Theme</a>
  </footer>
</body>

</html>
