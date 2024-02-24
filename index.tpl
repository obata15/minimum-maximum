<html>

<head>
  <meta charset="utf-8" />

  <meta name="text:Font Family" content="sans-serif" />
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
      {Tag} |
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

    .grey {
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

      a.title-color:not(.base-brightness),
      a.accent-color:not(.base-brightness),
      article section>:not(div) a,
      #notes .action a {
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

    .fill-empty:empty::after,
    .fill-empty span:empty::after {
      content: "∅";
    }

    .body {
      margin: auto;
      padding-right: 1rem;
      padding-left: 1rem;
      max-width: 45rem;
      line-height: 1;
    }

    .ui {
      font-weight: 500;
      font-family: "Segoe UI", Roboto, sans-serif;
    }

    .flex-list {
      padding: 0;
      list-style-type: none;
      display: flex;
      gap: 0.5rem;
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
      filter: brightness(0.66);
    }

    article {
      line-height: 1.75rem;
    }

    article h2 {
      font-size: 1.5rem;
      margin-top: 1rem;
      margin-bottom: 0.5rem;
    }

    article p {
      margin-top: -0.125rem;
      margin-bottom: -0.125rem;
    }

    article ul,
    article ol {
      margin: 0.5rem 0;
      padding-left: 1rem;
    }

    article blockquote {
      margin: 1rem 0;
      padding: 0 1rem;
      border-left: solid 4px;
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

    .like_button iframe {
      vertical-align: bottom;
    }
  </style>

  <script>
    function like() {
      blogId = location.host.split('.')[0]
      founds = location.pathname.match(/\/post\/(\d+)\/(.+)/);
      postId = founds[1];
      slug = founds[2];

      console.log(blogId, postId, slug);

      open("https://www.tumblr.com/" + blogId + "/" + postId + "/" + slug + "?source=blognetwork&action=like", "_blank")
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
        class="my-3 text-2xl text-bold">
        <a href="/" class="title-color">
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
        <a href="/" class="accent-color">Home</a>
      </li>
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

  {block:IndexPage}
    <main class="my-8">
      {block:TagPage}
        <h2 class="text-3xl leading-trim-3xl text-center">&ldquo; {Tag} &rdquo;</h2>
      {/block:TagPage}
      <ol class="my-6 index-post-list">
        {block:Posts}
          <li>
            <p class="m-0 text-bold text-xl leading-xl leading-trim-xl">
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
            <a href="{Permalink}" class="mt-2 inline-block title-color opacity">
              {Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}
            </a>
          </li>
        {/block:Posts}
      </ol>
    </main>
    {block:Pagination}
      <nav class="my-6 text-center text-2xl ui">
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
  {/block:IndexPage}

  {block:PermalinkPage}
    <main class="my-8">
      {block:Posts}
        <article>
          {block:Text}
            <h1 class="text-3xl leading-3xl leading-trim-3xl">{Title}</h1>
            {block:Date}
              <ul id="article-meta" class="my-4 flex-list">
                <li class="grey">{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
                {block:Tags}
                  <li><a href="{TagURL}" class="accent-color">#{Tag}</a></li>
                {/block:Tags}
              </ul>
            {/block:Date}
            <section class="my-4">
              {Body}
            </section>
          {/block:Text}
        </article>
        {block:Date}
          <aside id="notes" class="my-8 grey">
            <ul class="my-3 flex-list">
              <li class="text-bold text-lg">
                {NoteCountWithLabel}
              </li>
              <li onclick="like()">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#ccc"
                  style="width:20px;height:20px;margin-bottom:-4px;cursor:pointer;">
                  <path
                    d="m11.645 20.91-.007-.003-.022-.012a15.247 15.247 0 0 1-.383-.218 25.18 25.18 0 0 1-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0 1 12 5.052 5.5 5.5 0 0 1 16.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 0 1-4.244 3.17 15.247 15.247 0 0 1-.383.219l-.022.012-.007.004-.003.001a.752.752 0 0 1-.704 0l-.003-.001Z" />
                </svg>
              </li>
              <li>
                {ReblogButton color="grey"}
              </li>
            </ul>
            {PostNotes}
          </aside>
        {/block:Date}
      {/block:Posts}
      <nav class="back-to-home text-2xl ui">
        <a href="/" class="accent-color">
          <span>H</span><span class="o"><img src="{PortraitURL-128}" alt="O" /></span><span>ME</span>
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
