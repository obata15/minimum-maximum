<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />

  <meta name="text:Font Family" content="sans-serif" />
  <meta name="text:Paragraph Line Height In Article" content="1.5" />
  <meta name="if:Show Thumbnails" content="0" />
  <meta name="text:Google Site Verification ID" content="" />
  <meta name="text:Google Tag Manager ID" content="" />

  {block:IfGoogleTagManagerID}
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={text:Google Tag Manager ID}"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '{text:Google Tag Manager ID}');
    </script>
  {/block:IfGoogleTagManagerID}

  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="theme-color" content="{AccentColor}" />
  {block:IfGoogleSiteVerificationID}
    <meta name="google-site-verification" content="{text:Google Site Verification ID}" />
  {/block:IfGoogleSiteVerificationID}

  <link rel="shortcut icon" href="{Favicon}" />
  <link rel="alternate" type="application/rss+xml" href="{RSS}" />
  <link rel="apple-touch-icon-precomposed" href="{PortraitURL-128}" />
  <link href="https://unpkg.com/sanitize.css" rel="stylesheet" />

  <title>{Title}</title>

  <meta name="description" content="{MetaDescription}" />

  <style>
    body {
      background: {BackgroundColor};
      color: {TitleColor};
      font-family: {text:Font Family};
    }

    header a {
      color: {TitleColor};
    }

    ol#posts li.post a {
      color: {TitleColor};
    }

    ul.metas li.date a {
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

      ol#posts li.post a {
        color: {BackgroundColor};
      }

      ul.metas li.date a {
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

    header {
      text-align: center;
    }

    header .portrait-icon {
      height: 64px;
      width: 64px;
    }

    header h1 {
      margin: 0px;
    }

    header p {
      margin: 0;
      opacity: 0.5;
    }

    header#compact-header a {
      display: flex;
      align-items: center;
      color: {AccentColor};
    }

    header#compact-header a img {
      width: 2em;
      height: 2em;
    }

    header#compact-header a .title {
      margin-left: 0.5em;
      font-size: 1.5rem;
      font-weight: bold;
    }

    main {
      max-width: 40em;
      margin: auto;
    }

    main h1 {
      margin-bottom: 0;
    }

    main h1#tag-header {
      font-size: 1rem;
      text-align: center;
      font-weight: normal;
    }

    nav#menu ul {
      display: flex;
      gap: 1rem;
      justify-content: center;
    }

    article p {
      line-height: {text:Paragraph Line Height In Article};
      font-size: 18px;
    }

    ol#posts {
      list-style-type: none;
      padding-left: 0;
      font-size: 1.75rem;
      font-weight: bold;
    }

    ol#posts .post {
      margin-bottom: 2rem;
    }

    ol#posts .post .title {
      display: flex;
      align-items: baseline;
    }

    ol#posts li.post .title a:empty::after,
    /* Preview Selector */
    ol#posts li.post .title a span:empty::after {
      content: "∅";
    }

    ol#posts .post .title .thumbnails {
      cursor: pointer;
      display: flex;
    }

    ol#posts .post .title .thumbnails div {
      margin: 0;
    }

    ol#posts .post .title .thumbnails img {
      display: inherit;
      width: 0.8em;
      height: 0.8em;
      margin-left: 0.5em;
    }

    ol#posts .post .title .thumbnails a {
      pointer-events: none;
    }

    ol#posts .post .title .thumbnails p {
      display: none;
    }

    ul.metas {
      list-style-type: none;
      font-size: 1rem;
      font-weight: normal;
      padding-left: 0;
    }

    ul.metas li {
      display: inline;
    }

    ul.metas li.date {
      opacity: 0.5;
    }

    nav.bottom {
      margin-top: 2rem;
      margin-bottom: 2rem;
      text-align: center;
    }

    nav.bottom.home-navigation {
      font-size: 1.5rem;
      font-weight: bold;
    }

    nav.bottom.home-navigation a {
      display: flex;
      justify-content: center;
      align-items: baseline;
      margin: auto;
      width: 4em;
    }

    nav.bottom.home-navigation .portrait-icon {
      display: inline-block;
      height: 1.2rem;
      width: 1.2rem;
      margin-left: 2px;
      margin-right: 2px;
      border: solid 3px;
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
    <header id="compact-header">
      {block:ShowTitle}
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" class="portrait-icon" />
          {block:ShowTitle}
            <div class="title">{Title}</div>
          {/block:ShowTitle}
        </a>
      {/block:ShowTitle}
    </header>

    <main>
      {block:Posts}
        <article>
          {block:Text}
            <h1>{Title}</h1>
            <ul class="metas">
              {block:Date}
                <li class="date">{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
              {/block:Date}
              {block:Tags}
                <li class="tag"><a href="{TagURL}">#{Tag}</a></li>
              {/block:Tags}
            </ul>
            {Body}
          {/block:Text}
        </article>
      {/block:Posts}

      <nav class="bottom home-navigation">
        <a href="/">
          <span>H</span><img src="{PortraitURL-128}" alt="O" class="portrait-icon" /><span>ME</span>
        </a>
      </nav>
    </main>
  {/block:PermalinkPage}

  {block:IndexPage}
    <header>
      <a href="/"><img src="{PortraitURL-128}" alt="{URLEncodedName}" class="portrait-icon" /></a>
      {block:ShowTitle}
        <h1>
          <a href="/">{Title}</a>
        </h1>
      {/block:ShowTitle}
      {block:ShowDescription}
        <p id="description">{Description}</p>
      {/block:ShowDescription}
    </header>

    <main>
      <nav id="menu">
        <ul>
          {block:HasPages}
            {block:Pages}
              <li>
                <a href="{URL}">{Label}</a>
              </li>
            {/block:Pages}
          {/block:HasPages}
          <li>
            <a href="/archive">Archive</a>
          </li>
          {block:AskEnabled}
            <li>
              <a href="/ask">{AskLabel}</a>
            </li>
          {/block:AskEnabled}
        </ul>
      </nav>

      {block:TagPage}
        <h1 id="tag-header">Posts tagged "{Tag}"</h1>
      {/block:TagPage}

      <ol id="posts">
        {block:Posts}
          <li class="post">
            {block:Text}
              <div class="title">
                <a href="{Permalink}">{Title}</a>
                {block:IfShowThumbnails}
                  <div class="thumbnails" onclick="location.href='{Permalink}'">{Body}</div>
                {/block:IfShowThumbnails}
              </div>
              <ul class="metas">
                <li class="date"><a href="{Permalink}">{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</a></li>
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
    </main>
  {/block:IndexPage}

  <!-- Please remove followings and edit more code! -->
  <footer>
    <span>Powered by</span>
    <a href="https://www.tumblr.com/">Tumblr</a>
    <span>and</span>
    <a href="https://github.com/obata15/minimum-maximum">Minimum-Maximum</a>
  </footer>
</body>

</html>
