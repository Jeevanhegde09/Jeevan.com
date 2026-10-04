<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta
    name="viewport"
    content="width=device-width, initial-scale=1.0, viewport-fit=cover"
  />

  <meta
    name="description"
    content="A cinematic personal brand and creative developer portfolio."
  />

  <title>BUILD. CREATE. EVOLVE.</title>

  <link rel="stylesheet" href="style.css" />
</head>

<body>
  <a class="skip-link" href="#main-content">Skip to content</a>

  <!-- Ambient cursor lighting -->
  <div class="cursor-glow" aria-hidden="true"></div>

  <!-- Subtle grain -->
  <div class="noise-layer" aria-hidden="true"></div>

  <!-- =========================
       NAVIGATION
  ========================== -->
  <header class="site-header" id="siteHeader">
    <nav class="navbar container" aria-label="Primary navigation">

      <a class="brand" href="#top" aria-label="Home">
        <span class="brand-mark">
          <span></span>
          <span></span>
          <span></span>
        </span>

        <span class="brand-text">JEEVAN<span class="brand-dot">.</span></span>
      </a>

      <div class="nav-links" id="navLinks">
        <a href="#top" class="nav-link active">Home</a>
        <a href="#work" class="nav-link">Work</a>
        <a href="#about" class="nav-link">About</a>
        <a href="#contact" class="nav-link">Contact</a>
      </div>

      <a
        href="#contact"
        class="nav-cta magnetic"
        data-magnetic-strength="0.22"
      >
        <span>Let's Talk</span>
        <span class="arrow">↗</span>
      </a>

      <button
        class="menu-toggle"
        id="menuToggle"
        type="button"
        aria-label="Open navigation menu"
        aria-expanded="false"
        aria-controls="navLinks"
      >
        <span></span>
        <span></span>
      </button>
    </nav>
  </header>

  <!-- =========================
       MAIN
  ========================== -->
  <main id="main-content">

    <!-- =========================
         HERO
    ========================== -->
    <section class="hero" id="top">

      <!-- Background layers -->
      <div class="hero-grid" aria-hidden="true"></div>

      <div class="hero-light hero-light--one" aria-hidden="true"></div>
      <div class="hero-light hero-light--two" aria-hidden="true"></div>

      <!-- Particle canvas -->
      <canvas id="particleCanvas" aria-hidden="true"></canvas>

      <!-- Orbital visual -->
      <div class="orbital-system" aria-hidden="true">
        <div class="orbit orbit--one">
          <span class="orbit-node"></span>
        </div>

        <div class="orbit orbit--two">
          <span class="orbit-node"></span>
        </div>

        <div class="orbit orbit--three">
          <span class="orbit-node"></span>
        </div>

        <div class="core">
          <div class="core-ring"></div>
          <div class="core-ring core-ring--inner"></div>

          <div class="core-center">
            <span>G</span>
          </div>
        </div>
      </div>

      <!-- Main content -->
      <div class="container hero-container">

        <div class="hero-content">

          <div class="hero-eyebrow">
            <span class="status-dot"></span>
            <span>CREATIVE DEVELOPER · DIGITAL CRAFT</span>
          </div>

          <h1 class="hero-title" aria-label="Build. Create. Evolve.">
            <span class="title-line">
              <span class="word">BUILD.</span>
            </span>

            <span class="title-line title-line--accent">
              <span class="word">CREATE.</span>
            </span>

            <span class="title-line">
              <span class="word">EVOLVE.</span>
            </span>
          </h1>

          <p class="hero-description">
            Turning ideas into meaningful digital experiences through
            <strong>design</strong>, <strong>technology</strong>,
            <strong>creativity</strong>, and consistency.
          </p>

          <div class="hero-actions">

            <a
              href="#work"
              class="button button--primary magnetic"
              data-magnetic-strength="0.18"
            >
              <span>Explore My Work</span>

              <span class="button-icon">
                <span>↗</span>
              </span>
            </a>

            <a
              href="#contact"
              class="button button--secondary magnetic"
              data-magnetic-strength="0.14"
            >
              <span>Let's Connect</span>
            </a>

          </div>

          <div class="hero-meta">
            <div class="hero-meta-item">
              <span class="meta-number">01</span>
              <span>DESIGN</span>
            </div>

            <div class="meta-line"></div>

            <div class="hero-meta-item">
              <span class="meta-number">02</span>
              <span>DEVELOP</span>
            </div>

            <div class="meta-line"></div>

            <div class="hero-meta-item">
              <span class="meta-number">03</span>
              <span>EVOLVE</span>
            </div>
          </div>

        </div>

        <!-- Mobile visual -->
        <div class="mobile-visual" aria-hidden="true">
          <div class="mobile-orb">
            <div class="mobile-orb-inner"></div>
          </div>
        </div>

      </div>

      <!-- Bottom information -->
      <div class="hero-bottom container">

        <div class="location-label">
          <span class="location-icon">+</span>
          <span>CREATING FROM INDIA</span>
        </div>

        <button
          class="scroll-indicator"
          id="scrollIndicator"
          type="button"
          aria-label="Scroll to explore"
        >
          <span>SCROLL TO EXPLORE</span>
          <span class="scroll-arrow">↓</span>
        </button>

        <div class="availability">
          <span class="availability-dot"></span>
          <span>AVAILABLE FOR CREATIVE PROJECTS</span>
        </div>

      </div>

      <!-- Decorative side text -->
      <div class="side-text side-text--left" aria-hidden="true">
        DIGITAL / CREATIVE / FUTURE
      </div>

      <div class="side-text side-text--right" aria-hidden="true">
        2026
      </div>

    </section>


    <!-- =========================
         PLACEHOLDER SECTIONS
         Remove if this page is only
         being used as a hero.
    ========================== -->

    <section class="placeholder-section" id="work">
      <div class="container">
        <span>01 — WORK</span>
        <h2>Selected work goes here.</h2>
      </div>
    </section>

    <section class="placeholder-section" id="about">
      <div class="container">
        <span>02 — ABOUT</span>
        <h2>A little more about the creator.</h2>
      </div>
    </section>

    <section class="placeholder-section" id="contact">
      <div class="container">
        <span>03 — CONTACT</span>
        <h2>Let's build something meaningful.</h2>
      </div>
    </section>

  </main>

  <script src="script.js"></script>
</body>
</html>
/* =========================================================
   DESIGN SYSTEM
========================================================= */

