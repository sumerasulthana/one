<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
  <title>NexusShop · colorful & friendly</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #f6f9fe;
      --surface: #ffffff;
      --primary: #0b1e33;
      --accent: #2b7aff;
      --accent-soft: #e3f0ff;
      --muted: #5e6f8d;
      --border: #dce5f2;
      --radius: 24px;
      --shadow: 0 12px 28px -8px rgba(0, 20, 40, 0.08);
      --transition: all 0.2s ease;
      --gradient-hero: linear-gradient(135deg, #0b1e33 0%, #1d3a5e 100%);
      --gradient-card: linear-gradient(145deg, #ffffff, #fafcff);
    }
    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    /* header – glassmorphism with vibrant accent */
    header {
      background: rgba(255,255,255,0.75);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 2px solid rgba(43, 122, 255, 0.15);
      position: sticky;
      top: 0;
      z-index: 50;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      height: 72px;
      gap: 12px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: -0.02em;
      background: linear-gradient(135deg, #0b1e33 0%, #2b7aff 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i { -webkit-text-fill-color: var(--accent); color: var(--accent); }
    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-desktop a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: var(--transition);
      color: var(--primary);
      background: transparent;
    }
    .nav-desktop a:hover,
    .nav-desktop a:focus-visible {
      background: var(--accent-soft);
      color: var(--accent);
      transform: translateY(-1px);
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .search-wrap {
      background: var(--surface);
      border: 2px solid var(--border);
      border-radius: 60px;
      display: flex;
      align-items: center;
      padding: 2px 2px 2px 18px;
      transition: var(--transition);
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 4px 16px rgba(43, 122, 255, 0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      font-size: 0.95rem;
      width: 160px;
      padding: 8px 0;
      color: var(--primary);
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      border-radius: 60px;
      padding: 8px 16px;
      font-size: 0.9rem;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
      font-weight: 600;
    }
    .search-wrap button:hover { background: #1a5edb; transform: scale(0.97); }
    .icon-btn {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      border: none;
      background: transparent;
      color: var(--primary);
      font-size: 1.2rem;
      display: grid;
      place-items: center;
      transition: var(--transition);
      cursor: pointer;
      position: relative;
    }
    .icon-btn:hover { background: var(--accent-soft); color: var(--accent); }
    .cart-badge {
      position: absolute;
      top: 2px;
      right: 2px;
      background: #ff6b8a;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: grid;
      place-items: center;
      border: 2px solid white;
      box-shadow: 0 2px 8px rgba(255, 107, 138, 0.4);
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      cursor: pointer;
      padding: 6px;
      color: var(--primary);
    }
    /* mobile nav */
    .mobile-nav {
      display: none;
      background: rgba(255,255,255,0.96);
      backdrop-filter: blur(8px);
      border-top: 2px solid var(--border);
      padding: 12px 0;
    }
    .mobile-nav a {
      display: block;
      padding: 14px 24px;
      font-weight: 500;
      border-radius: 16px;
      transition: var(--transition);
    }
    .mobile-nav a:hover { background: var(--accent-soft); color: var(--accent); }
    /* hero – vibrant gradient */
    .hero {
      background: var(--gradient-hero);
      color: white;
      padding: 64px 24px 56px;
      border-radius: 0 0 56px 56px;
      margin: 0 0 32px 0;
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      top: -30%;
      right: -10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(43,122,255,0.15) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero h1 {
      font-size: clamp(2.2rem, 6vw, 3.4rem);
      font-weight: 700;
      letter-spacing: -0.02em;
      max-width: 720px;
      margin: 0 auto 12px;
      position: relative;
    }
    .hero p {
      opacity: 0.85;
      max-width: 540px;
      margin: 0 auto 32px;
      font-size: 1.1rem;
      position: relative;
    }
    .btn-group { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; position: relative; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
      box-shadow: 0 8px 20px rgba(0,0,0,0.06);
    }
    .btn-primary {
      background: linear-gradient(135deg, #2b7aff, #5a9cff);
      color: white;
      box-shadow: 0 8px 24px rgba(43, 122, 255, 0.3);
    }
    .btn-primary:hover { transform: scale(1.03); box-shadow: 0 12px 32px rgba(43, 122, 255, 0.4); }
    .btn-outline-light {
      background: rgba(255,255,255,0.08);
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-outline-light:hover { background: rgba(255,255,255,0.15); border-color: rgba(255,255,255,0.5); }
    /* sections */
    .section { padding: 28px 0 40px; }
    .section-title {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.01em;
      margin-bottom: 6px;
      background: linear-gradient(135deg, #0b1e33, #2b7aff);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      display: inline-block;
    }
    .section-sub { color: var(--muted); margin-bottom: 24px; font-weight: 500; }
    /* categories – colorful cards */
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: var(--surface);
      padding: 22px 8px;
      border-radius: var(--radius);
      text-align: center;
      box-shadow: var(--shadow);
      border: 2px solid transparent;
      transition: var(--transition);
      cursor: pointer;
      background: var(--gradient-card);
      position: relative;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 16px 36px -12px rgba(43,122,255,0.18);
    }
    .cat-card i { font-size: 2.2rem; margin-bottom: 8px; background: linear-gradient(135deg, #2b7aff, #ff6b8a); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
    .cat-card h4 { font-weight: 600; font-size: 1rem; color: var(--primary); }
    /* products – vivid */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 28px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 2px solid var(--border);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      background: var(--gradient-card);
    }
    .product-card:hover { transform: translateY(-8px); box-shadow: 0 24px 48px -16px rgba(0,20,40,0.15); border-color: #b8d4ff; }
    .product-card img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      background: #f0f6ff;
      border-bottom: 2px solid var(--border);
    }
    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .product-title { font-weight: 600; font-size: 1rem; color: var(--primary); }
    .product-category { font-size: 0.8rem; color: var(--muted); text-transform: capitalize; background: var(--accent-soft); padding: 2px 12px; border-radius: 30px; display: inline-block; width: fit-content; }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin: 6px 0;
      flex-wrap: wrap;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; color: #0b1e33; }
    .price-old { color: var(--muted); text-decoration: line-through; font-size: 0.85rem; }
    .rating { color: #f5a623; font-size: 0.9rem; background: #fff8e0; padding: 2px 10px; border-radius: 30px; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .btn-add {
      flex: 1;
      background: linear-gradient(135deg, #0b1e33, #1d3a5e);
      color: white;
      border: none;
      padding: 12px;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .btn-add:hover { background: linear-gradient(135deg, #1d3a5e, #2b7aff); transform: scale(1.02); }
    .btn-wish {
      background: transparent;
      border: 2px solid var(--border);
      border-radius: 60px;
      width: 48px;
      height: 48px;
      display: grid;
      place-items: center;
      cursor: pointer;
      transition: var(--transition);
      color: var(--muted);
    }
    .btn-wish:hover { background: #ffe3ea; border-color: #ff6b8a; color: #ff6b8a; }
    /* deal – colorful */
    .deal-card {
      background: linear-gradient(135deg, #ffffff, #f4f9ff);
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-wrap: wrap;
      box-shadow: 0 16px 40px -12px rgba(43,122,255,0.12);
      border: 2px solid #dce9ff;
    }
    .deal-card img { width: 100%; max-height: 280px; object-fit: cover; flex: 1 1 280px; }
    .deal-content {
      padding: 32px 36px;
      flex: 2 1 320px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 { font-size: 1.8rem; font-weight: 700; background: linear-gradient(135deg, #0b1e33, #2b7aff); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
    .timer {
      display: flex;
      gap: 14px;
      margin: 18px 0;
    }
    .time-box {
      background: linear-gradient(135deg, #0b1e33, #1d3a5e);
      color: white;
      padding: 10px 12px;
      border-radius: 16px;
      min-width: 68px;
      text-align: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .time-box div:first-child { font-size: 1.6rem; font-weight: 700; }
    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 24px;
      scrollbar-width: thin;
    }
    .testimonial {
      min-width: 260px;
      background: var(--surface);
      padding: 24px;
      border-radius: var(--radius);
      border: 2px solid var(--border);
      box-shadow: var(--shadow);
      background: var(--gradient-card);
    }
    .testimonial .stars { color: #f5a623; margin-bottom: 8px; letter-spacing: 2px; }
    /* newsletter – vibrant */
    .newsletter-box {
      background: linear-gradient(135deg, #0b1e33, #1d3a5e);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
      border: 2px solid rgba(255,255,255,0.05);
      box-shadow: 0 16px 40px -12px rgba(0,20,40,0.2);
    }
    .newsletter-box input {
      padding: 16px 22px;
      border-radius: 60px;
      border: none;
      width: 320px;
      max-width: 100%;
      font-size: 1rem;
      margin-right: 8px;
      background: rgba(255,255,255,0.08);
      color: white;
      border: 2px solid rgba(255,255,255,0.08);
      transition: var(--transition);
    }
    .newsletter-box input::placeholder { color: rgba(255,255,255,0.5); }
    .newsletter-box input:focus { outline: none; background: rgba(255,255,255,0.16); border-color: var(--accent); }
    .newsletter-box .btn-primary { background: white; color: var(--primary); box-shadow: 0 8px 20px rgba(0,0,0,0.1); }
    .newsletter-box .btn-primary:hover { background: #f0f4ff; transform: scale(1.02); }
    /* footer */
    footer {
      padding: 36px 0 20px;
      border-top: 2px solid var(--border);
      margin-top: 20px;
      background: var(--surface);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 28px;
    }
    .footer-links { display: flex; gap: 48px; flex-wrap: wrap; }
    .footer-links div { display: flex; flex-direction: column; gap: 6px; }
    .footer-links div span { font-weight: 600; margin-bottom: 4px; color: var(--primary); }
    .footer-links a { color: var(--muted); font-size: 0.9rem; transition: var(--transition); }
    .footer-links a:hover { color: var(--accent); }
    /* responsive */
    @media (max-width: 780px) {
      .nav-desktop { display: none; }
      .mobile-toggle { display: block; }
      .search-wrap input { width: 100px; }
      .search-wrap button span { display: none; }
      .grid-products { grid-template-columns: repeat(auto-fill, minmax(170px, 1fr)); }
    }
    @media (max-width: 480px) {
      .header-inner { flex-wrap: wrap; height: auto; padding: 8px 0; }
      .search-wrap { width: 100%; order: 3; margin: 6px 0; }
      .search-wrap input { flex: 1; }
      .grid-categories { grid-template-columns: repeat(2, 1fr); }
      .deal-content { padding: 20px; }
    }
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .gap-8 { gap: 8px; }
    .flex { display: flex; align-items: center; }
    .badge-sale { background: #ff6b8a; color: white; padding: 2px 14px; border-radius: 40px; font-weight: 700; font-size: 0.75rem; }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div class="flex" style="gap:8px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-bolt"></i> Nexus<span style="background:linear-gradient(135deg,#2b7aff,#ff6b8a);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;">Shop</span></a>
      </div>

      <nav class="nav-desktop">
        <a href="#"><i class="fas fa-home"></i> Home</a>
        <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
        <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
        <a href="#"><i class="fas fa-fire" style="color:#ff6b8a;"></i> Trending</a>
      </nav>

      <div class="header-actions">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
          <button id="searchBtn"><i class="fas fa-search"></i><span>Find</span></button>
        </div>
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart" style="color:#ff6b8a;"></i></button>
        <button class="icon-btn" id="cartBtn" aria-label="Cart">
          <i class="fas fa-shopping-cart" style="color:#2b7aff;"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </button>
      </div>
    </div>

    <!-- mobile menu -->
    <div class="mobile-nav" id="mobileMenu">
      <div class="container" style="display:flex;flex-direction:column;gap:4px;">
        <a href="#"><i class="fas fa-home"></i> Home</a>
        <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
        <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
        <a href="#"><i class="fas fa-fire"></i> Trending</a>
        <a href="#"><i class="fas fa-info-circle"></i> About</a>
      </div>
    </div>
  </header>

  <main>
    <!-- Hero -->
    <section class="hero">
      <div class="container">
        <h1>✨ New collection · winter essentials</h1>
        <p>Discover vibrant tech, style & accessories. Free shipping & colorful deals.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-outline-light" id="exploreDeals"><i class="fas fa-gift"></i> Explore deals</button>
        </div>
      </div>
    </section>

    <!-- Categories -->
    <section class="section container" id="categories">
      <h2 class="section-title">Shop by category</h2>
      <p class="section-sub">Browse our colorful collections</p>
      <div class="grid-categories" id="categoriesGrid"></div>
    </section>

    <!-- Products -->
    <section class="section container" id="products">
      <h2 class="section-title">Trending now</h2>
      <p class="section-sub">Popular picks loved by our community</p>
      <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- Deal -->
    <section class="section container" id="deals">
      <h2 class="section-title">⚡ Flash sale</h2>
      <p class="section-sub">Limited time colorful offers</p>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Ultra‑thin, powerful, all‑day battery.</p>
          <div class="timer" aria-hidden="true">
            <div class="time-box"><div id="dealDays">0</div><div style="font-size:0.7rem;opacity:0.8;">Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div style="font-size:0.7rem;opacity:0.8;">Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div style="font-size:0.7rem;opacity:0.8;">Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div style="font-size:0.7rem;opacity:0.8;">Sec</div></div>
          </div>
          <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
            <span class="price-current">$999</span>
            <span class="price-old">$1,199</span>
            <span class="badge-sale">-17%</span>
          </div>
          <p style="margin:8px 0 4px;">Only <strong style="color:#2b7aff;">12</strong> items left</p>
          <button class="btn btn-primary" id="buyDeal" style="margin-top:12px;align-self:flex-start;"><i class="fas fa-bolt"></i> Buy now</button>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section container">
      <h2 class="section-title">💬 What our customers say</h2>
      <p class="section-sub">Real reviews from real people</p>
      <div class="testimonial-scroll" id="testimonials">
        <div class="testimonial">
          <div class="stars">★★★★★</div>
          <p>"Super fast delivery and the quality is amazing. Love the minimal design."</p>
          <div style="display:flex;align-items:center;gap:10px;margin-top:10px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&h=80&q=80" alt="Ava" style="width:40px;height:40px;border-radius:50%;object-fit:cover;border:2px solid #2b7aff;">
            <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="stars">★★★★☆</div>
          <p>"Great selection, easy checkout. Will definitely order again."</p>
          <div style="display:flex;align-items:center;gap:10px;margin-top:10px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&h=80&q=80" alt="Michael" style="width:40px;height:40px;border-radius:50%;object-fit:cover;border:2px solid #ff6b8a;">
            <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="stars">★★★★★</div>
          <p>"The customer support was incredibly helpful. Highly recommend."</p>
          <div style="display:flex;align-items:center;gap:10px;margin-top:10px;">
            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&h=80&q=80" alt="James" style="width:40px;height:40px;border-radius:50%;object-fit:cover;border:2px solid #f5a623;">
            <div><strong>James Park</strong><div class="muted" style="font-size:0.8rem;">First time</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="section container">
      <div class="newsletter-box">
        <h3 style="font-size:1.6rem;font-weight:700;">🌈 Stay in the loop</h3>
        <p style="opacity:0.8;margin-bottom:18px;">Get exclusive offers & new arrivals</p>
        <form id="newsletterForm" style="display:flex;justify-content:center;gap:12px;flex-wrap:wrap;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button class="btn btn-primary" id="subscribeBtn"><em class="fas fa-envelope"></em> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:14px;font-size:0.95rem;display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container footer-grid">
      <div>
        <div style="font-weight:700;font-size:1.3rem;"><i class="fas fa-bolt" style="color:var(--accent);"></i> Nexus<span style="background:linear-gradient(135deg,#2b7aff,#ff6b8a);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;">Shop</span></div>
        <p class="muted" style="margin-top:6px;max-width:260px;">Modern e‑commerce demo with a friendly, colorful touch.</p>
        <div style="display:flex;gap:14px;margin-top:12px;">
          <a href="#" aria-label="Facebook" style="color:#2b7aff;"><i class="fab fa-facebook"></i></a>
          <a href="#" aria-label="Twitter" style="color:#2b7aff;"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram" style="color:#ff6b8a;"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="footer-links">
        <div><span>Company</span><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
        <div><span>Support</span><a href="#">Help center</a><a href="#">Shipping</a><a href="#">Contact</a></div>
      </div>
    </div>
    <div class="container text-center muted" style="margin-top:24px;font-size:0.85rem;">© <span id="year"></span> NexusShop · All rights reserved.</div>
  </footer>

  <script>
    // ----- DATA -----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
    ];

    // ----- STATE -----
    let cartCount = 0;

    // ----- DOM refs -----
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');

    // ----- helpers -----
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({ '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;' }[s]));
    }

    function updateCart() {
      cartCountEl.textContent = cartCount;
    }

    function addToCart(id) {
      const p = PRODUCTS.find(x => x.id === id);
      if (!p) return;
      cartCount++;
      updateCart();
      const btn = document.querySelector(`.btn-add[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1200);
      }
    }

    // ----- render -----
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4>`;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
          <div class="product-body">
            <div class="product-title">${escapeHtml(p.title)}</div>
            <div class="product-category">${p.category}</div>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              <span class="rating">${'★'.repeat(Math.round(p.rating))} ${p.reviews}</span>
            </div>
            ${p.badge ? `<span style="background:${p.badge.startsWith('-')?'#ff6b8a':'#2ecc71'};color:white;padding:2px 14px;border-radius:40px;font-size:0.75rem;font-weight:700;align-self:flex-start;">${p.badge}</span>` : ''}
          </div>
          <div class="product-footer">
            <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="btn-wish" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });
      productsGrid.querySelectorAll('.btn-add').forEach(btn => {
        btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
      });
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // ----- events -----
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'block' ? 'none' : 'block';
    });

    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('buyDeal').addEventListener('click', () => {
      cartCount += 1;
      updateCart();
      alert('Deal added to cart (demo).');
    });

    // newsletter
    document.getElementById('newsletterForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email.';
        msg.style.color = '#ffb3b3';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ Thanks! You\'re subscribed.';
      msg.style.color = '#b8e6b8';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // deal timer
    (function() {
      const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) return;
        document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
        document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // init
    renderCategories();
    renderProducts(PRODUCTS);
    updateCart();
    document.getElementById('year').textContent = new Date().getFullYear();
  </script>
</body>
</html>
