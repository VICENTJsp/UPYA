const scrolltop = () => {
  if (document.querySelector(".displayprogress")){
    const progressbar = document.querySelector(".displayprogress");
    progressbar.addEventListener("click", () => window.scroll(0, 0));
  }
};

export { scrolltop };