:root {
  --bg: #050505;
  --bg-soft: #090909;
  --surface: rgba(255, 255, 255, 0.045);
  --surface-strong: rgba(255, 255, 255, 0.075);

  --text: #f4f4f1;
  --text-muted: #929292;
  --text-dim: #5f5f5f;

  --accent: #d8ff3e;
  --accent-soft: rgba(216, 255, 62, 0.22);

  --border: rgba(255, 255, 255, 0.11);
  --border-strong: rgba(255, 255, 255, 0.18);

  --radius-sm: 10px;
  --radius-md: 16px;
  --radius-lg: 24px;

  --header-height: 88px;
  --container: 1400px;

  --ease-out: cubic-bezier(0.16, 1, 0.3, 1);
  --ease-smooth: cubic-bezier(0.22, 1, 0.36, 1);

  --mouse-x: 50%;
  --mouse-y: 50%;
}


/* =========================================================
   RESET
========================================================= */

*,
*::before,
*::after {
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
  background: var(--bg);
}

body {
  margin: 0;
  min-width: 320px;
  background: var(--bg);
  color: var(--text);
  font-family:
    Inter,
    ui-sans-serif,
    -apple-system,
    BlinkMacSystemFont,
    "Segoe UI",
    Helvetica,
    Arial,
    sans-serif;
  overflow-x: hidden;
}

body.menu-open {
  overflow: hidden;
}

a {
  color: inherit;
  text-decoration: none;
}

button,
a {
  -webkit-tap-highlight-color: transparent;
}

button {
  font: inherit;
}

img,
svg,
canvas {
  display: block;
  max-width: 100%;
}


/* =========================================================
   ACCESSIBILITY
========================================================= */

.skip-link {
  position: fixed;
  z-index: 9999;
  top: 12px;
  left: 12px;
  padding: 10px 14px;
  background: var(--accent);
  color: #050505;
  font-weight: 800;
  border-radius: 8px;
  transform: translateY(-150%);
  transition: transform 0.25s ease;
}

.skip-link:focus {
  transform: translateY(0);
}

:focus-visible {
  outline: 2px solid var(--accent);
  outline-offset: 4px;
}


/* =========================================================
   GLOBAL
========================================================= */

.container {
  width: min(calc(100% - 48px), var(--container));
  margin-inline: auto;
}


/* =========================================================
   GRAIN
========================================================= */

.noise-layer {
  position: fixed;
  inset: 0;
  z-index: 100;
  pointer-events: none;
  opacity: 0.055;
  mix-blend-mode: soft-light;

  background-image:
    url("data:image/svg+xml,%3Csvg viewBox='0 0 180 180' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='.85' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='.7'/%3E%3C/svg%3E");

  background-size: 180px 180px;
}


/* =========================================================
   CURSOR LIGHT
========================================================= */

.cursor-glow {
  position: fixed;
  z-index: 2;
  width: 420px;
  height: 420px;

  left: var(--mouse-x);
  top: var(--mouse-y);

  transform: translate(-50%, -50%);

  border-radius: 50%;

  background:
    radial-gradient(
      circle,
      rgba(216, 255, 62, 0.085) 0%,
      rgba(216, 255, 62, 0.035) 30%,
      rgba(216, 255, 62, 0) 70%
    );

  pointer-events: none;
  transition:
    left 0.8s var(--ease-out),
    top 0.8s var(--ease-out);
}


/* =========================================================
   HEADER
========================================================= */

.site-header {
  position: fixed;
  z-index: 50;
  top: 0;
  left: 0;
  width: 100%;

  padding: 20px 0;

  opacity: 0;
  transform: translateY(-18px);

  transition:
    background 0.4s ease,
    border 0.4s ease,
    box-shadow 0.4s ease,
    padding 0.4s ease,
    opacity 0.8s var(--ease-out),
    transform 0.8s var(--ease-out);
}

body.is-ready .site-header {
  opacity: 1;
  transform: translateY(0);
}

.site-header.is-scrolled {
  padding: 12px 0;

  background: rgba(5, 5, 5, 0.68);
  border-bottom: 1px solid var(--border);
  box-shadow:
    0 12px 40px rgba(0, 0, 0, 0.28),
    inset 0 1px 0 rgba(255, 255, 255, 0.03);

  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
}

.navbar {
  min-height: 54px;

  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 24px;
}


/* =========================================================
   BRAND
========================================================= */

.brand {
  display: inline-flex;
  align-items: center;
  gap: 12px;

  position: relative;
  z-index: 10;
}

.brand-mark {
  position: relative;

  width: 34px;
  height: 34px;

  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 3px;

  border: 1px solid var(--border-strong);
  border-radius: 9px;

  background:
    linear-gradient(
      145deg,
      rgba(255, 255, 255, 0.09),
      rgba(255, 255, 255, 0.02)
    );

  overflow: hidden;
}

.brand-mark::before {
  content: "";
  position: absolute;
  inset: 0;

  background:
    radial-gradient(
      circle at 30% 30%,
      rgba(216, 255, 62, 0.24),
      transparent 55%
    );
}

.brand-mark span {
  width: 3px;
  height: 15px;
  background: var(--text);
  border-radius: 99px;
  position: relative;
  z-index: 1;

  transform-origin: center;
  transition:
    height 0.35s var(--ease-out),
    background 0.35s ease;
}

.brand-mark span:nth-child(2) {
  height: 21px;
}

.brand:hover .brand-mark span {
  background: var(--accent);
}

.brand:hover .brand-mark span:nth-child(1) {
  height: 21px;
}

.brand:hover .brand-mark span:nth-child(2) {
  height: 15px;
}

.brand-text {
  font-size: 14px;
  font-weight: 800;
  letter-spacing: 0.16em;
}

.brand-dot {
  color: var(--accent);
}


/* =========================================================
   NAV LINKS
========================================================= */

.nav-links {
  display: flex;
  align-items: center;
  gap: 34px;
}

.nav-link {
  position: relative;

  padding: 12px 0;

  color: var(--text-muted);
  font-size: 12px;
  font-weight: 700;
  letter-spacing: 0.12em;
  text-transform: uppercase;

  transition: color 0.3s ease;
}

.nav-link::after {
  content: "";

  position: absolute;
  left: 0;
  right: 0;
  bottom: 5px;

  height: 1px;

  background: var(--accent);

  transform: scaleX(0);
  transform-origin: right;

  transition: transform 0.45s var(--ease-out);
}

.nav-link:hover,
.nav-link.active {
  color: var(--text);
}

