import "bootstrap";
var mapboxgl = require('mapbox-gl/dist/mapbox-gl.js');
mapboxgl.accessToken = process.env.MAPBOXAPITOKEN;
var map = new mapboxgl.Map({
  container: 'map-container',
  style: 'mapbox://styles/mapbox/outdoors-v9',
  center: [-73.57, 45.505],
  zoom: 13
});


