<html>

<head>
  <meta charset="utf-8" />

  <meta name="text:Font Family" content="sans-serif" />
  <meta name="if:Hide Thumblr Menu And Popup" content="0" />
  <meta name="if:Auto Dark Mode" content="1" />
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
      #{Tag} |
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
    }

    a:not(.keep-link-color):visited {
      color: #777777;
    }

    a.accent-color {
      color: {AccentColor};
    }

    a.accent-color:hover {
      opacity: 0.66;
    }

    a.title-color {
      color: {TitleColor};
    }

    a.title-color:hover {
      opacity: 0.66;
    }

    .grey {
      color: #777777;
    }

    .opacity {
      opacity: 0.66;
    }

    article section a {
      color: {AccentColor};
      text-decoration: underline;
    }

    article section a:not(.keep-link-color):visited {
      color: {TitleColor};
    }

    article section a:not(:has(img)):hover {
      opacity: 0.66;
    }

    svg,
    path,
    polygon {
      fill: {AccentColor}
    }

    {block:ifAutoDarkMode}
      @media (prefers-color-scheme: dark) {
        body {
          background: {TitleColor};
          color: {BackgroundColor};
        }

        a.title-color {
          color: {BackgroundColor};
        }

        a.accent-color,
        #notes svg,
        #notes .notes a {
          filter: brightness(150%);
        }

        .back-to-home span img {
          filter: brightness(0.66);
        }

        article section a:not(:has(img)) {
          filter: brightness(150%);
        }

        article section a:not(.keep-link-color):visited {
          color: {BackgroundColor};
        }

      }

    {/block:ifAutoDarkMode}

    a {
      text-decoration: none;
      word-wrap: break-word;
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

    .my-5 {
      margin-top: 1.25rem;
      margin-bottom: 1.25rem;
    }

    .my-6 {
      margin-top: 1.5rem;
      margin-bottom: 1.5rem;
    }

    .my-8 {
      margin-top: 2rem;
      margin-bottom: 2rem;
    }

    .mt-2 {
      margin-top: 0.5rem;
    }

    .mr-auto {
      margin-right: auto;
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

    .text-4xl {
      font-size: 2.25rem;
    }

    .block {
      display: block;
    }

    .inline-block {
      display: inline-block;
    }

    .text-lg {
      font-size: 1.125rem;
    }

    .leading-xl {
      line-height: 1.75rem;
    }

    .leading-2xl {
      line-height: 2rem;
    }

    .leading-3xl {
      line-height: 2.5rem;
    }

    .leading-4xl {
      line-height: 2.5rem;
    }

    .leading-trim-xl {
      margin-top: -0.125rem;
      margin-bottom: -0.125rem;
    }

    .leading-trim-3xl {
      margin-top: -0.3215rem;
      margin-bottom: -0.3215rem;
    }

    .rounded-full {
      border-radius: 9999px;
    }

    .gap-2 {
      gap: 0.5rem;
    }

    .gap-4 {
      gap: 1rem;
    }

    .fill-empty:empty::after,
    .fill-empty span:empty::after {
      content: "∅";
    }

    .body {
      margin: auto;
      padding-right: 0.5rem;
      padding-left: 0.5rem;
      max-width: 45rem;
      line-height: 1;
    }

    .ui {
      font-weight: 500;
      font-family: "Segoe UI", Roboto, sans-serif;
    }

    .flex-list {
      padding: 0;
      line-height: 1;
      list-style-type: none;
      display: flex;
      align-items: center;
    }

    .flex-nav-list {
      margin-top: 1rem;
      margin-bottom: 1rem;
      padding: 0;
      list-style-type: none;
      display: flex;
      gap: 1rem;
      justify-content: center;
      align-items: baseline;
    }

    .index-post-list {
      padding: 0;
      list-style-type: none;
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
    }

    .back-to-home a {
      display: flex;
      justify-content: center;
      align-items: baseline;
      margin: auto;
      width: 4em;
    }

    .back-to-home span.o {
      position: relative;
      display: inline-block;
      height: 14px;
      width: 14px;
      border-radius: 9999px;
      border: solid 2px;
      margin-left: 2px;
      margin-right: 2px;
    }

    .back-to-home span img {
      position: absolute;
      height: 14px;
      width: 14px;
      left: 0;
      border-radius: 9999px;
    }

    article h2 {
      font-size: 1.5rem;
      margin-top: 1.75rem;
      margin-bottom: 1rem;
    }

    article h3 {
      font-size: 1.25rem;
      margin-top: 1.25rem;
      margin-bottom: 1rem;
    }

    article p {
      margin-top: 1rem;
      margin-bottom: 1rem;
    }

    article ul,
    article ol {
      margin: 0.5rem 0;
      padding-left: 2rem;
    }

    article blockquote {
      margin: 1rem 0;
      padding: 0 1rem;
      border-left: solid 4px;
    }

    article img {
      max-width: 100%;
      width: auto;
      height: auto;
      display: block;
    }

    #notes svg {
      width: 22px;
      height: 22px;
      cursor: pointer;
      vertical-align: bottom;
    }

    #notes .reblog svg {
      width: 26px;
      height: 26px;
      margin-bottom: -2px;
      margin-top: -2px;
    }

    #notes .action-button:hover {
      opacity: 0.75;
    }

    #notes .notes {
      margin: -0.25rem 0;
      padding: 0;
      list-style-type: none;
      line-height: 1.5;
    }

    #notes .notes li .avatar_frame {
      margin-right: 0.5rem;
    }

    #notes .notes li .avatar_frame img {
      border-radius: 9999px;
      vertical-align: middle;
    }

    #notes .notes li.original_post {
      display: none;
    }

    #notes .notes li .action a:after {
      content: " ";
    }
  </style>

  <script>
    function action(actionName) {
      blogId = location.host.split('.')[0]
      founds = location.pathname.match(/\/post\/(\d+)\/(.+)/);
      postId = founds[1];
      slug = founds[2];

      open("https://www.tumblr.com/" + blogId + "/" + postId + "/" + slug + "?source=embed&action=" + actionName,
        "_blank")
    }
  </script>