.nav-link:hover::after,
.nav-link.active::after {
  transform: scaleX(1);
  transform-origin: left;
}


/* =========================================================
   NAV CTA
========================================================= */

.nav-cta {
  display: inline-flex;
  align-items: center;
  gap: 9px;

  padding: 11px 15px;

  border: 1px solid var(--border);
  border-radius: 999px;

  background: rgba(255, 255, 255, 0.035);

  font-size: 11px;
  font-weight: 800;
  letter-spacing: 0.08em;
  text-transform: uppercase;

  transition:
    background 0.35s ease,
    border-color 0.35s ease,
    transform 0.15s ease;
}

.nav-cta:hover {
  background: rgba(255, 255, 255, 0.08);
  border-color: var(--border-strong);
}

.arrow {
  color: var(--accent);
  font-size: 14px;
}


/* =========================================================
   MOBILE MENU BUTTON
========================================================= */

.menu-toggle {
  display: none;

  width: 42px;
  height: 42px;

  padding: 0;

  border: 1px solid var(--border);
  border-radius: 50%;

  background: rgba(255, 255, 255, 0.045);

  cursor: pointer;
}

.menu-toggle span {
  display: block;

  width: 16px;
  height: 1px;

  margin: 4px auto;

  background: var(--text);

  transition:
    transform 0.35s var(--ease-out),
    opacity 0.25s ease;
}

body.menu-open .menu-toggle span:first-child {
  transform: translateY(2.5px) rotate(45deg);
}

body.menu-open .menu-toggle span:last-child {
  transform: translateY(-2.5px) rotate(-45deg);
}


/* =========================================================
   HERO
========================================================= */

.hero {
  position: relative;

  min-height: 100svh;
  height: 100svh;

  overflow: hidden;

  isolation: isolate;

  background:
    radial-gradient(
      circle at 70% 42%,
      rgba(255, 255, 255, 0.045),
      transparent 27%
    ),
    radial-gradient(
      circle at 50% 100%,
      rgba(216, 255, 62, 0.035),
      transparent 34%
    ),
    var(--bg);
}


/* =========================================================
   HERO GRID
========================================================= */

.hero-grid {
  position: absolute;
  z-index: -4;
  inset: -20%;

  opacity: 0.5;

  background-image:
    linear-gradient(
      rgba(255, 255, 255, 0.025) 1px,
      transparent 1px
    ),
    linear-gradient(
      90deg,
      rgba(255, 255, 255, 0.025) 1px,
      transparent 1px
    );

  background-size: 90px 90px;

  transform:
    perspective(900px)
    rotateX(66deg)
    translateY(22%);

  transform-origin: center bottom;

  mask-image: linear-gradient(
    to bottom,
    transparent 0%,
    black 32%,
    black 75%,
    transparent 100%
  );

  animation: gridDrift 18s linear infinite;
}

@keyframes gridDrift {
  from {
    background-position: 0 0, 0 0;
  }

  to {
    background-position: 0 90px, 90px 0;
  }
}


/* =========================================================
   BACKGROUND LIGHTS
========================================================= */

.hero-light {
  position: absolute;
  z-index: -5;

  width: 800px;
  height: 800px;

  border-radius: 50%;

  filter: blur(90px);

  pointer-events: none;
}

.hero-light--one {
  top: -360px;
  right: -240px;

  background:
    radial-gradient(
      circle,
      rgba(216, 255, 62, 0.075),
      transparent 65%
    );

  animation: ambientFloat 11s ease-in-out infinite alternate;
}

.hero-light--two {
  left: -430px;
  bottom: -480px;

  background:
    radial-gradient(
      circle,
      rgba(255, 255, 255, 0.045),
      transparent 67%
    );

  animation: ambientFloat 15s ease-in-out infinite alternate-reverse;
}

@keyframes ambientFloat {
  from {
    transform: translate3d(0, 0, 0) scale(1);
  }

  to {
    transform: translate3d(35px, -25px, 0) scale(1.08);
  }
}


/* =========================================================
   PARTICLE CANVAS
========================================================= */

#particleCanvas {
  position: absolute;
  z-index: -3;
  inset: 0;

  width: 100%;
  height: 100%;

  pointer-events: none;
}


/* =========================================================
   HERO CONTAINER
========================================================= */

.hero-container {
  position: relative;
  z-index: 5;

  min-height: 100svh;

  display: flex;
  align-items: center;

  padding-top: calc(var(--header-height) + 50px);
  padding-bottom: 100px;
}


/* =========================================================
   HERO CONTENT
========================================================= */

.hero-content {
  position: relative;
  z-index: 6;

  width: min(740px, 64vw);

  margin-top: -1vh;
}


/* =========================================================
   EYEBROW
========================================================= */

.hero-eyebrow {
  display: inline-flex;
  align-items: center;
  gap: 10px;

  margin-bottom: 34px;

  color: var(--text-muted);

  font-size: 10px;
  font-weight: 800;
  letter-spacing: 0.2em;
  line-height: 1;
  text-transform: uppercase;

  opacity: 0;
  transform: translateY(18px);
}

body.is-ready .hero-eyebrow {
  animation:
    fadeUp 0.8s 0.15s var(--ease-out) forwards;
}

.status-dot {
  width: 6px;
  height: 6px;

  border-radius: 50%;

  background: var(--accent);

  box-shadow:
    0 0 0 4px rgba(216, 255, 62, 0.06),
    0 0 18px rgba(216, 255, 62, 0.35);

  animation: statusPulse 2.2s ease-in-out infinite;
}

@keyframes statusPulse {
  0%,
  100% {
    opacity: 0.65;
    box-shadow:
      0 0 0 4px rgba(216, 255, 62, 0.06),
      0 0 18px rgba(216, 255, 62, 0.35);
  }

  50% {
    opacity: 1;
    box-shadow:
      0 0 0 7px rgba(216, 255, 62, 0.02),
      0 0 26px rgba(216, 255, 62, 0.5);
  }
}


/* =========================================================
   HERO TITLE
========================================================= */

.hero-title {
  margin: 0;

  font-size:
    clamp(74px, 9vw, 158px);

  font-weight: 850;

  letter-spacing: -0.075em;
  line-height: 0.84;

  text-wrap: balance;
}

.title-line {
  display: block;

  overflow: hidden;

  padding: 5px 0 8px;
}

.word {
  display: inline-block;

  opacity: 0;

  transform:
    translateY(115%)
    rotate(3deg);

  transform-origin: left bottom;
}

