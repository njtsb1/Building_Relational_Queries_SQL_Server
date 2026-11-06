// Dictionary Mappings
const i18n = {
    en: {
        appTitle: "Movies Catalog",
        searchSectionTitle: "Search and Advanced Filters",
        resultsHeading: "Movies Found",
        searchLabel: "Search by title, actor, or role:",
        genreLabel: "Genre:",
        sortLabel: "Sort By:",
        all: "All Genres",
        sortAbcAsc: "Alphabetical (A-Z)",
        sortAbcDesc: "Alphabetical (Z-A)",
        sortYearAsc: "Year (Ascending)",
        sortYearDesc: "Year (Descending)",
        sortDurationAsc: "Duration (Shortest)",
        sortDurationDesc: "Duration (Longest)",
        durationText: "Duration:",
        yearText: "Year:"
    },
    pt: {
        appTitle: "Catálogo de Filmes",
        searchSectionTitle: "Busca e Filtros Avançados",
        resultsHeading: "Filmes Encontrados",
        searchLabel: "Buscar por título, ator ou papel:",
        genreLabel: "Gênero:",
        sortLabel: "Ordenar por:",
        all: "Todos os Gêneros",
        sortAbcAsc: "Alfabética (A-Z)",
        sortAbcDesc: "Alfabética (Z-A)",
        sortYearAsc: "Ano (Crescente)",
        sortYearDesc: "Ano (Decrescente)",
        sortDurationAsc: "Duração (Curta)",
        sortDurationDesc: "Duração (Longa)",
        durationText: "Duração:",
        yearText: "Ano:"
    },
    es: {
        appTitle: "Catálogo de Películas",
        searchSectionTitle: "Búsqueda y Filtros Avanzados",
        resultsHeading: "Películas Encontradas",
        searchLabel: "Buscar por título, actor o papel:",
        genreLabel: "Género:",
        sortLabel: "Ordenar por:",
        all: "Todos los Géneros",
        sortAbcAsc: "Alfabética (A-Z)",
        sortAbcDesc: "Alfabética (Z-A)",
        sortYearAsc: "Año (Ascendente)",
        sortYearDesc: "Año (Descendente)",
        sortDurationAsc: "Duración (Corta)",
        sortDurationDesc: "Duración (Larga)",
        durationText: "Duración:",
        yearText: "Año:"
    }
};

// Database state map synced with script.sql data
const moviesData = [
    { id: 1, name: "The Green Hornet", year: 1967, duration: 87, genre: "Action", actor: "Bruce Lee", role: "Kato" },
    { id: 2, name: "Longstreet", year: 1971, duration: 60, genre: "Action", actor: "Bruce Lee", role: "Li Tsung" },
    { id: 3, name: "The Big Boss", year: 1971, duration: 100, genre: "Action", actor: "Bruce Lee", role: "Cheng Chao-an" },
    { id: 4, name: "Fist of Fury", year: 1972, duration: 102, genre: "Action", actor: "Bruce Lee", role: "Chen Zhen" },
    { id: 5, name: "The Way of the Dragon", year: 1972, duration: 99, genre: "Action", actor: "Bruce Lee", role: "Tang Lung" },
    { id: 6, name: "Enter the Dragon", year: 1973, duration: 102, genre: "Action", actor: "Bruce Lee", role: "Lee" },
    { id: 7, name: "Game of Death", year: 1978, duration: 100, genre: "Action", actor: "Bruce Lee", role: "Billy Lo" },
    { id: 8, name: "Bloodsport", year: 1988, duration: 92, genre: "Action", actor: "Jean-Claude Van Damme", role: "Frank Dux" },
    { id: 9, name: "Kickboxer", year: 1989, duration: 97, genre: "Action", actor: "Jean-Claude Van Damme", role: "Kurt Sloane" },
    { id: 10, name: "Lionheart", year: 1990, duration: 108, genre: "Action", actor: "Jean-Claude Van Damme", role: "Lyon Gaultier" },
    { id: 11, name: "Hard Target", year: 1993, duration: 97, genre: "Action", actor: "Jean-Claude Van Damme", role: "Chance Boudreaux" },
    { id: 12, name: "Street Fighter", year: 1994, duration: 102, genre: "Action", actor: "Jean-Claude Van Damme", role: "Colonel Guile" },
    { id: 13, name: "Double Team", year: 1997, duration: 93, genre: "Action", actor: "Jean-Claude Van Damme", role: "Jack Quinn" },
    { id: 14, name: "The Transporter", year: 2002, duration: 92, genre: "Action", actor: "Jason Statham", role: "Frank Martin" },
    { id: 15, name: "The Italian Job", year: 2003, duration: 111, genre: "Action", actor: "Jason Statham", role: "Handsome Rob" },
    { id: 16, name: "Chaos", year: 2005, duration: 106, genre: "Action", actor: "Jason Statham", role: "Quentin Conners" },
    { id: 17, name: "Transporter 2", year: 2005, duration: 87, genre: "Action", actor: "Jason Statham", role: "Frank Martin" },
    { id: 18, name: "Revolver", year: 2005, duration: 111, genre: "Action", actor: "Jason Statham", role: "Jake Green" },
    { id: 19, name: "Crank", year: 2006, duration: 88, genre: "Action", actor: "Jason Statham", role: "Chev Chelios" },
    { id: 20, name: "In the Name of the King: A Dungeon Siege Tale", year: 2007, duration: 127, genre: "Action", actor: "Jason Statham", role: "Farmer" },
    { id: 21, name: "Transporter 3", year: 2008, duration: 104, genre: "Action", actor: "Jason Statham", role: "Frank Martin" },
    { id: 22, name: "The Bank Job", year: 2008, duration: 111, genre: "Action", actor: "Jason Statham", role: "Terry Leather" },
    { id: 23, name: "Crank: High Voltage", year: 2009, duration: 96, genre: "Action", actor: "Jason Statham", role: "Chev Chelios" },
    { id: 24, name: "13", year: 2010, duration: 91, genre: "Action", actor: "Jason Statham", role: "Jasper Bagges" },
    { id: 25, name: "The Mechanic", year: 2011, duration: 93, genre: "Action", actor: "Jason Statham", role: "Arthur Bishop" },
    { id: 26, name: "Killer Elite", year: 2011, duration: 116, genre: "Action", actor: "Jason Statham", role: "Danny Bryce" },
    { id: 27, name: "6 Bullets", year: 2012, duration: 115, genre: "Action", actor: "Jean-Claude Van Damme", role: "Samson Gaul" },
    { id: 28, name: "We Die Young", year: 2019, duration: 92, genre: "Action", actor: "Jean-Claude Van Damme", role: "Daniel" }
];

