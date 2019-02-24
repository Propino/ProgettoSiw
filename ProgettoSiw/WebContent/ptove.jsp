<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flamingo Beach Club</title>
<style>body { background: linear-gradient(90deg, #5c728d, #29405a); min-height: 80vh; padding: 10vh 0; }

body {
	perspective: 600px;
}

.rbd-review-slider {

}

.rbd-review-slider .rbd-preloader {
	width: 36px;
	height: 36px;
	margin: 0 auto;
}

.rbd-review-slider .rbd-review.rbd-prev {
	transform: translate3d(-100px,0,-50px);
	display: inline-block;
}

.rbd-review-slider .rbd-review.rbd-next {
	transform: translate3d(100px,0,-50px);
	display: inline-block;
}

.rbd-review-slider .rbd-review.rbd-curr {
	z-index: 10;
	transform: translate3d(0,0,0) scale(1);
	opacity: 1;
	display: inline-block;
}

.rbd-review-slider .rbd-review {
	padding: 20px 30px;
	font-size: 18px;
	line-height: 1.612;
	border-radius: 4px;
	box-shadow: 0 10px 30px -8px rgba(0,0,0,.5);
	
	display: none;
	vertical-align: top;
	transition: opacity .35s ease-out, transform .35s ease-out;;
	opacity: 1;
	position: absolute;
	left: 0;
	right: 0;
	margin: 0 auto;
	overflow: hidden;
	opacity: 0;
	
	background: #fff;
	max-width: 600px;
}

.rbd-review-slider .rbd-review.rbd-first {
	display: block;
}

.rbd-review-slider .rbd-heading {
	margin-top: 0;
	margin-bottom: 10px;
}

.rbd-review-slider svg {
	fill: #ffbb58;
	width: 24px;
	margin-right: 1px;
}

.rbd-review-slider .rbd-review-meta {
	font-size: 12px;
	color: #565656;
	margin-top: 12px;
	text-align: center;
}

.rbd-review-slider .rbd-gravatar {
  border-radius: 100%;
  width: 100px;
  float: left;
  margin-right: 15px;
	border: 6px solid transparent;
	box-shadow: 0 3px 12px -2px rgba(0,0,0,.35);
}

.rbd-footing {
	margin: 20px 0 0;
	text-align: center;
}

@keyframes round{   
  25%{
    opacity:1;
  }
  40%{
    opacity:0;
  }
} </style>
</head>
<body>
	<div class="rbd-core-ui">
		<div class="rbd-review-slider">
			<div class="rbd-review-container">
				<div class="rbd-review review1.1 rbd-curr">
					<h3 class="rbd-heading">Extremely Professional</h3>
					<i class="renderSVG" data-icon="star" data-repeat="5"></i>
					<div class="rbd-content">
						<img class="rbd-gravatar"
							src="img/avatar.png">Materials
						are top notch. People are top notch... they knew exactly how to
						handle my ignorance and turn it to a positive working business…
					</div>
					<div class="rbd-footing">
						<a class="rbd-button rbd-small" href="#">Read More</a>
					</div>
					<div class="rbd-review-meta">Written by Mark P. on Feb. 18,
						2018</div>
				</div>
				<div class="rbd-review review1.2 rbd-next">
					<h3 class="rbd-heading">Test Company Marketing Delivers Such
						Great Service!</h3>
					<i class="renderSVG" data-icon="star" data-repeat="5"></i>
					<div class="rbd-content">
						<img class="rbd-gravatar"
							src="https://www.gravatar.com/avatar/ee304528491d860812f73d7d5cd0dc72?s=256">I'm
						a big fan of this test company. They really do the best work
						around, and their prices just can't be beat! I hear that Alex is a
						pretty cool guy…
					</div>
					<div class="rbd-footing">
						<a class="rbd-button rbd-small" href="#">Read More</a>
					</div>
					<div class="rbd-review-meta">Written by Alex D. on Feb. 19,
						2018</div>
				</div>
				<div class="rbd-review review1.3">
					<h3 class="rbd-heading">Test Review</h3>
					<i class="renderSVG" data-icon="star" data-repeat="5"></i>
					<div class="rbd-content">No Gravatar but here's a review…No
						Gravatar but here's a review…No Gravatar but here's a review…No
						Gravatar but here's a review…</div>
					<div class="rbd-footing">
						<a class="rbd-button rbd-small" href="#">Read More</a>
					</div>
					<div class="rbd-review-meta">Written by Anonymous. on Feb.
						18, 2018</div>
				</div>
			</div>
		</div>
	</div>
	<script>let options = {
			'speed': 3000,
			'pause': true,
		}

		window.addEventListener('DOMContentLoaded', function() {
			let slider = document.querySelector('.rbd-review-slider');
			let slides = slider.querySelectorAll('.rbd-review');
			let total  = slides.length;
			let pause  = false;
			
			function pauseSlide(){
				slider.onmouseleave = function(){ pause = false; };
				slider.onmouseenter = function(){ pause = true; };
				return pause;
			}
			
			function slide(){
				if( options.pause && pauseSlide() ) return;
				
				let activeSlide = document.querySelector('.rbd-review-slider .rbd-review.rbd-curr');
				let prev, curr, next, soon;		
				
				curr = activeSlide;
				prev = activeSlide.previousElementSibling;
				next = activeSlide.nextElementSibling;
				
				if( next != null ){
					soon = next.nextElementSibling == null ? slides[0] : next.nextElementSibling;
				} else {
					next = slides[0];
					soon = slides[1];
				}
				
				if( prev != null ) prev.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next');
				if( curr != null ) curr.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next'); curr.classList.add('rbd-prev');
				if( next != null ) next.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next'); next.classList.add('rbd-curr');
				if( soon != null ) soon.classList.remove('rbd-prev', 'rbd-curr', 'rbd-next'); soon.classList.add('rbd-next');
			}
			
			let slideTimer = setInterval(function(){
				slide();
			}, options.speed);
		}, true);</script>
</body>
</html>