body.is-ready .word {
  animation:
    titleReveal 1s calc(0.32s + var(--word-index) * 0.11s)
    var(--ease-out)
    forwards;
}

.title-line:nth-child(1) .word {
  --word-index: 0;
}

.title-line:nth-child(2) .word {
  --word-index: 1;
}

.title-line:nth-child(3) .word {
  --word-index: 2;
}

.title-line--accent .word {
  color: transparent;

  background:
    linear-gradient(
      110deg,
      #f5f5f1 0%,
      #f5f5f1 38%,
      #d8ff3e 73%,
      #8c9f21 100%
    );

  background-clip: text;
  -webkit-background-clip: text;

  background-size: 200% auto;

  animation:
    titleReveal 1s 0.43s var(--ease-out) forwards,
    accentShift 6s 1.5s ease-in-out infinite alternate;
}

@keyframes titleReveal {
  0% {
    opacity: 0;
    transform:
      translateY(115%)
      rotate(3deg);
  }

  100% {
    opacity: 1;
    transform:
      translateY(0)
      rotate(0);
  }
}

@keyframes accentShift {
  from {
    background-position: 0% 50%;
  }

  to {
    background-position: 100% 50%;
  }
}


/* =========================================================
   HERO DESCRIPTION
========================================================= */

.hero-description {
  max-width: 595px;

  margin: 34px 0 0;

  color: var(--text-muted);

  font-size: clamp(15px, 1.15vw, 19px);
  line-height: 1.7;
  letter-spacing: -0.015em;

  opacity: 0;
  transform: translateY(22px);
}

.hero-description strong {
  color: #cfcfca;
  font-weight: 600;
}

body.is-ready .hero-description {
  animation:
    fadeUp 0.9s 0.72s var(--ease-out) forwards;
}


/* =========================================================
   ACTIONS
========================================================= */

.hero-actions {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 12px;

  margin-top: 34px;

  opacity: 0;
  transform: translateY(22px);
}

body.is-ready .hero-actions {
  animation:
    fadeUp 0.9s 0.85s var(--ease-out) forwards;
}


/* =========================================================
   BUTTONS
========================================================= */

.button {
  position: relative;

  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 14px;

  min-height: 55px;

  padding: 0 22px;

  border-radius: 999px;

  font-size: 12px;
  font-weight: 800;
  letter-spacing: 0.08em;
  text-transform: uppercase;

  overflow: hidden;

  transition:
    transform 0.18s ease,
    border-color 0.35s ease,
    background 0.35s ease,
    box-shadow 0.35s ease;
}

.button::before {
  content: "";

  position: absolute;
  inset: 0;

  transform: translateX(-105%);

  transition: transform 0.6s var(--ease-out);
}

.button:hover::before {
  transform: translateX(0);
}

.button > * {
  position: relative;
  z-index: 1;
}


/* Primary */

.button--primary {
  color: #070707;
  background: var(--accent);

  box-shadow:
    0 0 0 1px rgba(216, 255, 62, 0.18),
    0 14px 34px rgba(216, 255, 62, 0.12);
}

.button--primary::before {
  background:
    linear-gradient(
      100deg,
      rgba(255, 255, 255, 0.45),
      transparent 65%
    );
}

.button--primary:hover {
  box-shadow:
    0 0 0 1px rgba(216, 255, 62, 0.3),
    0 18px 42px rgba(216, 255, 62, 0.19);
}


/* Secondary */

.button--secondary {
  color: var(--text);

  border: 1px solid var(--border-strong);

  background:
    rgba(255, 255, 255, 0.035);

  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
}

.button--secondary::before {
  background:
    linear-gradient(
      100deg,
      rgba(255, 255, 255, 0.07),
      transparent 65%
    );
}

.button--secondary:hover {
  border-color: rgba(255, 255, 255, 0.28);
  background: rgba(255, 255, 255, 0.065);
}


/* Button icon */

.button-icon {
  display: grid;
  place-items: center;

  width: 26px;
  height: 26px;

  border-radius: 50%;

  background: rgba(0, 0, 0, 0.1);
}

.button-icon span {
  font-size: 14px;

  transition: transform 0.45s var(--ease-out);
}

.button:hover .button-icon span {
  transform: translate(2px, -2px);
}


/* Press feedback */

.button:active,
.nav-cta:active {
  transform: scale(0.97);
}


/* =========================================================
   META
========================================================= */

.hero-meta {
  display: flex;
  align-items: center;
  gap: 15px;

  margin-top: 58px;

  opacity: 0;
  transform: translateY(15px);
}

body.is-ready .hero-meta {
  animation:
    fadeUp 0.8s 1.05s var(--ease-out) forwards;
}

.hero-meta-item {
  display: flex;
  align-items: center;
  gap: 8px;

  color: var(--text-dim);

  font-size: 9px;
  font-weight: 800;
  letter-spacing: 0.15em;
}

.meta-number {
  color: var(--text-muted);
}

.meta-line {
  width: 30px;
  height: 1px;
  background: var(--border);
}


/* =========================================================
   ORBITAL SYSTEM
========================================================= */

.orbital-system {
  position: absolute;
  z-index: 2;

  top: 50%;
  right: clamp(-100px, 4vw, 80px);

  width: clamp(430px, 44vw, 690px);
  aspect-ratio: 1;

  transform:
    translateY(-50%)
    translate3d(var(--visual-x, 0px), var(--visual-y, 0px), 0);

  transition:
    transform 0.8s var(--ease-out);

  opacity: 0;

  animation:
    visualIn 1.5s 0.7s var(--ease-out) forwards;
}

@keyframes visualIn {
  from {
    opacity: 0;
    transform:
      translateY(-50%)
      scale(0.9)
      translate3d(20px, 20px, 0);
  }

  to {
    opacity: 1;
    transform:
      translateY(-50%)
      scale(1)
      translate3d(0, 0, 0);
  }
}


/* Core */

.core {
  position: absolute;

  left: 50%;
  top: 50%;

  width: 160px;
  height: 160px;

  transform: translate(-50%, -50%);

  border-radius: 50%;

  background:
    radial-gradient(
      circle at 45% 38%,
      rgba(255, 255, 255, 0.13),
      rgba(255, 255, 255, 0.02) 45%,
      rgba(216, 255, 62, 0.02) 70%,
      transparent 72%
    );

  border: 1px solid rgba(255, 255, 255, 0.11);

  box-shadow:
    0 0 80px rgba(216, 255, 62, 0.06),
    inset 0 0 40px rgba(255, 255, 255, 0.03);

  backdrop-filter: blur(15px);
  -webkit-backdrop-filter: blur(15px);

  animation:
    coreFloat 5s ease-in-out infinite;
}

