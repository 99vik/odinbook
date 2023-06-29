import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["posts", "liked_posts", "commented_posts"]

    connect() {
        this.liked_postsTarget.style.display = "none";
        this.commented_postsTarget.style.display = "none";
    }   

    posts() {
      this.postsTarget.style.display = "flex";
      this.liked_postsTarget.style.display = "none";
      this.commented_postsTarget.style.display = "none";
    }   

    liked_posts() {
        this.postsTarget.style.display = "none";
        this.liked_postsTarget.style.display = "flex";
        this.commented_postsTarget.style.display = "none";
    }

    commented_posts() {
        this.postsTarget.style.display = "none";
        this.liked_postsTarget.style.display = "none";
        this.commented_postsTarget.style.display = "flex";
    }
}
