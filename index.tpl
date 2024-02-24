<html>

<head>
  <meta charset="utf-8" />

  <meta name="text:Font Family" content="sans-serif" />
  <meta name="text:Paragraph Line Height In Article" content="1.5" />
  <meta name="if:Show Thumbnails" content="0" />
  <meta name="if:Hide Thumblr Menu And Popup" content="0" />
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
  <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" rel="stylesheet" />

  <title>
    {block:TagPage}
      "{Tag}" |
    {/block:TagPage}
    {block:PermalinkPage}
      {block:PostSummary}
        {PostSummary}
      {/block:PostSummary}
      |
    {/block:PermalinkPage}
    {Title}
  </title>

  <meta name="description" content="{MetaDescription}" />

  <style>
    body {
      background: {BackgroundColor};
      color: {TitleColor};
      font-family: {text:Font Family};
    }

    a {
      color: {AccentColor};
      text-decoration: none;
    }

    a:visited {
      color: #777777;
    }

    a:hover {
      color: {AccentColor};
    }

    a.accent-color {
      color: {AccentColor};
    }

    a.title-color {
      color: {TitleColor};
    }

    a.visited-opacity:visited {
      color: #777777;
    }

    .opacity {
      opacity: 0.4;
    }

    @media (prefers-color-scheme: dark) {
      body {
        background: {TitleColor};
        color: {BackgroundColor};
      }

      a:not(:has(img)) {
        filter: brightness(150%);
      }

      a.title-color {
        color: {BackgroundColor};
      }
    }

    .text-center {
      text-align: center;
    }

    .align-bottom {
      vertical-align: bottom;
    }

    .p-0 {
      padding: 0;
    }

    .px-4 {
      padding-right: 1rem;
      padding-left: 1rem;
    }

    .py-6 {
      padding-top: 1.5rem;
      padding-bottom: 1.5rem;
    }

    .m-0 {
      margin: 0;
    }

    .my-1 {
      margin-top: 0.25rem;
      margin-bottom: 0.25rem;
    }

    .my-2 {
      margin-top: 0.5rem;
      margin-bottom: 0.5rem;
    }

    .my-3 {
      margin-top: 0.75rem;
      margin-bottom: 0.75rem;
    }

    .my-4 {
      margin-top: 1rem;
      margin-bottom: 1rem;
    }

    .my-6 {
      margin-top: 1.5rem;
      margin-bottom: 1.5rem;
    }

    .-my-0.1 {
      margin-top: -0.125rem;
      margin-bottom: -0.125rem;
    }

    .list-none {
      list-style-type: none;
    }

    .text-bold {
      font-weight: bold;
    }

    .text-sm {
      font-size: 0.875rem;
    }

    .text-xl {
      font-size: 1.25rem;
    }

    .text-2xl {
      font-size: 1.5rem;
    }

    .text-3xl {
      font-size: 1.875rem;
    }

    .block {
      display: block;
    }

    .inline-block {
      display: inline-block;
    }

    .leading-none {
      line-height: 1;
    }

    .leading-xl {
      line-height: 1.75rem;
    }

    .rounded-full {
      border-radius: 9999px;
    }

    .fill-empty:empty::after,
    .fill-empty span:empty::after {
      content: "∅";
    }

    .body {
      max-width: 45rem;
      margin: auto;
      padding-right: 1rem;
      padding-left: 1rem;
    }

    .ui {
      font-weight: 500;
      font-family: "Segoe UI", Roboto, sans-serif;
    }

    .flex-nav-list {
      line-height: 1;
      list-style-type: none;
      padding: 0;
      display: flex;
      gap: 1rem;
      justify-content: center;
      align-items: baseline;
    }
  </style>
</head>