@keyframes coreFloat {
  0%,
  100% {
    transform: translate(-50%, -50%) translateY(0);
  }

  50% {
    transform: translate(-50%, -50%) translateY(-10px);
  }
}

.core::before {
  content: "";

  position: absolute;
  inset: -25px;

  border-radius: 50%;

  background:
    radial-gradient(
      circle,
      rgba(216, 255, 62, 0.09),
      transparent 63%
    );

  filter: blur(10px);
}

.core-ring {
  position: absolute;
  inset: 14px;

  border: 1px solid rgba(216, 255, 62, 0.15);

  border-radius: 50%;

  animation: ringRotate 14s linear infinite;
}

.core-ring--inner {
  inset: 29px;

  border-color: rgba(255, 255, 255, 0.1);

  animation-direction: reverse;
  animation-duration: 9s;
}

@keyframes ringRotate {
  from {
    transform: rotate(0deg);
  }

  to {
    transform: rotate(360deg);
  }
}

.core-center {
  position: absolute;
  left: 50%;
  top: 50%;

  width: 55px;
  height: 55px;

  display: grid;
  place-items: center;

  transform: translate(-50%, -50%);

  border: 1px solid rgba(216, 255, 62, 0.32);
  border-radius: 50%;

  background:
    radial-gradient(
      circle at 35% 30%,
      rgba(216, 255, 62, 0.14),
      rgba(0, 0, 0, 0.2)
    );

  box-shadow:
    0 0 30px rgba(216, 255, 62, 0.08),
    inset 0 0 25px rgba(216, 255, 62, 0.05);
}

.core-center span {
  color: var(--accent);
  font-size: 17px;
  font-weight: 900;
  letter-spacing: -0.05em;
}


/* Orbits */

.orbit {
  position: absolute;
  left: 50%;
  top: 50%;

  width: 100%;
  height: 31%;

  border: 1px solid rgba(255, 255, 255, 0.095);
  border-radius: 50%;

  transform: translate(-50%, -50%) rotate(27deg);
}

.orbit--one {
  animation: orbitRotateOne 13s linear infinite;
}

.orbit--two {
  width: 74%;
  height: 61%;

  transform: translate(-50%, -50%) rotate(-44deg);

  border-color: rgba(255, 255, 255, 0.07);

  animation: orbitRotateTwo 17s linear infinite;
}

.orbit--three {
  width: 47%;
  height: 87%;

  transform: translate(-50%, -50%) rotate(71deg);

  border-color: rgba(216, 255, 62, 0.08);

  animation: orbitRotateThree 21s linear infinite reverse;
}

@keyframes orbitRotateOne {
  from {
    transform:
      translate(-50%, -50%)
      rotate(27deg)
      rotate(0deg);
  }

  to {
    transform:
      translate(-50%, -50%)
      rotate(27deg)
      rotate(360deg);
  }
}

@keyframes orbitRotateTwo {
  from {
    transform:
      translate(-50%, -50%)
      rotate(-44deg)
      rotate(0deg);
  }

  to {
    transform:
      translate(-50%, -50%)
      rotate(-44deg)
      rotate(360deg);
  }
}

@keyframes orbitRotateThree {
  from {
    transform:
      translate(-50%, -50%)
      rotate(71deg)
      rotate(0deg);
  }

  to {
    transform:
      translate(-50%, -50%)
      rotate(71deg)
      rotate(360deg);
  }
}

.orbit-node {
  position: absolute;

  top: 50%;
  right: -5px;

  width: 9px;
  height: 9px;

  transform: translateY(-50%);

  border-radius: 50%;

  background: var(--accent);

  box-shadow:
    0 0 12px rgba(216, 255, 62, 0.8),
    0 0 28px rgba(216, 255, 62, 0.35);
}

.orbit--two .orbit-node {
  width: 6px;
  height: 6px;
  right: 15%;
  background: #efefef;

  box-shadow:
    0 0 12px rgba(255, 255, 255, 0.55);
}

.orbit--three .orbit-node {
  width: 5px;
  height: 5px;
  top: 20%;
  right: 50%;
  background: #737373;

  box-shadow: 0 0 12px rgba(255, 255, 255, 0.18);
}


/* =========================================================
   MOBILE VISUAL
========================================================= */

.mobile-visual {
  display: none;
}


/* =========================================================
   HERO BOTTOM
========================================================= */

.hero-bottom {
  position: absolute;
  z-index: 8;

  left: 50%;
  bottom: 28px;

  width: min(calc(100% - 48px), var(--container));

  display: grid;
  grid-template-columns: 1fr auto 1fr;
  align-items: end;
  gap: 20px;

  transform: translateX(-50%);
}

.location-label,
.availability {
  display: flex;
  align-items: center;
  gap: 9px;

  color: var(--text-dim);

  font-size: 9px;
  font-weight: 800;
  letter-spacing: 0.16em;
}

.availability {
  justify-content: flex-end;
}

.location-icon {
  color: var(--accent);
  font-size: 14px;
}

.availability-dot {
  width: 5px;
  height: 5px;

  border-radius: 50%;

  background: #78e08f;

  box-shadow: 0 0 12px rgba(120, 224, 143, 0.45);
}


/* =========================================================
   SCROLL INDICATOR
========================================================= */

.scroll-indicator {
  appearance: none;

  display: inline-flex;
  align-items: center;
  gap: 12px;

  padding: 0;

  border: 0;

  background: transparent;

  color: var(--text-muted);

  font-size: 9px;
  font-weight: 800;
  letter-spacing: 0.19em;

  cursor: pointer;

  transition: color 0.25s ease;
}

.scroll-indicator:hover {
  color: var(--text);
}

.scroll-arrow {
  display: inline-flex;

  width: 27px;
  height: 27px;

  align-items: center;
  justify-content: center;

  border: 1px solid var(--border);
  border-radius: 50%;

  color: var(--accent);

  animation: scrollBounce 1.9s ease-in-out infinite;
}

@keyframes scrollBounce {
  0%,
  100% {
    transform: translateY(0);
  }

  50% {
    transform: translateY(5px);
  }
}


/* =========================================================
   SIDE TEXT
========================================================= */

