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
  <link href="https://unpkg.com/sanitize.css" rel="stylesheet" />

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
    /* <ColorModeSettings> */

    body {
      background: {BackgroundColor};
      color: {TitleColor};
      font-family: {text:Font Family};
    }

    #index-header a {
      color: {TitleColor};
    }

    ol#index-posts li.post a {
      color: {TitleColor};
    }

    ol#index-posts li.post a:visited {
      color: #999999;
    }

    ol#index-posts li.post a:hover {
      color: {AccentColor};
    }

    ul.metas li.date a {
      color: {TitleColor};
    }

    nav.bottom.home-navigation .portrait-icon {
      color: {AccentColor};
    }

    @media (prefers-color-scheme: dark) {
      body {
        background: {TitleColor};
        color: {BackgroundColor};
      }

      #index-header a {
        color: {BackgroundColor};
      }

      ol#index-posts li.post a {
        color: {BackgroundColor};
      }

      ul.metas li.date a {
        color: {BackgroundColor};
      }

      #permalink-header a .title,
      #permalink-article ul.metas li a,
      #index-menu-navigation a,
      ol#index-posts li.post a:hover,
      nav.bottom.pagination a,
      nav.bottom a>span,
      footer a,
      p a {
        filter: brightness(150%);
      }

      nav.bottom a>span img {
        filter: brightness(66.66%);
      }
    }

    /* </ColorModeSettings> */

    /* <Common> */

    {block:ifHideThumblrMenuAndPopup}

      iframe[class^="tmblr"] {
        display: none !important;
      }

      body {
        padding-top: 17px !important;
      }

    {/block:ifHideThumblrMenuAndPopup}

    html {
      font-size: 17px;
    }

    body {
      padding: 17px;
    }

    a {
      text-decoration: none;
      color: {AccentColor};
    }

    p a:visited {
      color: #999999;
    }

    p a:hover {
      opacity: 0.5;
    }

    main {
      max-width: 45rem;
      margin: auto;
    }

    main h1 {
      margin-bottom: 0;
    }

    main h2 {
      font-size: 1.25rem;
    }

    ul.metas {
      list-style-type: none;
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
      font-size: 1.5rem;
      font-weight: bold;
    }

    nav.bottom.pagination a {
      margin: 0 0.5em;
    }

    nav.bottom.home-navigation a {
      display: flex;
      justify-content: center;
      align-items: baseline;
      margin: auto;
      width: 4em;
    }

    nav.bottom.home-navigation span.o {
      position: relative;
      display: inline-block;
      height: 20px;
      width: 20px;
      border-radius: 1.2rem;
      margin-left: 2px;
      margin-right: 2px;
      border: solid 3px;
    }

    nav.bottom.home-navigation span img {
      border-radius: 1.2rem;
      position: absolute;
      height: 14px;
      width: 14px;
      left: 0;
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

    /* </Common> */

    /* <PermalinkPage> */

    #permalink-header {
      max-width: 45rem;
      margin: 0 auto;
    }

    #permalink-header .portrait-icon {
      height: 40px;
      width: 40px;
      border-radius: 32px;
    }

    #permalink-header a {
      display: flex;
      align-items: center;
    }

    #permalink-header a img {
      width: 2em;
      height: 2em;
      margin-right: 12px;
    }

    #permalink-header a .title {
      font-size: 1.5rem;
      font-weight: bold;
    }

    #permalink-article p {
      line-height: {text:Paragraph Line Height In Article};
    }

    #permalink-article h1 {
      font-size: 2rem;
      line-height: 1.4em;
    }

    #permalink-article ul.metas {
      margin: 1em 0 2em 0;
    }

    #permalink-article #body-section {
      margin-top: 1em;
    }

    #permalink-article blockquote {
      margin: 0;
      padding: 0 1em;
      border-left: solid 4px;
    }

    #permalink-notes {
      margin-top: 2rem;
      margin-bottom: 2rem;
    }

    #permalink-notes ul {
      display: flex;
      gap: 20px;
      align-items: center;
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    #permalink-notes ul li>a {
      width: 24px !important;
      height: 24px !important;
    }

    #permalink-notes ul li.note-count {
      font-size: 1.25rem;
    }

    #permalink-notes ul li:not(.note-count) {
      height: 20px;
      width: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    #permalink-notes ul li.note-count {
      font-weight: bold;
    }

    #permalink-notes ol.notes {
      list-style-type: none;
      padding: 0;
      font-size: 0.75rem;
    }

    #permalink-notes ol.notes li.original_post {
      display: none;
    }

    #permalink-notes ol.notes li>.avatar_frame {
      margin-right: 0.5em;
    }

    #permalink-notes ol.notes li>.action a {
      margin-right: 0.5em;
    }

    /* </PermalinkPage> */

    /* <IndexPage> */

    #index-header {
      text-align: center;
    }

    #index-header .portrait-icon {
      height: 96px;
      width: 96px;
      border-radius: 96px;
    }

    #index-header h1 {
      margin: 0.25em 0;
    }

    #index-header p {
      margin: 0;
      opacity: 0.5;
    }

    #index-menu-navigation ul {
      margin: 1.5em 0;
      display: flex;
      gap: 1rem;
      justify-content: center;
    }

    #index-posts {
      list-style-type: none;
      padding-left: 0;
      font-weight: bold;
    }

    #index-posts .post {
      margin-bottom: 1rem;
    }

    #index-posts .post .title {
      display: flex;
      font-size: 1.25rem;
      align-items: baseline;
    }

    #index-posts li.post .title a:empty::after,
    /* Preview Selector */
    #index-posts li.post .title a span:empty::after {
      content: "∅";
    }

    #index-posts .post .title .thumbnails {
      cursor: pointer;
      display: flex;
    }

    #index-posts .post .title .thumbnails div {
      margin: 0;
    }

    #index-posts .post .title .thumbnails img {
      display: inherit;
      width: 0.8em;
      height: 0.8em;
      margin-left: 0.5em;
    }

    #index-posts .post .title .thumbnails a {
      pointer-events: none;
    }

    #index-posts .post .title .thumbnails p {
      display: none;
    }

    /* </IndexPage> */

    /* <TagPage> */

    #tag-heading {
      font-size: 1rem;
      text-align: center;
      font-weight: normal;
    }

    /* </TagPage> */
  </style>
