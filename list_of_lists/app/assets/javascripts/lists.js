$(document).ready(function(){

console.log("it worked");


$("#add-book-button").on('click', function(event){
	event.preventDefault();
	var book = $('#add-book-form').serialize();
	$.ajax({
		url: '/books',
		type: "POST",
		data: book
	});
});

$("#add-movie-button").on('click', function(event){
	event.preventDefault();
	var movie = $('#add-movie-form').serialize();
	$.ajax({
		url: '/movies',
		type: "POST",
		data: movie
	});
});

$("#add-place-button").on('click', function(event){
	event.preventDefault();
	var place = $('#add-place-form').serialize();
	$.ajax({
		url: '/places',
		type: "POST",
		data: place
	});
});

$("#add-rando-button").on('click', function(event){
	event.preventDefault();
	var rando = $('#add-rando-form').serialize();
	$.ajax({
		url: '/randos',
		type: "POST",
		data: rando
	});
});

$("#add-song-button").on('click', function(event){
	event.preventDefault();
	var song = $('#add-song-form').serialize();
	$.ajax({
		url: '/songs',
		type: "POST",
		data: song
	});
});


});