.side-text {
  position: absolute;
  z-index: 1;

  color: rgba(255, 255, 255, 0.2);

  font-size: 8px;
  font-weight: 800;
  letter-spacing: 0.25em;

  writing-mode: vertical-rl;

  user-select: none;
}

.side-text--left {
  left: 17px;
  top: 50%;

  transform:
    translateY(-50%)
    rotate(180deg);
}

.side-text--right {
  right: 17px;
  top: 50%;

  transform: translateY(-50%);
}


/* =========================================================
   PLACEHOLDER SECTIONS
========================================================= */

.placeholder-section {
  min-height: 70vh;

  display: flex;
  align-items: center;

  padding: 100px 0;

  border-top: 1px solid var(--border);

  background: var(--bg-soft);
}

.placeholder-section span {
  color: var(--accent);

  font-size: 10px;
  font-weight: 800;
  letter-spacing: 0.2em;
}

.placeholder-section h2 {
  max-width: 850px;

  margin: 20px 0 0;

  font-size: clamp(42px, 7vw, 90px);
  line-height: 0.95;
  letter-spacing: -0.06em;
}


/* =========================================================
   GENERIC ANIMATION
========================================================= */

@keyframes fadeUp {
  from {
    opacity: 0;
    transform: translateY(22px);
  }

  to {
    opacity: 1;
    transform: translateY(0);
  }
}


/* =========================================================
   TABLET
========================================================= */

@media (max-width: 1100px) {
  :root {
    --header-height: 78px;
  }

  .container {
    width: min(calc(100% - 40px), var(--container));
  }

  .nav-links {
    gap: 22px;
  }

  .orbital-system {
    width: 550px;
    right: -100px;
  }

  .hero-content {
    width: 70vw;
  }

  .hero-bottom {
    width: min(calc(100% - 40px), var(--container));
  }
}


/* =========================================================
   TABLET / SMALL LAPTOP
========================================================= */

@media (max-width: 820px) {
  .nav-links {
    position: fixed;
    z-index: 4;

    top: 0;
    right: 0;

    width: min(340px, 85vw);
    height: 100svh;

    padding:
      calc(var(--header-height) + 40px)
      30px
      40px;

    flex-direction: column;
    align-items: flex-start;
    justify-content: flex-start;
    gap: 7px;

    background:
      linear-gradient(
        135deg,
        rgba(13, 13, 13, 0.98),
        rgba(6, 6, 6, 0.96)
      );

    border-left: 1px solid var(--border);

    box-shadow: -30px 0 80px rgba(0, 0, 0, 0.35);

    transform: translateX(105%);
    transition:
      transform 0.55s var(--ease-out);

    backdrop-filter: blur(24px);
    -webkit-backdrop-filter: blur(24px);
  }

  body.menu-open .nav-links {
    transform: translateX(0);
  }

  .nav-link {
    width: 100%;
    padding: 17px 0;

    font-size: 13px;

    border-bottom: 1px solid rgba(255, 255, 255, 0.06);
  }

  .nav-link::after {
    bottom: -1px;
  }

  .nav-cta {
    margin-left: auto;
  }

  .menu-toggle {
    display: block;
  }

  .orbital-system {
    width: 440px;
    right: -120px;
    opacity: 0.68;
  }

  .hero-content {
    width: 82vw;
  }

  .hero-title {
    font-size: clamp(72px, 12vw, 116px);
  }

  .hero-description {
    max-width: 560px;
  }

  .hero-bottom {
    grid-template-columns: 1fr 1fr;
  }

  .scroll-indicator {
    grid-column: 1 / -1;
    grid-row: 1;
    justify-self: center;
  }

  .availability {
    justify-content: flex-end;
  }
}


/* =========================================================
   MOBILE
========================================================= */

@media (max-width: 600px) {
  :root {
    --header-height: 70px;
  }

  .container {
    width: min(calc(100% - 32px), var(--container));
  }

  .site-header {
    padding: 13px 0;
  }

  .site-header.is-scrolled {
    padding: 9px 0;
  }

  .brand-text {
    font-size: 12px;
  }

  .nav-cta {
    display: none;
  }

  .hero {
    min-height: 100svh;
    height: auto;

    padding-bottom: 92px;
  }

  .hero-container {
    min-height: 100svh;

    padding-top: 140px;
    padding-bottom: 110px;

    display: block;
  }

  .hero-content {
    width: 100%;
    margin-top: 0;
  }

  .hero-eyebrow {
    margin-bottom: 26px;

    font-size: 8px;
    letter-spacing: 0.15em;
  }

  .hero-title {
    font-size: clamp(58px, 16.5vw, 90px);

    letter-spacing: -0.075em;
    line-height: 0.87;
  }

  .hero-description {
    max-width: 450px;

    margin-top: 27px;

    font-size: 14px;
    line-height: 1.7;
  }

  .hero-actions {
    margin-top: 29px;

    flex-direction: column;
    align-items: stretch;
  }

  .button {
    width: 100%;
    min-height: 53px;
  }

  .hero-meta {
    margin-top: 38px;
    gap: 10px;
  }

  .meta-line {
    width: 18px;
  }

  .hero-meta-item {
    font-size: 7px;
    letter-spacing: 0.1em;
  }

  /* Replace complex desktop visual */
  .orbital-system {
    display: none;
  }

  .mobile-visual {
    display: block;

    position: absolute;
    z-index: -1;

    right: -95px;
    top: 32%;

    width: 330px;
    height: 330px;

    opacity: 0.34;
  }

  .mobile-orb {
    position: absolute;
    inset: 0;

    border-radius: 50%;

    border: 1px solid rgba(255, 255, 255, 0.1);

    animation: mobileOrbRotate 16s linear infinite;
  }

  .mobile-orb::before,
  .mobile-orb::after {
    content: "";

    position: absolute;
    inset: 13%;

    border: 1px solid rgba(216, 255, 62, 0.1);
    border-radius: 50%;
  }

  .mobile-orb::after {
    inset: 28%;

    border-color: rgba(255, 255, 255, 0.1);
  }

  .mobile-orb-inner {
    position: absolute;

    left: 50%;
    top: 50%;

    width: 75px;
    height: 75px;

    transform: translate(-50%, -50%);

    border-radius: 50%;

    background:
      radial-gradient(
        circle,
        rgba(216, 255, 62, 0.16),
        rgba(216, 255, 62, 0.02) 55%,
        transparent 70%
      );

    box-shadow: 0 0 60px rgba(216, 255, 62, 0.1);
  }

  @keyframes mobileOrbRotate {
    from {
      transform: rotate(0);
    }

    to {
      transform: rotate(360deg);
    }
  }

  .hero-bottom {
    position: absolute;

    bottom: 18px;

    width: calc(100% - 32px);

    grid-template-columns: 1fr auto;
    gap: 14px;
  }

  .location-label,
  .availability {
    font-size: 7px;
    letter-spacing: 0.1em;
  }

  .availability {
    display: none;
  }

  .scroll-indicator {
    grid-column: 2;
    grid-row: 1;
  }

  .side-text {
    display: none;
  }

  .hero-grid {
    background-size: 60px 60px;
  }

  .cursor-glow {
    display: none;
  }

  .placeholder-section {
    min-height: 55vh;
    padding: 80px 0;
  }
}


