var map = L.map('mapid').on('load', onMapLoad).setView([41.400, 2.206], 9);
//map.locate({setView: true, maxZoom: 17});
	
var tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {}).addTo(map);

//en el clusters almaceno todos los markers
var markers = L.markerClusterGroup();
var data_markers = [];
var kind_food = [];

function onMapLoad() {
	console.log("Mapa cargado");

    
	//FASE 3.1
		//1) Relleno el data_markers con una petición a la api    SOLUCIÓ A: https://api.jquery.com/jquery.getjson/
		$(document).ready(function(){
			var restaurantsAPI = "http://localhost/mapa/api/apiRestaurants.php";
			$.getJSON(restaurantsAPI, function(data,jqXHR){
				console.log(jqXHR);
				data.forEach(function(dadesRestaurant){
					data_markers.push(dadesRestaurant);
		//2) Añado de forma dinámica en el select los posibles tipos de restaurantes  SOLUCIÓ A: https://www.youtube.com/watch?v=a_CAMcYqVzM&list=PLCTD_CpMeEKSYJ1J15M8PknOMwOpeqsXz&index=12 (als 3 videos següents)
					let kindFoodEach = dadesRestaurant.kind_food.split(",");
					for(i=0;i<kindFoodEach.length; i++){
						if(kind_food.indexOf(kindFoodEach[i])==-1){
							kind_food.push(kindFoodEach[i]);
						}
					}
					$("#kind_food_selector").html(new Option('Todos', 'all'));
					for(i=0;i<kind_food.length; i++){
						$("#kind_food_selector").append(new Option(kind_food[i], kind_food[i]));
					}
				});
				//console.log(kind_food);
				//console.log(data_markers);
		//3) Llamo a la función para --> render_to_map(data_markers, 'all'); <-- para mostrar restaurantes en el mapa
				render_to_map(data_markers, "all");
				console.log("all on map");
		});
	});
};
	
	

$("#kind_food_selector").on("change", function(){
	console.log(this.value);
	render_to_map(data_markers, this.value);
});

	/*
	FASE 3.2
		1) Limpio todos los marcadores
	*/
function render_to_map(data_markers, filter){
	markers.clearLayers();
	//2) Realizo un bucle para decidir que marcadores cumplen el filtro, y los agregamos al mapa

	if(filter == "all"){
		for(i=0;i<data_markers.length; i++){
			var marker = L.marker([data_markers[i].lat, data_markers[i].lng]).bindPopup("<b>"+data_markers[i].name+"</b>"+"<br>"+data_markers[i].address+"<br><br>"+data_markers[i].kind_food).openPopup()
			markers.addLayer(marker);
		};
	}
	
	else{
		for(i=0;i<data_markers.length; i++){
				if(data_markers[i].kind_food.includes(filter)){

			var marker = L.marker([data_markers[i].lat, data_markers[i].lng]).bindPopup("<b>"+data_markers[i].name+"</b>"+"<br>"+data_markers[i].address+"<br><br>"+data_markers[i].kind_food).openPopup()
			markers.addLayer(marker);
		}};
	}
	
	map.addLayer(markers);
};

			
