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
            <a href="{PreviousPage}">&lt;</a>
          {/block:PreviousPage}
          {block:JumpPagination length="5"}
            {block:CurrentPage}
              <span class="current">{PageNumber}</span>
            {/block:CurrentPage}
            {block:JumpPage}
              <a href="{URL}">{PageNumber}</a>
            {/block:JumpPage}
          {/block:JumpPagination}
          {block:NextPage}
            <a href="{NextPage}">&gt;</a>
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