/* =========================================================
   SMALL MOBILE
========================================================= */

@media (max-width: 390px) {
  .hero-title {
    font-size: clamp(53px, 15.8vw, 70px);
  }

  .hero-eyebrow {
    font-size: 7px;
  }

  .hero-description {
    font-size: 13px;
  }

  .hero-meta-item {
    font-size: 6px;
  }

  .meta-line {
    width: 12px;
  }

  .hero-bottom {
    bottom: 15px;
  }
}


/* =========================================================
   REDUCED MOTION
========================================================= */

@media (prefers-reduced-motion: reduce) {
  html {
    scroll-behavior: auto;
  }

  *,
  *::before,
  *::after {
    animation-duration: 0.001ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.001ms !important;
  }

  .cursor-glow {
    display: none;
  }

  .hero-grid {
    animation: none;
  }

  .orbital-system {
    animation: none;
  }

  .word,
  .hero-eyebrow,
  .hero-description,
  .hero-actions,
  .hero-meta,
  .site-header {
    opacity: 1 !important;

    transform: none !important;
  }
}
/* =========================================================
   DOM
========================================================= */

const body = document.body;
const header = document.getElementById("siteHeader");
const menuToggle = document.getElementById("menuToggle");
const navLinks = document.getElementById("navLinks");
const scrollIndicator = document.getElementById("scrollIndicator");
const canvas = document.getElementById("particleCanvas");
const hero = document.querySelector(".hero");
const orbitalSystem = document.querySelector(".orbital-system");

const prefersReducedMotion = window.matchMedia(
  "(prefers-reduced-motion: reduce)"
).matches;


/* =========================================================
   PAGE LOAD
========================================================= */

window.addEventListener("load", () => {
  requestAnimationFrame(() => {
    body.classList.add("is-ready");
  });
});


/* =========================================================
   HEADER SCROLL STATE
========================================================= */

function updateHeader() {
  const scrolled = window.scrollY > 30;

  header.classList.toggle("is-scrolled", scrolled);
}

window.addEventListener(
  "scroll",
  updateHeader,
  { passive: true }
);

updateHeader();


/* =========================================================
   MOBILE NAVIGATION
========================================================= */

function closeMenu() {
  body.classList.remove("menu-open");
  menuToggle.setAttribute("aria-expanded", "false");
  menuToggle.setAttribute("aria-label", "Open navigation menu");
}

function openMenu() {
  body.classList.add("menu-open");
  menuToggle.setAttribute("aria-expanded", "true");
  menuToggle.setAttribute("aria-label", "Close navigation menu");
}

menuToggle.addEventListener("click", () => {
  const isOpen = body.classList.contains("menu-open");

  if (isOpen) {
    closeMenu();
  } else {
    openMenu();
  }
});


document.querySelectorAll(".nav-link").forEach((link) => {
  link.addEventListener("click", () => {
    closeMenu();
  });
});


document.addEventListener("keydown", (event) => {
  if (event.key === "Escape") {
    closeMenu();
  }
});


document.addEventListener("click", (event) => {
  if (!body.classList.contains("menu-open")) {
    return;
  }

  const clickedInsideNav =
    navLinks.contains(event.target) ||
    menuToggle.contains(event.target);

  if (!clickedInsideNav) {
    closeMenu();
  }
});


/* =========================================================
   SMOOTH SCROLL
========================================================= */

document.querySelectorAll('a[href^="#"]').forEach((link) => {
  link.addEventListener("click", (event) => {
    const targetID = link.getAttribute("href");

    if (!targetID || targetID === "#") {
      return;
    }

    const target = document.querySelector(targetID);

    if (!target) {
      return;
    }

    event.preventDefault();

    target.scrollIntoView({
      behavior: prefersReducedMotion ? "auto" : "smooth",
      block: "start"
    });
  });
});


/* =========================================================
   SCROLL INDICATOR
========================================================= */

scrollIndicator.addEventListener("click", () => {
  window.scrollTo({
    top: window.innerHeight,
    behavior: prefersReducedMotion ? "auto" : "smooth"
  });
});


/* =========================================================
   CURSOR LIGHT
========================================================= */

let cursorFrame = null;
let mouseX = window.innerWidth / 2;
let mouseY = window.innerHeight / 2;

function updateCursorGlow() {
  cursorFrame = null;

  document.documentElement.style.setProperty(
    "--mouse-x",
    `${mouseX}px`
  );

  document.documentElement.style.setProperty(
    "--mouse-y",
    `${mouseY}px`
  );
}

if (!prefersReducedMotion && window.matchMedia("(hover: hover)").matches) {
  window.addEventListener(
    "pointermove",
    (event) => {
      mouseX = event.clientX;
      mouseY = event.clientY;

      if (!cursorFrame) {
        cursorFrame = requestAnimationFrame(updateCursorGlow);
      }
    },
    { passive: true }
  );
}


/* =========================================================
   HERO PARALLAX
========================================================= */

let visualFrame = null;
let pointerTargetX = 0;
let pointerTargetY = 0;

function updateVisualParallax() {
  visualFrame = null;

  if (!orbitalSystem) {
    return;
  }

  orbitalSystem.style.setProperty(
    "--visual-x",
    `${pointerTargetX}px`
  );

  orbitalSystem.style.setProperty(
    "--visual-y",
    `${pointerTargetY}px`
  );
}

