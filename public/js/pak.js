(function () {
  const header = document.querySelector("[data-pak-header]");
  if (!header) return;

  const megaToggle = header.querySelector("[data-mega-toggle]");
  const searchToggle = header.querySelector("[data-search-toggle]");
  const menuToggle = header.querySelector("[data-menu-toggle]");

  const closePanels = function () {
    header.classList.remove("is-mega-open", "is-search-open");
  };

  window.addEventListener("scroll", function () {
    header.classList.toggle("is-stuck", window.scrollY > 12);
  });

  if (megaToggle) {
    megaToggle.addEventListener("click", function (event) {
      event.preventDefault();
      header.classList.toggle("is-mega-open");
      header.classList.remove("is-search-open");
    });
    megaToggle.addEventListener("mouseenter", function () {
      if (window.innerWidth > 980) header.classList.add("is-mega-open");
    });
  }

  if (searchToggle) {
    searchToggle.addEventListener("click", function () {
      header.classList.toggle("is-search-open");
      header.classList.remove("is-mega-open");
      const field = header.querySelector("[data-search-input]");
      if (header.classList.contains("is-search-open") && field) field.focus();
    });
  }

  if (menuToggle) {
    menuToggle.addEventListener("click", function () {
      header.classList.toggle("is-nav-open");
      closePanels();
    });
  }

  header.addEventListener("mouseleave", function () {
    if (window.innerWidth > 980) header.classList.remove("is-mega-open");
  });

  document.querySelectorAll("[data-counter]").forEach(function (el) {
    const target = Number(el.getAttribute("data-counter") || 0);
    const suffix = el.getAttribute("data-suffix") || "";
    let current = 0;
    const step = Math.max(1, Math.ceil(target / 40));
    const tick = function () {
      current = Math.min(target, current + step);
      el.textContent = current + suffix;
      if (current < target) requestAnimationFrame(tick);
    };
    const observer = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          tick();
          observer.disconnect();
        }
      });
    });
    observer.observe(el);
  });
})();