</head>

<body>
  {block:PermalinkPage}
    <header id="permalink-header">
      {block:ShowTitle}
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" class="portrait-icon" />
          {block:ShowTitle}
            <div class="title">{Title}</div>
          {/block:ShowTitle}
        </a>
      {/block:ShowTitle}
    </header>

    <main id="permalink-main">
      {block:Posts}
        <article id="permalink-article">
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
            <section id="body-section">
              {Body}
            </section>
          {/block:Text}
        </article>

        <aside id="permalink-notes">
          <ul>
            <li class="note-count">{NoteCountWithLabel}</li>
            <li>{LikeButton color="grey"}</li>
            <li>{ReblogButton color="grey"}</li>
          </ul>
          {PostNotes}
        </aside>
      {/block:Posts}

      <nav class="bottom home-navigation">
        <a href="/">
          <span>H</span><span class="o"><img src="{PortraitURL-128}" alt="O"
              class="portrait-icon" /></span><span>ME</span>
        </a>
      </nav>
    </main>
  {/block:PermalinkPage}

  {block:IndexPage}
    <header id="index-header">
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

    <nav id="index-menu-navigation">
      <ul>
        <li>
          <a href="/">Home</a>
        </li>
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

    <main id="index-main">
      {block:TagPage}
        <h1 id="tag-heading">"{Tag}"</h1>
      {/block:TagPage}

      <ol id="index-posts">
        {block:Posts}
          <li class="post">
            {block:Text}
              <a href="{Permalink}">
                <div class="title">
                  {Title}
                  {block:IfShowThumbnails}
                    <div class="thumbnails" onclick="location.href='{Permalink}'">{Body}</div>
                  {/block:IfShowThumbnails}
                </div>
                <ul class="metas">
                  <li class="date">{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
                </ul>
              </a>
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