if (
  !prefersReducedMotion &&
  window.matchMedia("(hover: hover)").matches
) {
  hero.addEventListener(
    "pointermove",
    (event) => {
      const rect = hero.getBoundingClientRect();

      const x =
        (event.clientX - rect.left) / rect.width - 0.5;

      const y =
        (event.clientY - rect.top) / rect.height - 0.5;

      pointerTargetX = x * 24;
      pointerTargetY = y * 18;

      if (!visualFrame) {
        visualFrame = requestAnimationFrame(
          updateVisualParallax
        );
      }
    },
    { passive: true }
  );

  hero.addEventListener(
    "pointerleave",
    () => {
      pointerTargetX = 0;
      pointerTargetY = 0;

      if (!visualFrame) {
        visualFrame = requestAnimationFrame(
          updateVisualParallax
        );
      }
    },
    { passive: true }
  );
}


/* =========================================================
   MAGNETIC BUTTONS
========================================================= */

const magneticElements =
  document.querySelectorAll(".magnetic");

if (
  !prefersReducedMotion &&
  window.matchMedia("(hover: hover)").matches
) {
  magneticElements.forEach((element) => {
    const strength =
      Number(
        element.dataset.magneticStrength || 0.15
      );

    let frame = null;

    let targetX = 0;
    let targetY = 0;

    const render = () => {
      frame = null;

      element.style.transform =
        `translate3d(${targetX}px, ${targetY}px, 0)`;
    };

    element.addEventListener(
      "pointermove",
      (event) => {
        const rect = element.getBoundingClientRect();

        const relativeX =
          event.clientX -
          rect.left -
          rect.width / 2;

        const relativeY =
          event.clientY -
          rect.top -
          rect.height / 2;

        targetX = relativeX * strength;
        targetY = relativeY * strength;

        if (!frame) {
          frame = requestAnimationFrame(render);
        }
      },
      { passive: true }
    );

    element.addEventListener("pointerleave", () => {
      targetX = 0;
      targetY = 0;

      if (!frame) {
        frame = requestAnimationFrame(render);
      }
    });
  });
}


/* =========================================================
   PARTICLE SYSTEM
========================================================= */

const particleContext = canvas.getContext("2d");

let particles = [];
let animationFrame = null;
let canvasWidth = 0;
let canvasHeight = 0;
let pixelRatio = Math.min(window.devicePixelRatio || 1, 2);

const PARTICLE_COUNT_DESKTOP = 72;
const PARTICLE_COUNT_MOBILE = 32;

function getParticleCount() {
  return window.innerWidth <= 600
    ? PARTICLE_COUNT_MOBILE
    : PARTICLE_COUNT_DESKTOP;
}


/* =========================================================
   PARTICLE CREATION
========================================================= */

function createParticle() {
  return {
    x: Math.random() * canvasWidth,
    y: Math.random() * canvasHeight,

    radius:
      Math.random() * 1.5 + 0.35,

    opacity:
      Math.random() * 0.5 + 0.05,

    speed:
      Math.random() * 0.16 + 0.03,

    drift:
      (Math.random() - 0.5) * 0.08,

    phase:
      Math.random() * Math.PI * 2,

    accent:
      Math.random() < 0.08
  };
}


/* =========================================================
   CANVAS RESIZE
========================================================= */

function resizeCanvas() {
  const rect = canvas.getBoundingClientRect();

  canvasWidth = rect.width;
  canvasHeight = rect.height;

  pixelRatio =
    Math.min(window.devicePixelRatio || 1, 2);

  canvas.width =
    Math.floor(canvasWidth * pixelRatio);

  canvas.height =
    Math.floor(canvasHeight * pixelRatio);

  particleContext.setTransform(
    pixelRatio,
    0,
    0,
    pixelRatio,
    0,
    0
  );

  const count = getParticleCount();

  particles = Array.from(
    { length: count },
    createParticle
  );
}

window.addEventListener(
  "resize",
  resizeCanvas,
  { passive: true }
);


/* =========================================================
   PARTICLE DRAW
========================================================= */

function drawParticles(time = 0) {
  particleContext.clearRect(
    0,
    0,
    canvasWidth,
    canvasHeight
  );

  particles.forEach((particle) => {
    particle.y -= particle.speed;

    particle.x +=
      Math.sin(
        time * 0.0003 +
        particle.phase
      ) * particle.drift;

    if (particle.y < -10) {
      particle.y = canvasHeight + 10;
      particle.x = Math.random() * canvasWidth;
    }

    const shimmer =
      particle.opacity +
      Math.sin(
        time * 0.001 +
        particle.phase
      ) * 0.05;

    particleContext.beginPath();

    particleContext.arc(
      particle.x,
      particle.y,
      particle.radius,
      0,
      Math.PI * 2
    );

    if (particle.accent) {
      particleContext.fillStyle =
        `rgba(216, 255, 62, ${Math.max(0.02, shimmer)})`;
    } else {
      particleContext.fillStyle =
        `rgba(255, 255, 255, ${Math.max(0.015, shimmer)})`;
    }

    particleContext.fill();
  });
}


/* =========================================================
   PARTICLE LOOP
========================================================= */

function particleLoop(time) {
  drawParticles(time);

  animationFrame =
    requestAnimationFrame(particleLoop);
}


/* =========================================================
   START PARTICLES
========================================================= */

if (!prefersReducedMotion) {
  resizeCanvas();

  animationFrame =
    requestAnimationFrame(particleLoop);
} else {
  resizeCanvas();
  drawParticles(0);
}


/* =========================================================
   CLEANUP WHEN TAB IS HIDDEN
========================================================= */

document.addEventListener("visibilitychange", () => {
  if (document.hidden) {
    if (animationFrame) {
      cancelAnimationFrame(animationFrame);
      animationFrame = null;
    }
  } else if (!prefersReducedMotion && !animationFrame) {
    animationFrame =
      requestAnimationFrame(particleLoop);
  }
});


/* =========================================================
   NAV ACTIVE STATE
========================================================= */

const sections =
  document.querySelectorAll("main section[id]");

const navItems =
  document.querySelectorAll(".nav-link");

const observer =
  new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (!entry.isIntersecting) {
          return;
        }

        navItems.forEach((link) => {
          link.classList.remove("active");

          if (
            link.getAttribute("href") ===
            `#${entry.target.id}`
          ) {
            link.classList.add("active");
          }
        });
      });
    },
    {
      threshold: 0.25
    }
  );

sections.forEach((section) => {
  observer.observe(section);
});


/* =========================================================
   RESPECT MOBILE RESIZE
========================================================= */

window.addEventListener("resize", () => {
  if (
    window.innerWidth > 820 &&
    body.classList.contains("menu-open")
  ) {
    closeMenu();
  }
});
