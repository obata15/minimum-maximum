<html>

<head>
  <title>{Title}</title>
  <link rel="shortcut icon" href="{Favicon}">
  <link rel="alternate" type="application/rss+xml" href="{RSS}">
  {block:Description}
    <meta name="description" content="{MetaDescription}" />
  {/block:Description}
</head>

<body>
  <h1>{Title}</h1>

  {block:Description}
    <p id="description">{Description}</p>
  {/block:Description}

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

  <p id="footer">
    {block:PreviousPage}
      <a href="{PreviousPage}">&#171; Previous</a>
      {/block:PreviousPage}{block:NextPage}
      <a href="{NextPage}">Next &#187;</a>
    {/block:NextPage}

    <a href="/archive">Archive</a>
  </p>
</body>

</html>
