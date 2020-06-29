
  var timelineSwiper = new Swiper(".timelineSwiper .swiper-container", {
    initialSlide: document.location.toString().split("#")[1],
    direction: "vertical",
    loop: false,
    speed: 1600,
    pagination: {
      el: ".swiper-pagination",
      type: "bullets",
      clickable: true,
      renderBullet: function (index, className) {
        var year = document
          .querySelectorAll(".swiper-slide")
          [index].getAttribute("data-year");
        return '<span class="' + className + '">' + year + "</span>";
      },
    },
    paginationClickable: false,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });

  const currentStep = document.getElementById('data-cs');
  const currentStepId = currentStep.dataset.cs;

  function reactive(){
    timelineSwiper.slideTo(currentStepId, 1600, true);
  }

export { timelineSwiper };
export { reactive };
