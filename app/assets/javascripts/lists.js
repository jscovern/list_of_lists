$(document).ready(function(){

console.log("it worked");

$("#addItem").on('click', function(event) {
	$("#modalerror").text("");
	$("#modalerror").addClass('hidden');	
});

$(document).on('click','#add-book-button', function(event){
	event.preventDefault();
	var book = $('#add-book-form').serialize();
	$.ajax({
		url: '/books',
		type: "POST",
		data: book,
		success: function(data) {
			$("#modalerror").removeClass('hidden');			
			$("#modalerror").text(data);
		},
		error: function(error) {
			console.log('in the error');
		}
	});
});

$("#addList").on('click', function(event) {
	$("#new-list-error").text("");
	$("#new-list-error").addClass('hidden');		
});

$(document).on('click','#add-movie-button', function(event){
	event.preventDefault();
	var movie = $('#add-movie-form').serialize();
	$.ajax({
		url: '/movies',
		type: "POST",
		data: movie,
		success: function(data) {
			$("#modalerror").text(data);
			$("#modalerror").removeClass('hidden');			
		}
	});
});

$(document).on('click','#add-place-button', function(event){
	event.preventDefault();
	var place = $('#add-place-form').serialize();
	$.ajax({
		url: '/places',
		type: "POST",
		data: place,
		success: function(data) {
			$("#modalerror").text(data);
			$("#modalerror").removeClass('hidden');			
		}
	});
});

$(document).on('click','#add-rando-button', function(event){
	event.preventDefault();
	var rando = $('#add-rando-form').serialize();
	$.ajax({
		url: '/randos',
		type: "POST",
		data: rando,
		success: function(data) {
			$("#modalerror").text(data);
			$("#modalerror").removeClass('hidden');			
		}
	});
});

$(document).on('click','#add-song-button', function(event){
	event.preventDefault();
	var song = $('#add-song-form').serialize();
	$.ajax({
		url: '/songs',
		type: "POST",
		data: song,
		success: function(data) {
			$("#modalerror").text(data);
			$("#modalerror").removeClass('hidden');			
		}
	});
});


});

