<!DOCTYPE html>
<html lang="{text:Language BCP47}">

<head>
  <meta name="text:Language BCP47" content="en">
  <meta name="text:Aside text color" content="#eeeeee">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="shortcut icon" href="{Favicon}">
  <link rel="alternate" type="application/rss+xml" href="{RSS}">
  <link rel="apple-touch-icon-precomposed" href="{PortraitURL-128}">
  <link href="https://unpkg.com/sanitize.css" rel="stylesheet" />

  <title>{Title}</title>

  <meta name="description" content="{MetaDescription}" />

  <style>
    body {
      padding: 10px;
      background: {BackgroundColor};
    }

    a {
      color: {AccentColor};
    }

    header a,
    #posts a {
      text-decoration: none;
      color: {TitleColor};
    }

    .portrait-icon {
      border-radius: 128px;
    }

    header#full-header {
      text-align: center;
    }

    header#full-header .portrait-icon {
      height: 64px;
      width: 64px;
    }

    header#full-header h1 {
      margin: 0px;
    }

    header#full-header p {
      margin: 0;
      color: {text:Aside text color};
    }

    header#compact-header {
      /* depends on Tumblr header size */
      height: 54px;
      line-height: 54px;
    }

    header#compact-header .portrait-icon {
      display: inline-block;
      height: 1.5rem;
      width: 1.5rem;
    }

    h1 {
      color: {TitleColor};
    }

    nav#pagination {
      margin-top: 2rem;
      margin-bottom: 2rem;
      text-align: center;
      font-size: 1.5rem;
    }

    footer {
      text-align: center;
    }

    footer,
    footer a {
      color: {text:Aside text color};
    }
  </style>
</head>

<body>
  {block:HomePage}
    <header id="full-header">
      {block:ShowTitle}
        <img src="{PortraitURL-128}" alt="{URLEncodedName}" class="portrait-icon" />
        <h1>
          <a href="/">{Title}</a>
        </h1>
      {/block:ShowTitle}
      {block:ShowDescription}
        <p id="description">{Description}</p>
      {/block:ShowDescription}
    </header>
  {/block:HomePage}
  {block:PermalinkPage}
    <header id="compact-header">
      <nav>
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" class="portrait-icon" />
          {Title}
        </a>
      </nav>
    </header>
  {/block:PermalinkPage}

  <ol id="posts">
    {block:Posts}
      <li class="post">
        {block:Text}
          {block:Title}
            <a href="{Permalink}">{Title}</a>
          {/block:Title}
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

  <nav id="pagination">
    {block:PreviousPage}
      <a href="{PreviousPage}">&lt; Newer</a>
    {/block:PreviousPage}
    {block:NextPage}
      <a href="{NextPage}">Older &gt;</a>
    {/block:NextPage}
  </nav>

  <footer>
    Powered by
    <a href="https://www.tumblr.com/">Tumblr</a>
    and
    <a href="https://github.com/obata15/minimum-maximum">Minimum-Maximum Theme</a>
  </footer>
</body>

</html>