<body class="body">
  {block:ifHideThumblrMenuAndPopup}
    <script>
      const mutationObserver = new MutationObserver((mutations) => {
        mutations.forEach((mutation) => {
          elements = document.getElementsByClassName("tmblr-iframe");
          while (elements.length) {
            elements.item(0).remove()
          }
        });
      });

      mutationObserver.observe(
        document.body, { childList: true, subtree: true }
      );
    </script>
  {/block:ifHideThumblrMenuAndPopup}

  {block:IndexPage}
    <header class="text-center">
      {block:ShowAvatar}
        <div class="my-4 block">
          <a href="/">
            <img src="{PortraitURL-128}" alt="{URLEncodedName}" class="align-bottom rounded-full" />
          </a>
        </div>
      {/block:ShowAvatar}
      {block:ShowTitle}
        <h1 class="my-3 leading-none text-3xl">
          <a href="/" class="title-color">
            {Title}
          </a>
        </h1>
      {/block:ShowTitle}
      {block:ShowDescription}
        <p class="my-2 leading-none opacity">
          {Description}
        </p>
      {/block:ShowDescription}
    </header>
    <nav class="text-center text-xl my-6 ui">
      <ul class="flex-nav-list">
        {block:HasPages}
          {block:Pages}
            <li>
              <a href="{URL}" class="accent-color">{Label}</a>
            </li>
          {/block:Pages}
        {/block:HasPages}
        <li>
          <a href="/archive" class="accent-color">Archive</a>
        </li>
      </ul>
    </nav>
    <main class="my-6">
      {block:TagPage}
        <h2>"{Tag}"</h2>
      {/block:TagPage}
      <ol class="-my-0.1 p-0 list-none leading-xl">
        {block:Posts}
          <li class="my-4">
            <p class="m-0 text-bold text-xl">
              {block:Text}
                <a href="{Permalink}" class="title-color visited-opacity fill-empty">{Title}</a>
              {/block:Text}
              {block:Photo}
                [WARNING] Photo post is not supported.
              {/block:Photo}
              {block:Panorama}
                [WARNING] Panorama post is not supported.
              {/block:Panorama}
              {block:Photoset}
                [WARNING] Photoset post is not supported.
              {/block:Photoset}
              {block:Quote}
                [WARNING] Quote post is not supported.
              {/block:Quote}
              {block:Link}
                [WARNING] Link post is not supported.
              {/block:Link}
              {block:Chat}
                [WARNING] Chat post is not supported.
              {/block:Chat}
              {block:Video}
                [WARNING] Video post is not supported.
              {/block:Video}
              {block:Audio}
                [WARNING] Audio post is not supported.
              {/block:Audio}
            </p>
            <a href="{Permalink}" class="inline-block title-color opacity">
              {Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}
            </a>
          </li>
        {/block:Posts}
      </ol>
      {block:Pagination}
        <nav class="text-center my-6 text-2xl ui">
          <ul class="flex-nav-list">
            {block:PreviousPage}
              <li><a href="{PreviousPage}" class="accent-color">&lsaquo;</a></li>
            {/block:PreviousPage}
            {block:JumpPagination length="5"}
              {block:CurrentPage}
                <li><span>{PageNumber}</span></li>
              {/block:CurrentPage}
              {block:JumpPage}
                <li><a href="{URL}" class="accent-color">{PageNumber}</a></li>
              {/block:JumpPage}
            {/block:JumpPagination}
            {block:NextPage}
              <li><a href="{NextPage}" class="accent-color">&rsaquo;</a></li>
            {/block:NextPage}
          </ul>
        </nav>
      {/block:Pagination}
    </main>
  {/block:IndexPage}

  {block:PermalinkPage}
    <header>
      {block:ShowTitle}
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" />
        </a>
        {block:ShowTitle}
          <a href="/">{Title}</a>
        {/block:ShowTitle}
      {/block:ShowTitle}
    </header>
    <main>
      {block:Posts}
        <article>
          {block:Text}
            <h1>{Title}</h1>
            <ul>
              {block:Date}
                <li>{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
              {/block:Date}
              {block:Tags}
                <li><a href="{TagURL}">#{Tag}</a></li>
              {/block:Tags}
            </ul>
            <section>
              {Body}
            </section>
          {/block:Text}
        </article>
        <aside>
          <ul>
            <li>{NoteCountWithLabel}</li>
            <li>{LikeButton color="grey"}</li>
            <li>{ReblogButton color="grey"}</li>
          </ul>
          {PostNotes}
        </aside>
      {/block:Posts}
      <nav>
        <a href="/">
          <span>H</span><span><img src="{PortraitURL-128}" alt="O" /></span><span>ME</span>
        </a>
      </nav>
    </main>
  {/block:PermalinkPage}

  <!-- Please remove followings and edit more code! -->
  <footer class="my-4 text-center text-sm">
    <span class="opacity">Powered by</span>
    <a href="https://www.tumblr.com/" target="_blank" class="accent-color">Tumblr</a>
    <span class="opacity">and</span>
    <a href="https://github.com/obata15/minimum-maximum" target="_blank" class="accent-color">Minimum-Maximum</a>
  </footer>
</body>

</html>
