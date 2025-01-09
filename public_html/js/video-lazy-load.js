//youtube embed script
function playYouTube() {
  // Iterate over every YouTube container you may have
  let YouTubeContainers = document.querySelectorAll('.youtube-embed');

  for (let i = 0; i < YouTubeContainers.length; i++) {
    let container = YouTubeContainers[i];
    let imageSource = "https://img.youtube.com/vi/"+ container.dataset.videoId +"/0.jpg";
      console.log(container.dataset.videoId)
    // Load the Thumbnail Image asynchronously
    let image = new Image();
    image.src = imageSource;
    image.addEventListener("load", function () {
      const altText = container.dataset.alt
      container.appendChild(image);
      image.setAttribute('loading', 'lazy');
      image.classList.add('lazy');

      if (altText && altText.length) {
        image.setAttribute('alt', altText);
        container.removeAttribute('data-alt');
      } else {
        image.setAttribute('alt', 'Youtube video cover');
      }
    });

    // When the user clicks on the container, load the embedded YouTube video
    container.addEventListener("click", function () {
      let iframe = document.createElement("iframe");

      iframe.setAttribute("frameborder", "0");
      iframe.setAttribute("allowfullscreen", "");
      iframe.setAttribute("loading", "lazy");
      iframe.setAttribute(

        "allow",
        "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
      );
      // Important: add the autoplay GET parameter, otherwise the user would need to click over the YouTube video again to play it
      iframe.setAttribute(
        "src",
        `https://www.youtube.com/embed/${this.dataset.videoId}?rel=0&showinfo=0&autoplay=1&mute=1`
      );

      // Clear Thumbnail and load the YouTube iframe
      this.innerHTML = "";
      this.appendChild(iframe);
    });
  };
}

var doesYtExist = (function () {
  let YouTubeContainers = document.querySelector('.youtube-embed');

  YouTubeContainers ? playYouTube() : console.log('No YouTube videos here.');
})();