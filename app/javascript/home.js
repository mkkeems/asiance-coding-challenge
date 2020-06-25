function handleErrors(response) {
  if (!response.ok) {
    throw Error(response.statusText);
  }
  return response;
}

document.addEventListener('DOMContentLoaded', () => {
  const postswrapper = document.querySelector(".home-wrap");
  fetch('/api/v1/posts')
    .then(handleErrors)
    .then(result => result.json()) // Deserialize the JSON string into a Javascript object.
    .then((data) => {
      data.forEach((post) => {
        console.log(post)
        const resultdiv = postdiv(post)
        postswrapper.insertAdjacentHTML("beforeend", resultdiv);
      });//For Each end
    });
});

const postdiv = (post) => {
  createdate = new Date(post.created_at)
  createdlocal = createdate.toLocaleString('ko-KR')
  updatedate = new Date(post.updated_at)
  updatedlocal = updatedate.toLocaleString('ko-KR')
  console.log(createdlocal);
  const pcard = `
    <div class="post-card">
      <div class="post-head">
        <div class="post-title">
          <h1> ${post.title}</h1>
          <p>created at: ${createdlocal}</p>
          <p>updated at: ${updatedlocal}</p>
        </div>
        <div class="post-author">
          <div class="author-avatar">
            <img src= ${post.author.avatar} alt="" class="avatar">
          </div>
          <div class="author-info">
            <h2> ${post.author.name}</h2>
            <p> ${post.author.role}</p>
            <p> ${post.author.location}</p>
          </div>
        </div>
      </div>
      
      <div class="post-tag">
        <img src="https://image.flaticon.com/icons/png/512/24/24141.png" id="tagcon">  ${post.tags}
      </div>

      <div class="post-body">
        <img src= ${post.image_url} alt="" class="post-img">
        <div class="post-body-text">
          <p> ${post.body}</p>
        </div>
      </div>
    </div>
  `
  return pcard
}