Here is an HTML document that transforms the e-commerce site into a modern, visually appealing shopping experience with a sleek dark theme, glassmorphism effects, and smooth animations.
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NovaCart — Immersive E‑Commerce</title>

    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: radial-gradient(circle at 10% 20%, #0B1120, #030712);
            font-family: 'Inter', sans-serif;
            color: #F1F5F9;
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* Glassmorphism & Modern UI */
        .glass-card {
            background: rgba(15, 25, 35, 0.55);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(72, 187, 255, 0.18);
            border-radius: 28px;
            box-shadow: 0 20px 35px -12px rgba(0, 0, 0, 0.4);
            transition: all 0.25s ease;
        }

        .glass-card:hover {
            border-color: rgba(0, 212, 255, 0.5);
            transform: translateY(-4px);
            box-shadow: 0 25px 40px -14px rgba(0, 212, 255, 0.2);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Header / Nav */
        .header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(3, 7, 18, 0.78);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(56, 189, 248, 0.2);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            padding: 16px 0;
            gap: 18px;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.8rem;
            background: linear-gradient(135deg, #FFFFFF, #38BDF8);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .brand span {
            background: linear-gradient(135deg, #F0F9FF, #00D4FF);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        .main-nav li a {
            padding: 8px 18px;
            font-weight: 500;
            border-radius: 40px;
            background: rgba(255,255,255,0.02);
            transition: 0.2s;
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
        }

        .main-nav li a:hover {
            background: rgba(0, 212, 255, 0.18);
            color: #00D4FF;
            border-color: transparent;
        }

        .search {
            background: rgba(20, 30, 45, 0.7);
            border-radius: 60px;
            padding: 8px 16px;
            display: flex;
            align-items: center;
            gap: 8px;
            border: 1px solid rgba(0,212,255,0.2);
            backdrop-filter: blur(4px);
        }

        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
            font-size: 0.9rem;
        }

        .search input::placeholder {
            color: #94A3B8;
        }

        .icon-btn {
            background: rgba(255,255,255,0.05);
            border: none;
            color: #E2E8F0;
            font-size: 1.2rem;
            padding: 8px 12px;
            border-radius: 40px;
            transition: 0.2s;
            cursor: pointer;
        }

        .icon-btn:hover {
            background: #00D4FF20;
            color: #00D4FF;
        }

        .cart {
            position: relative;
            background: rgba(0, 212, 255, 0.12);
            border-radius: 40px;
            padding: 8px 16px;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -6px;
            background: #FF3B6F;
            color: white;
            font-weight: bold;
            font-size: 0.7rem;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 6px #FF3B6F;
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.6rem;
            color: white;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(125deg, #071426CC, #030712CC), url('https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=2000&q=80') center/cover no-repeat;
            border-radius: 0 0 48px 48px;
            margin: 12px 20px 20px 20px;
            padding: 70px 24px;
            text-align: center;
            backdrop-filter: brightness(0.9);
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.2rem;
            font-weight: 700;
            background: linear-gradient(145deg, #FFFFFF, #7DD3FC);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            transition: 0.2s;
            cursor: pointer;
            border: none;
            font-size: 0.9rem;
        }

        .btn-primary {
            background: linear-gradient(95deg, #00D4FF, #2B6FF0);
            color: #0A0F1F;
            box-shadow: 0 8px 18px rgba(0,212,255,0.3);
        }

        .btn-primary:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 24px rgba(0,212,255,0.5);
        }

        .btn-outline {
            background: rgba(255,255,255,0.08);
            border: 1px solid rgba(0,212,255,0.6);
            color: white;
        }

        /* Section titles */
        .section-title {
            font-family: 'Space Grotesk';
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 12px;
            background: linear-gradient(145deg, #F8FAFC, #A5F3FC);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        /* Categories Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin: 32px 0;
        }

        .cat-card {
            text-align: center;
            padding: 24px 16px;
            background: rgba(18, 28, 40, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 32px;
            border: 1px solid rgba(0,212,255,0.2);
            transition: all 0.2s;
            cursor: pointer;
        }

        .cat-card i {
            font-size: 2.5rem;
            background: linear-gradient(145deg, #00D4FF, #3B82F6);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 12px;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
            margin: 40px 0;
        }

        .product-card {
            background: rgba(12, 20, 30, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 32px;
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            border: 1px solid rgba(56, 189, 248, 0.15);
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: #00D4FF;
            box-shadow: 0 25px 35px -12px #00D4FF30;
        }

        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: 0.4s;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-body {
            padding: 20px;
        }

        .price {
            font-weight: 700;
            font-size: 1.5rem;
            color: #00D4FF;
        }

        .old-price {
            text-decoration: line-through;
            color: #94A3B8;
            font-size: 0.85rem;
        }

        .add-btn {
            background: linear-gradient(105deg, #0F2B3D, #1E3A5F);
            border: none;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            width: 100%;
            transition: 0.2s;
        }

        .add-btn:hover {
            background: #00D4FF;
            color: #030712;
        }

        /* Deal Section */
        .deal-section {
            background: linear-gradient(125deg, #0A1622, #06121E);
            border-radius: 44px;
            padding: 8px;
            margin: 48px 0;
            border: 1px solid #00D4FF30;
        }

        .deal-inner {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            background: rgba(2, 8, 18, 0.7);
            border-radius: 40px;
            overflow: hidden;
        }

        .timer-box {
            background: #0A0F1F;
            border-radius: 20px;
            padding: 12px 16px;
            text-align: center;
            min-width: 75px;
            border: 1px solid #38BDF8;
        }

        /* Testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 16px 4px 24px;
            scrollbar-width: thin;
        }

        .testimonial-card {
            min-width: 300px;
            background: rgba(20, 30, 45, 0.65);
            backdrop-filter: blur(8px);
            border-radius: 32px;
            padding: 24px;
        }

        /* Newsletter */
        .newsletter-glow {
            background: linear-gradient(115deg, #021526, #082032);
            border-radius: 48px;
            padding: 48px 32px;
            text-align: center;
            border: 1px solid #00D4FF30;
        }

        footer {
            margin-top: 64px;
            padding: 40px 0;
            border-top: 1px solid rgba(56, 189, 248, 0.2);
        }

        /* Responsive */
        @media (max-width: 820px) {
            .main-nav { display: none; }
            .mobile-toggle { display: block; }
            .hero h1 { font-size: 2.2rem; }
            .search input { width: 140px; }
        }

        @media (max-width: 550px) {
            .container { padding: 0 20px; }
            .products-grid { grid-template-columns: 1fr; }
            .categories-grid { grid-template-columns: repeat(2,1fr); }
        }

        /* custom scroll */
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        ::-webkit-scrollbar-track { background: #0F172A; }
        ::-webkit-scrollbar-thumb { background: #00D4FF; border-radius: 8px; }
    </style>
</head>
<body>

<header class="header">
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
            <div class="brand">NOVA<span>SHOP</span></div>
        </div>
        <nav class="main-nav" id="desktopNav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#" id="exploreCategoriesBtn"><i class="fas fa-th-large"></i> Explore</a></li>
                <li><a href="#trending"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals-block"><i class="fas fa-tag"></i> Flash Sale</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search">
                <i class="fas fa-search"></i>
                <input type="text" id="searchField" placeholder="Search products...">
            </div>
            <button class="icon-btn" id="cartIconBtn">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count" id="globalCartCount">0</span>
            </button>
        </div>
    </div>
    <div id="mobileNavPanel" style="display: none; background: #07101f; padding: 16px 24px; border-top: 1px solid #00D4FF30;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
            <li><a href="#">🏠 Home</a></li>
            <li><a href="#">🔥 Trending</a></li>
            <li><a href="#deals-block">⚡ Deals</a></li>
            <li><a href="#">📦 Categories</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Beyond the ordinary</h1>
            <p style="font-size: 1.1rem; max-width: 700px; margin: 18px auto; opacity: 0.9;">Experience the future of shopping — immersive design, premium picks, and exclusive deals.</p>
            <div style="display: flex; gap: 16px; justify-content: center; flex-wrap: wrap;">
                <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-bolt"></i> Shop Collection</button>
                <button class="btn btn-outline" id="scrollToDeals"><i class="fas fa-gem"></i> Limited Offers</button>
            </div>
        </div>
    </section>

    <div class="container">
        <!-- Categories Section -->
        <div style="margin: 48px 0 16px;" id="categoriesSection">
            <div class="section-title">✨ Curated Categories</div>
            <p class="muted" style="color:#94A3B8;">Find your vibe — from tech to streetwear</p>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>

        <!-- Trending Products -->
        <div id="trending">
            <div class="section-title" style="margin-top: 20px;">⚡ Trending Now</div>
            <p class="muted" style="color:#94A3B8;">Most loved by our community</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>

        <!-- Deal Block -->
        <div id="deals-block">
            <div class="deal-section">
                <div class="deal-inner">
                    <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Flash Sale" style="flex:1; min-width: 220px; height: 300px; object-fit: cover;">
                    <div style="flex:1.2; padding: 28px;">
                        <h2 style="font-family: 'Space Grotesk'; font-size: 2rem;">Flash Sale <i class="fas fa-clock"></i></h2>
                        <p>MacBook Pro M3 • 16GB RAM — Limited units</p>
                        <div style="display: flex; gap: 12px; margin: 24px 0;" id="countdownTimer">
                            <div class="timer-box"><span id="dealDays">0</span><br><small>Days</small></div>
                            <div class="timer-box"><span id="dealHours">00</span><br><small>Hrs</small></div>
                            <div class="timer-box"><span id="dealMinutes">00</span><br><small>Mins</small></div>
                            <div class="timer-box"><span id="dealSeconds">00</span><br><small>Secs</small></div>
                        </div>
                        <div style="display: flex; gap: 16px; align-items: baseline; flex-wrap: wrap;">
                            <div><span class="price" style="font-size: 2rem;">$1,099</span> <span class="old-price" style="font-size: 1.2rem;">$1,599</span></div>
                            <div style="background: #FF3B6F; padding: 4px 12px; border-radius: 40px; font-weight: bold;">-31% OFF</div>
                        </div>
                        <button class="btn btn-primary" id="flashDealAdd" style="margin-top: 24px;"><i class="fas fa-cart-shopping"></i> Add Flash Deal</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Testimonials -->
        <div style="margin: 48px 0;">
            <div class="section-title">💬 Voices of our tribe</div>
            <div class="testimonials-scroll" id="testimonialsList"></div>
        </div>

        <!-- Newsletter Glow -->
        <div class="newsletter-glow">
            <h3 style="font-size: 1.8rem;">📬 Cosmic Drops</h3>
            <p>Subscribe and get early access to secret sales</p>
            <form id="newsletterFormV2" style="display: flex; flex-wrap: wrap; justify-content: center; gap: 12px; margin-top: 24px;">
                <input type="email" id="newsEmail" placeholder="your@email.com" style="background: #0F172A; border: 1px solid #38BDF8; padding: 12px 20px; border-radius: 60px; width: 280px; color: white;">
                <button class="btn btn-primary" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
            </form>
            <div id="subscribeMsg" style="margin-top: 12px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 28px;">
        <div><h3 style="font-family: Space Grotesk;">NOVA<span style="color:#00D4FF;">SHOP</span></h3><p style="color:#94A3B8;">Next-gen e‑commerce with soul.</p></div>
        <div><strong>Support</strong><br><span style="color:#94A3B8;">Help / Returns / Contact</span></div>
        <div><strong>Legal</strong><br><span style="color:#94A3B8;">Privacy • Terms</span></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 32px; color:#5B6E8C;">© <span id="currentYear"></span> NovaShop — where style meets innovation</div>
</footer>

<script>
    // ---------- DATA ----------
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones-simple' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 342, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones', badge: '🔥 Bestseller' },
        { id: 2, title: 'Galaxy Book3 Ultra', price: 1699, oldPrice: 1899, rating: 4, reviews: 112, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops', badge: 'New' },
        { id: 3, title: 'AeroFit Pro', price: 249, rating: 5, reviews: 408, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets', badge: '-20%' },
        { id: 4, title: 'Ultraboost 23', price: 180, oldPrice: 230, rating: 4, reviews: 89, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Chronos Watch', price: 399, rating: 5, reviews: 210, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories', badge: 'Limited' },
        { id: 6, title: 'Urban Backpack', price: 89, oldPrice: 129, rating: 4, reviews: 76, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Sony Alpha 7IV', price: 2499, rating: 5, reviews: 95, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 8, title: 'Vintage Tee', price: 45, rating: 4, reviews: 152, img: 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&w=600&q=80', category: 'clothing' }
    ];

    let cartItemCount = 0;
    const cartCountSpan = document.getElementById('globalCartCount');

    function updateCartUI() {
        cartCountSpan.innerText = cartItemCount;
        localStorage.setItem('demoCart', cartItemCount);
    }

    function addToCart(productId, productName = 'item') {
        cartItemCount++;
        updateCartUI();
        // micro animation feedback
        const addBtn = document.querySelector(`.add-cart-btn[data-pid="${productId}"]`);
        if (addBtn) {
            addBtn.innerHTML = '<i class="fas fa-check"></i> Added!';
            addBtn.style.background = '#00D4FF';
            setTimeout(() => {
                addBtn.innerHTML = '<i class="fas fa-cart-plus"></i> Add to Cart';
                addBtn.style.background = '';
            }, 1000);
        }
        const toastMsg = document.createElement('div');
        toastMsg.innerText = `✨ ${productName} added to cart`;
        toastMsg.style.position = 'fixed'; toastMsg.style.bottom = '20px'; toastMsg.style.right = '20px';
        toastMsg.style.background = '#0F212E'; toastMsg.style.color = '#A5F3FC'; toastMsg.style.padding = '12px 24px';
        toastMsg.style.borderRadius = '40px'; toastMsg.style.backdropFilter = 'blur(12px)'; toastMsg.style.zIndex = '999';
        toastMsg.style.border = '1px solid #00D4FF'; document.body.appendChild(toastMsg);
        setTimeout(() => toastMsg.remove(), 1800);
    }

    // Render Categories
    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card';
            card.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4><small style="color:#B9D0F0;">shop now</small>`;
            card.addEventListener('click', () => {
                document.getElementById('searchField').value = cat.name;
                filterProducts(cat.name);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            grid.appendChild(card);
        });
    }

    function filterProducts(query) {
        const searchTerm = query.trim().toLowerCase();
        let filtered = PRODUCTS;
        if (searchTerm) {
            filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(searchTerm) || p.category.toLowerCase().includes(searchTerm));
        }
        renderProducts(filtered);
    }

    function renderProducts(productsArray) {
        const productGrid = document.getElementById('productsGrid');
        productGrid.innerHTML = '';
        productsArray.forEach(prod => {
            const card = document.createElement('div');
            card.className = 'product-card';
            const ratingStars = '★'.repeat(Math.floor(prod.rating)) + '☆'.repeat(5 - Math.floor(prod.rating));
            card.innerHTML = `
                ${prod.badge ? `<div style="position: absolute; margin: 12px;"><span style="background: #FF4D6D; padding: 4px 14px; border-radius: 40px; font-size: 0.7rem; font-weight: bold;">${prod.badge}</span></div>` : ''}
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-body">
                    <h3 style="font-size: 1.2rem;">${prod.title}</h3>
                    <div style="display: flex; gap: 8px; align-items: baseline; margin: 6px 0;">
                        <span class="price">$${prod.price.toLocaleString()}</span>
                        ${prod.oldPrice ? `<span class="old-price">$${prod.oldPrice.toLocaleString()}</span>` : ''}
                    </div>
                    <div style="display: flex; justify-content: space-between; margin-bottom: 12px;">
                        <span style="color: #FBBF24;">${ratingStars}</span>
                        <span style="font-size: 0.75rem;">(${prod.reviews})</span>
                    </div>
                    <button class="add-btn add-cart-btn" data-pid="${prod.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                </div>
            `;
            const addButton = card.querySelector('.add-cart-btn');
            addButton.addEventListener('click', (e) => {
                e.stopPropagation();
                addToCart(prod.id, prod.title);
            });
            productGrid.appendChild(card);
        });
    }

    // Search + filter
    document.getElementById('searchField').addEventListener('keyup', (e) => filterProducts(e.target.value));
    // shop now hero
    document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('scrollToDeals').addEventListener('click', () => document.getElementById('deals-block').scrollIntoView({ behavior: 'smooth' }));
    // flash deal add
    document.getElementById('flashDealAdd').addEventListener('click', () => {
        addToCart('flash', 'MacBook Pro M3');
    });
    // mobile toggle
    const mobileBtn = document.getElementById('mobileToggleBtn');
    const mobilePanel = document.getElementById('mobileNavPanel');
    mobileBtn.addEventListener('click', () => {
        if (mobilePanel.style.display === 'none' || !mobilePanel.style.display) mobilePanel.style.display = 'block';
        else mobilePanel.style.display = 'none';
    });
    // newsletter
    const newsletterForm = document.getElementById('newsletterFormV2');
    const msgDiv = document.getElementById('subscribeMsg');
    newsletterForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        if (!email || !email.includes('@')) {
            msgDiv.innerHTML = '<span style="color:#FFB347;">✨ Enter valid email ✨</span>';
            setTimeout(() => msgDiv.innerHTML = '', 2000);
            return;
        }
        msgDiv.innerHTML = '<span style="color:#86EFAC;">🎉 Subscribed! You’re in the loop.</span>';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => msgDiv.innerHTML = '', 2500);
    });
    
    // Countdown timer  (23h left)
    function setupDealTimer() {
        const targetDate = new Date();
        targetDate.setHours(targetDate.getHours() + 23);
        targetDate.setMinutes(targetDate.getMinutes() + 59);
        function tick() {
            const now = new Date();
            const diff = targetDate - now;
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 3600 * 24));
            const hrs = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = hrs.toString().padStart(2,'0');
            document.getElementById('dealMinutes').innerText = mins.toString().padStart(2,'0');
            document.getElementById('dealSeconds').innerText = secs.toString().padStart(2,'0');
        }
        tick(); setInterval(tick, 1000);
    }
    setupDealTimer();
    
    // Testimonials dynamic
    const testimonialsData = [
        { name: 'Lina K.', text: 'Absolutely insane design! I love the vibe and checkout speed.', stars: 5, avatar: 'https://randomuser.me/api/portraits/women/68.jpg' },
        { name: 'Marcus V.', text: 'Premium selection, the UI feels like a luxury app. Will recommend.', stars: 5, avatar: 'https://randomuser.me/api/portraits/men/32.jpg' },
        { name: 'Sophia Chen', text: 'Flash sale was epic, delivery was faster than light!', stars: 4, avatar: 'https://randomuser.me/api/portraits/women/44.jpg' }
    ];
    const testContainer = document.getElementById('testimonialsList');
    testimonialsData.forEach(t => {
        const card = document.createElement('div'); card.className = 'testimonial-card';
        card.innerHTML = `<div style="display:flex; gap:12px; align-items:center;"><img src="${t.avatar}" style="width:48px; height:48px; border-radius: 60px; border:2px solid #00D4FF;"> <div><strong>${t.name}</strong><div>${'★'.repeat(t.stars)}</div></div></div><p style="margin-top:12px;">“${t.text}”</p>`;
        testContainer.appendChild(card);
    });
    
    // initial load
    renderCategories();
    renderProducts(PRODUCTS);
    if (localStorage.getItem('demoCart')) cartItemCount = parseInt(localStorage.getItem('demoCart')) || 0;
    updateCartUI();
    document.getElementById('currentYear').innerText = new Date().getFullYear();
    // additional Explore cat button
    document.getElementById('exploreCategoriesBtn')?.addEventListener('click', (e) => {
        e.preventDefault();
        document.getElementById('categoriesSection').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('cartIconBtn').addEventListener('click', () => alert(`✨ Cart has ${cartItemCount} item(s). Checkout demo!`));
</script>
</body>
</html>
```
