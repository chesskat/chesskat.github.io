document.getElementById('nav-container').innerHTML = `
  <nav>
    <a href="../../../../../../../../index.html">About Me</a>
    <div class="dropdown">
      <a href="../../../../../../../../skills/index.html" class="dropbtn">Skills</a>
      <a href="../../../../../../../../Blog/index.html">Blog</a>
      <div class="dropdown-content">
        <a href="../../../../../../../../skills/programming/index.html" class="dropdown-submenu">Programming</a>
        <div class="dropdown-submenu-content">
          <a href="../../../../../../../../skills/programming/processing.html">Animations & Games</a>
          <a href="#">Data Science</a>
        </div>
        <a href="#">Chess</a>
      </div>
    </div>
    <a href="mailto:katarinajojones@gmail.com">Contact</a>
  </nav>
`;
