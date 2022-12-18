<!DOCTYPE html>
<html lang="{text:Language BCP47}">

<head>
  <meta name="text:Language BCP47" content="en">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="shortcut icon" href="{Favicon}">
  <link rel="alternate" type="application/rss+xml" href="{RSS}">
  <link rel="apple-touch-icon-precomposed" href="{PortraitURL-128}">
  <link href="https://unpkg.com/sanitize.css" rel="stylesheet" />

  <title>{Title}</title>

  <meta name="description" content="{MetaDescription}" />

  <style>
    body {
      background: {BackgroundColor};
      color: {TitleColor};
    }

    header a {
      color: {TitleColor};
    }

    ol#posts>li>a {
      color: {TitleColor};
    }

    @media (prefers-color-scheme: dark) {
      body {
        background: {TitleColor};
        color: {BackgroundColor};
      }

      header a {
        color: {BackgroundColor};
      }

      ol#posts>li>a {
        color: {BackgroundColor};
      }

    }

    body {
      padding: 10px;
    }

    a {
      text-decoration: none;
      color: {AccentColor};
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
      opacity: 0.5;
    }

    main {
      max-width: 960px;
      margin: auto;
    }

    h1 {
      margin-bottom: 0;
    }

    ol#posts {
      list-style-type: none;
      padding-left: 0;
      font-size: 2rem;
      font-weight: bold;
    }

    ol#posts>li {
      margin-bottom: 1rem;
    }

    ul.date-and-tags {
      list-style-type: none;
      font-size: 1rem;
      font-weight: normal;
      padding-left: 0;
    }

    ul.date-and-tags li {
      display: inline;
    }

    ul.date-and-tags li.date {
      opacity: 0.5;
    }

    nav.bottom {
      margin-top: 2rem;
      margin-bottom: 2rem;
      text-align: center;
    }

    nav.bottom.home-navigation {
      text-align: center;
      font-size: 1.5rem;
    }

    nav.bottom.home-navigation a {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    nav.bottom.home-navigation .portrait-icon {
      display: inline-block;
      height: 1.2rem;
      width: 1.2rem;
      margin-top: -3px;
      border: solid 2px;
    }

    nav.bottom.pagination {
      font-size: 1.5rem;
    }

    footer {
      text-align: center;
    }

    footer>span {
      opacity: 0.5;
    }

    footer a {
      opacity: 1;
    }
  </style>
</head>

<body>
  {block:PermalinkPage}
    <main>
      {block:Posts}
        <article>
          {block:Text}
            <h1>{Title}</h1>
            <ul class="date-and-tags">
              <li class="date">{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
              {block:Tags}
                <li class="tag"><a href="{TagURL}">#{Tag}</a></li>
              {/block:Tags}
            </ul>
            {Body}
          {/block:Text}
        </article>
      {/block:Posts}
    </main>

    <nav class="bottom home-navigation">
      <a href="/">
        <span>H</span><img src="{PortraitURL-128}" alt="{URLEncodedName}" class="portrait-icon" /><span>ME</span>
      </a>
    </nav>
  {/block:PermalinkPage}

  {block:IndexPage}
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

    <main>
      {block:TagPage}
        <h1>Posts tagged "{Tag}"</h1>
      {/block:TagPage}

      <ol id="posts">
        {block:Posts}
          <li class="post">
            {block:Text}
              <a href="{Permalink}">{Title}</a>
              <ul class="date-and-tags">
                <li class="date">{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
              </ul>
            {/block:Text}

            {block:Photo}
              <strong>[WARNING] Photo post is not supported.</strong>
            {/block:Photo}
            {block:Panorama}
              <strong>[WARNING] Panorama post is not supported.</strong>
            {/block:Panorama}
            {block:Photoset}
              <strong>[WARNING] Photoset post is not supported.</strong>
            {/block:Photoset}
            {block:Quote}
              <strong>[WARNING] Quote post is not supported.</strong>
            {/block:Quote}
            {block:Link}
              <strong>[WARNING] Link post is not supported.</strong>
            {/block:Link}
            {block:Chat}
              <strong>[WARNING] Chat post is not supported.</strong>
            {/block:Chat}
            {block:Video}
              <strong>[WARNING] Video post is not supported.</strong>
            {/block:Video}
            {block:Audio}
              <strong>[WARNING] Audio post is not supported.</strong>
            {/block:Audio}
          </li>
        {/block:Posts}
      </ol>
    </main>

    {block:Pagination}
      <nav class="bottom pagination">
        {block:PreviousPage}
          <a href="{PreviousPage}">&lt; Newer</a>
        {/block:PreviousPage}
        {block:NextPage}
          <a href="{NextPage}">Older &gt;</a>
        {/block:NextPage}
      </nav>
    {/block:Pagination}
  {/block:IndexPage}

  <footer>
    <span>Powered by</span>
    <a href="https://www.tumblr.com/">Tumblr</a>
    <span>with</span>
    <a href="https://github.com/obata15/minimum-maximum">Minimum-Maximum</a>
  </footer>
</body>

</html>
