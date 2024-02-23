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

  </style>
</head>

<body>
  {block:IndexPage}
    <header>
      {block:ShowAvatar}
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" />
        </a>
      {/block:ShowAvatar}
      {block:ShowTitle}
        <h1>
          <a href="/">{Title}</a>
        </h1>
      {/block:ShowTitle}
      {block:ShowDescription}
        <p>{Description}</p>
      {/block:ShowDescription}
    </header>
    <nav>
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
      </ul>
    </nav>
    <main>
      {block:TagPage}
        <h2>"{Tag}"</h2>
      {/block:TagPage}
      <ol>
        {block:Posts}
          <li>
            {block:Text}
              <p>
                <a href="{Permalink}">
                  {Title}
                </a>
              </p>
              <a href="{Permalink}">
                {Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}
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
        <nav>
          {block:PreviousPage}
            <a href="{PreviousPage}">&lt;</a>
          {/block:PreviousPage}
          {block:JumpPagination length="5"}
            {block:CurrentPage}
              <span>{PageNumber}</span>
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

  {block:PermalinkPage}
    <header>
      {block:ShowTitle}
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" />
          {block:ShowTitle}
            <div>{Title}</div>
          {/block:ShowTitle}
        </a>
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
  <footer>
    <span>Powered by</span>
    <a href="https://www.tumblr.com/" target="_blank">Tumblr</a>
    <span>and</span>
    <a href="https://github.com/obata15/minimum-maximum" target="_blank">Minimum-Maximum</a>
  </footer>
</body>

</html>
