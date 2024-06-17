// Initialize database and display posts
const db = new PouchDB('myblog');
db.allDocs({ include_docs: true }).then(response => {
  const posts = response.rows.map(row => row.doc);
  const postList = document.getElementById('posts');
  posts.forEach(post => {
    const postHTML = `<li><h2>${post.title}</h2><p>${post.content}</p></li>`;
    postList.innerHTML += postHTML;
  });
});

// Function to add a new post
function addPost(title, content) {
  const post = { title, content };
  db.put(post).then(response => {
    console.log('Post added successfully!');
  }).catch(error => {
    console.error('Error adding post:', error);
  });
}
