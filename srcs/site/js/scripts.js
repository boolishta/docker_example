const header = document.querySelector('.section-header')

document.querySelector('.faq-accordion').addEventListener('click', e => {
	if (e.target.closest('.faq-accordion__item')) {
		e.target
			.closest('.faq-accordion__item')
			.classList.toggle('faq-accordion__item--active')
	}
})

document.querySelector('.btn-burger').addEventListener('click', () => {
	header.classList.toggle('section-header--active-nav')
})

const resetNav = () => {
	header.classList.remove('section-header--active-nav')
}

window.addEventListener('resize', resetNav)

new Swiper('.section-hero-image', {
	loop: true,
	pagination: {
		el: '.section-hero-image .dots',
		clickable: true,
	},
})

new Swiper('.slider-blog-container', {
	loop: true,
	pagination: {
		el: '.section-blog .dots',
		clickable: true,
	},
	navigation: {
		nextEl: '.section-blog .swiper-button-next',
		prevEl: '.section-blog .swiper-button-prev',
	},
})

new Swiper('.slider-quotes-container', {
	loop: true,
	slidesPerView: 'auto',
	pagination: {
		el: '.section-quotes .dots',
		clickable: true,
	},
})