</head>

<body class="body">
  {block:ifHideThumblrMenuAndPopup}
    <script>
      const mutationObserver = new MutationObserver((mutations) => {
        mutations.forEach((mutation) => {
          tumblrIframes = document.getElementsByClassName("tmblr-iframe");
          while (tumblrIframes.length) {
            tumblrIframes.item(0).remove()
          }
        });
      });

      mutationObserver.observe(
        document.body, { childList: true, subtree: true }
      );
    </script>
  {/block:ifHideThumblrMenuAndPopup}

  <header class="text-center">
    {block:ShowAvatar}
      <div class="my-4 block">
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" class="align-bottom rounded-full" width="96" height="96" />
        </a>
      </div>
    {/block:ShowAvatar}
    {block:ShowTitle}
      <{block:IndexPage}h1{/block:IndexPage}{block:PermalinkPage}div{/block:PermalinkPage}
        class="my-3 text-3xl text-bold">
        <a href="/" class="title-color keep-link-color">
          {Title}
        </a>
      </{block:IndexPage}h1{/block:IndexPage}{block:PermalinkPage}div{/block:PermalinkPage}>
    {/block:ShowTitle}
    {block:ShowDescription}
      <p class="my-1 opacity">
        {Description}
      </p>
    {/block:ShowDescription}
  </header>
  <nav class="my-6 text-lg ui">
    <ul class="flex-nav-list">
      <li>
        <a href="/" class="accent-color keep-link-color">Home</a>
      </li>
      {block:HasPages}
        {block:Pages}
          <li>
            <a href="{URL}" class="accent-color keep-link-color">{Label}</a>
          </li>
        {/block:Pages}
      {/block:HasPages}
      <li>
        <a href="/archive" class="accent-color keep-link-color">Archive</a>
      </li>
    </ul>
  </nav>

  {block:IndexPage}
    <main class="my-8">
      {block:TagPage}
        <h2 class="text-3xl text-center">#{Tag}</h2>
      {/block:TagPage}
      <ol class="my-6 index-post-list">
        {block:Posts}
          <li>
            <p class="m-0 text-bold text-xl leading-xl leading-trim-xl">
              {block:Text}
                <a href="{Permalink}" class="title-color fill-empty">{Title}</a>
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
            <div href="{Permalink}" class="mt-2 opacity">
              {Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}
            </div>
          </li>
        {/block:Posts}
      </ol>
    </main>
    {block:Pagination}
      <nav class="my-8 text-center text-2xl ui">
        <ul class="flex-nav-list">
          {block:PreviousPage}
            <li><a href="{PreviousPage}" class="accent-color keep-link-color">&lsaquo;</a></li>
          {/block:PreviousPage}
          {block:JumpPagination length="5"}
            {block:CurrentPage}
              <li><span>{PageNumber}</span></li>
            {/block:CurrentPage}
            {block:JumpPage}
              <li><a href="{URL}" class="accent-color keep-link-color">{PageNumber}</a></li>
            {/block:JumpPage}
          {/block:JumpPagination}
          {block:NextPage}
            <li><a href="{NextPage}" class="accent-color keep-link-color">&rsaquo;</a></li>
          {/block:NextPage}
        </ul>
      </nav>
    {/block:Pagination}
  {/block:IndexPage}

  {block:PermalinkPage}
    <main class="my-8">
      {block:Posts}
        <article class="my-8">
          {block:Text}
            <h1 class="text-3xl leading-3xl leading-trim-3xl">{Title}</h1>
            {block:Date}
              <ul id="article-meta" class="my-6 flex-list gap-2">
                <li class="opacity">{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
                {block:Tags}
                  <li><a href="{TagURL}" class="accent-color">#{Tag}</a></li>
                {/block:Tags}
              </ul>
            {/block:Date}
            <section class="my-4 text-lg leading-2xl">
              {Body}
            </section>
          {/block:Text}
        </article>
        {block:Date}
          <aside id="notes" class="my-8">
            <ul class="my-3 flex-list gap-4">
              <li class="mr-auto text-bold text-lg opacity">
                {NoteCountWithLabel}
              </li>
              <li onclick="action('like')" class="action-button like">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                  <!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                  <path
                    d="M47.6 300.4L228.3 469.1c7.5 7 17.4 10.9 27.7 10.9s20.2-3.9 27.7-10.9L464.4 300.4c30.4-28.3 47.6-68 47.6-109.5v-5.8c0-69.9-50.5-129.5-119.4-141C347 36.5 300.6 51.4 268 84L256 96 244 84c-32.6-32.6-79-47.5-124.6-39.9C50.5 55.6 0 115.2 0 185.1v5.8c0 41.5 17.2 81.2 47.6 109.5z" />
                </svg>
              </li>
              <li class="action-button reblog">
                <a href="{ReblogURL}">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                    <!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                    <path
                      d="M272 416c17.7 0 32-14.3 32-32s-14.3-32-32-32H160c-17.7 0-32-14.3-32-32V192h32c12.9 0 24.6-7.8 29.6-19.8s2.2-25.7-6.9-34.9l-64-64c-12.5-12.5-32.8-12.5-45.3 0l-64 64c-9.2 9.2-11.9 22.9-6.9 34.9s16.6 19.8 29.6 19.8l32 0 0 128c0 53 43 96 96 96H272zM304 96c-17.7 0-32 14.3-32 32s14.3 32 32 32l112 0c17.7 0 32 14.3 32 32l0 128H416c-12.9 0-24.6 7.8-29.6 19.8s-2.2 25.7 6.9 34.9l64 64c12.5 12.5 32.8 12.5 45.3 0l64-64c9.2-9.2 11.9-22.9 6.9-34.9s-16.6-19.8-29.6-19.8l-32 0V192c0-53-43-96-96-96L304 96z" />
                  </svg>
                </a>
              </li>
              <li onclick="action('follow')" class="action-button follow">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
                  <!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                  <path
                    d="M96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3zM504 312V248H440c-13.3 0-24-10.7-24-24s10.7-24 24-24h64V136c0-13.3 10.7-24 24-24s24 10.7 24 24v64h64c13.3 0 24 10.7 24 24s-10.7 24-24 24H552v64c0 13.3-10.7 24-24 24s-24-10.7-24-24z" />
                </svg>
              </li>
            </ul>
            <section class="grey">
              {PostNotes}
            </section>
          </aside>
        {/block:Date}
      {/block:Posts}
    </main>
    <nav class="my-8 back-to-home text-2xl ui">
      <a href="/" class="accent-color keep-link-color">
        <span>H</span><span class="o"><img src="{PortraitURL-128}" alt="O" /></span><span>ME</span>
      </a>
    </nav>
  {/block:PermalinkPage}

  <!-- Please remove followings and edit more code! -->
  <footer class="my-4 text-center text-sm">
    <span class="opacity">Powered by</span>
    <a href="https://www.tumblr.com/" target="_blank" class="accent-color keep-link-color">Tumblr</a>
    <span class="opacity">and</span>
    <a href="https://github.com/obata15/minimum-maximum" target="_blank"
      class="accent-color keep-link-color">Minimum-Maximum</a>
  </footer>
</body>

</html>