let currentLang = 'en';
let carouselIndex = 0;

// Elements
const themeToggle = document.getElementById('themeToggle');
const langSelect = document.getElementById('langSelect');
const carouselTrack = document.getElementById('carouselTrack');
const moviesGrid = document.getElementById('moviesGrid');
const searchInput = document.getElementById('searchInput');
const genreFilter = document.getElementById('genreFilter');
const sortFilter = document.getElementById('sortFilter');

// Init Setup
function init() {
    setupCarousel();
    renderMovies();
    setupListeners();
    applyLanguage(currentLang);
}

// Light / Dark Mode Toggle
themeToggle.addEventListener('click', () => {
    const currentTheme = document.documentElement.getAttribute('data-theme');
    const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
    document.documentElement.setAttribute('data-theme', newTheme);
});

// Setup Carousel Tracks
function setupCarousel() {
    carouselTrack.innerHTML = '';
    moviesData.forEach(movie => {
        const li = document.createElement('li');
        li.className = 'carousel-slide';
        li.innerHTML = `<img src="docs/assets/${movie.id}.png" alt="${movie.name}">`;
        carouselTrack.appendChild(li);
    });
}

// Carousel Controls
document.getElementById('nextBtn').addEventListener('click', () => {
    const maxIndex = moviesData.length - 1;
    carouselIndex = carouselIndex >= maxIndex ? 0 : carouselIndex + 1;
    updateCarousel();
});

document.getElementById('prevBtn').addEventListener('click', () => {
    carouselIndex = carouselIndex <= 0 ? moviesData.length - 1 : carouselIndex - 1;
    updateCarousel();
});

function updateCarousel() {
    const slideWidth = document.querySelector('.carousel-slide').clientWidth + 16;
    carouselTrack.style.transform = `translateX(-${carouselIndex * slideWidth}px)`;
}

// Filter and Render Logic
function renderMovies() {
    const query = searchInput.value.toLowerCase();
    const selectedGenre = genreFilter.value;
    const sortVal = sortFilter.value;

    let filtered = moviesData.filter(movie => {
        const matchesSearch = movie.name.toLowerCase().includes(query) || 
                              movie.actor.toLowerCase().includes(query) || 
                              movie.role.toLowerCase().includes(query);
        const matchesGenre = !selectedGenre || movie.genre === selectedGenre;
        return matchesSearch && matchesGenre;
    });

    // Sorting implementations
    filtered.sort((a, b) => {
        if (sortVal === 'abc-asc') return a.name.localeCompare(b.name);
        if (sortVal === 'abc-desc') return b.name.localeCompare(a.name);
        if (sortVal === 'year-asc') return a.year - b.year;
        if (sortVal === 'year-desc') return b.year - a.year;
        if (sortVal === 'duration-asc') return a.duration - b.duration;
        if (sortVal === 'duration-desc') return b.duration - a.duration;
        return 0;
    });

    moviesGrid.innerHTML = '';
    filtered.forEach(movie => {
        const card = document.createElement('article');
        card.className = 'movie-card';
        card.innerHTML = `
            <img src="docs/assets/${movie.id}.png" alt="${movie.name}">
            <div class="movie-info">
                <h3>${movie.name}</h3>
                <p><strong>${i18n[currentLang].yearText}</strong> ${movie.year}</p>
                <p><strong>${i18n[currentLang].durationText}</strong> ${movie.duration} min</p>
                <p><strong>Actor:</strong> ${movie.actor}</p>
                <p><strong>Role:</strong> ${movie.role}</p>
            </div>
        `;
        moviesGrid.appendChild(card);
    });
}

// Listeners for Interactive inputs
function setupListeners() {
    searchInput.addEventListener('input', renderMovies);
    genreFilter.addEventListener('change', renderMovies);
    sortFilter.addEventListener('change', renderMovies);
    langSelect.addEventListener('change', (e) => {
        currentLang = e.target.value;
        applyLanguage(currentLang);
        renderMovies();
    });
}

// Multi-language implementation
function applyLanguage(lang) {
    document.querySelectorAll('[data-i18n]').forEach(el => {
        const key = el.getAttribute('data-i18n');
        if (el.tagName === 'INPUT') {
            el.placeholder = i18n[lang][key] || el.placeholder;
        } else {
        el.textContent = i18n[lang][key] || el.textContent;
        }
    });
}
window.addEventListener('resize', updateCarousel);
init();
