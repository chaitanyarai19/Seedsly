const searchForm = document.querySelector('.search-loaction');
const cityValue = document.querySelector('.search-loaction input');
const cityName = document.querySelector('.city-name p');
const cardBody = document.querySelector('.card-body_w');
const timeImage = document.querySelector('.card-top_w img');
const cardInfo = document.querySelector('.back-card');

const spitOutCelcius = (kelvin) => {
    celcius = Math.round(kelvin - 273.15);
    return celcius;
}
const isDayTime = (icon) => {
    if (icon.includes('d')) { return true }
    else { return false }
}
updateWeatherApp = (city) => {
    console.log(city);
    const imageName = city.weather[0].icon;
    const iconSrc = ``
    cityName.textContent = city.name;
    cardBody.innerHTML = `
           <div class="icon-container card shadow mx-auto">
            <img src="${iconSrc}" alt="" />
          </div>
          <div class="card-bottom_w px-5 py-4 row">
            <div class="col text-center">
              <p>${spitOutCelcius(city.main.feels_like)}&deg;C</p>
              <span><b>Feels Like</b></span>
            </div>
            <div class="col text-center">
              <p>${city.main.humidity}%</p>
              <span><b>Humidity</b></span>
            </div>
          </div>
		  
		    <div class="card-bottom_w px-5 py-4 row">
            <div class="col text-center">
              <p>${(city.wind.deg)}</p>
              <span><b>Wind Degree</b></span>
            </div>
            <div class="col text-center">
              <p> ${(city.wind.speed)}</p>
              <span><b>Wind Speed</b></span>
            </div>
          </div>

          <div class="card-bottom_w px-5 py-4 row">
            <div class="col text-center">
              <p>${spitOutCelcius(city.main.temp_min)}&deg;C</p>
              <span><b>Min Temp</b></span>
            </div>
            <div class="col text-center">
              <p>${spitOutCelcius(city.main.temp_max)}&deg;C</p>
              <span><b>Max Temp</b></span>
            </div>
          </div>

          <div class="card-bottom_w px-5 py-4 row">
            <div class="col text-center">
              <p>${(city.coord.lat)}</p>
              <span><b>latitude</b></span>
            </div>
            <div class="col text-center">
              <p>${(city.coord.lon)}</p>
              <span><b>Longitude</b></span>
            </div>
          </div>

          <div class="card-bottom_w px-5 py-4 row">
            <div class="col text-center">
              <p>${(city.sys.country)}</p>
              <span><b>Country</b></span>
            </div>
            <div class="col text-center">
              <p>${(city.sys.sunrise)}</p>
              <span><b>Sunrise</b></span>
            </div>
          </div>

       

          <div class="card-bottom_w px-5 py-4 row">
            <div class="col text-center">
              <p>${(city.timezone)}</p>
              <span><b>Timezone</b></span>
            </div>
            <div class="col text-center">
              <p> ${(city.visibility)}</p>
              <span><b>visibility</b></span>
            </div>
          </div>

         

             <div class="card-bottom_w px-5 py-4 row">
            <div class="col text-center">
              <p>${(city.main.sea_level)}</p>
              <span><b>sea_level</b></span>
            </div>
            <div class="col text-center">
              <p>${(city.main.grnd_level)}</p>
              <span><b>Grnd_level</b></span>
            </div>
          </div>


          <div>
          </div>
       `;
 if (isDayTime(imageName)) {
        console.log('day');
        // timeImage.setAttribute('src', 'img/day_image.svg');
        if (cityName.classList.contains('text-black')) {
            cityName.classList.remove('text-black');
        } else {
            cityName.classList.add('text-black');
        }

    } else {
        console.log('night');
        // timeImage.setAttribute('src', 'img/night_image.svg');
        if (cityName.classList.contains('text-black')) {
            cityName.classList.remove('text-black');
        } else {
            cityName.classList.add('text-black');
        }

    }

    cardInfo.classList.remove('d-none');
}



//add an event listner to the form
searchForm.addEventListener('submit', e => {
    e.preventDefault();
    const citySearched = cityValue.value.trim();
    console.log(citySearched);
    searchForm.reset();

    requestCity(citySearched)
        .then((data) => {
            updateWeatherApp(data);
        })
        .catch((error) => { console.log(error) })



})


 // here theme begins
 am4core.useTheme(am4themes_animated);
 // Themes end here
 
  // creating map instance
 let chart = am4core.create("chartdiv", am4maps.MapChart);
 
 // setting definition of map
 chart.geodata = am4geodata_india2019High;
 
 
 // this is map polygon 
 let polygonSeries = chart.series.push(new am4maps.MapPolygonSeries());
 
 //Set min/max fill color for each area
 polygonSeries.heatRules.push({
   property: "fill",
   target: polygonSeries.mapPolygons.template,
   min: chart.colors.getIndex(1).brighten(-0.3),
   max: chart.colors.getIndex(1).brighten(-0.3)
 });
 
 // Make map load polygon data (state shapes and names) from GeoJSON
 polygonSeries.useGeodata = true;
 
 // Set values for each state
 polygonSeries.data = [
   {
     id: "IN-JK",
     value: 0
   },
   {
     id: "IN-MH",
     value: 0
   },
   {
     id: "IN-UP",
     value: 0
   },
   {
     id: "US-AR",
     value: 0
   },
   {
     id: "IN-RJ",
     value: 0
   },
   {
     id: "IN-AP",
     value: 0
   },
   {
     id: "IN-MP",
     value: 0
   },
   {
     id: "IN-TN",
     value: 0
   },
   {
     id: "IN-JH",
     value: 0
   },
   {
     id: "IN-WB",
     value: 0
   },
   {
     id: "IN-GJ",
     value: 0
   },
   {
     id: "IN-BR",
     value: 0
   },
   {
     id: "IN-TG",
     value: 0
   },
   {
     id: "IN-GA",
     value: 0
   },
   {
     id: "IN-DN",
     value: 0
   },
   {
     id: "IN-DL",
     value: 0
   },
   {
     id: "IN-DD",
     value: 0
   },
   {
     id: "IN-CH",
     value: 0
   },
   {
     id: "IN-CT",
     value: 0
   },
   {
     id: "IN-AS",
     value: 0
   },
   {
     id: "IN-AR",
     value: 0
   },
   {
     id: "IN-AN",
     value: 0
   },
   {
     id: "IN-KA",
     value: 0
   },
   {
     id: "IN-KL",
     value: 0
   },
   {
     id: "IN-OR",
     value: 0
   },
   {
     id: "IN-SK",
     value: 0
   },
   {
     id: "IN-HP",
     value: 0
   },
   {
     id: "IN-PB",
     value: 0
   },
   {
     id: "IN-HR",
     value: 0
   },
   {
     id: "IN-UT",
     value: 0
   },
   {
     id: "IN-LK",
     value: 0
   },
   {
     id: "IN-MN",
     value: 0
   },
   {
     id: "IN-TR",
     value: 0
   },
   {
     id: "IN-MZ",
     value: 0
   },
   {
     id: "IN-NL",
     value: 0
   },
   {
     id: "IN-ML",
     value: 0
   }
 ];
 
 
 
 // hover and detail tool
 let polygonTemplate = polygonSeries.mapPolygons.template;
 polygonTemplate.tooltipText = "{name}: {value}";
 polygonTemplate.nonScalingStroke = true;
 
 // Create hover state and set alternative fill color
 let hs = polygonTemplate.states.create("hover");
 hs.properties.fill = am4core.color("#0A285D");




 $.getJSON(
  "https://codepen.io/timivey/pen/emQZYY.js",
  function(data) {
    console.log(data);

  }
);


//Read local json file
$("#up").change(function(event){
    var uploadedFile = event.target.files[0];    
    var filename = uploadedFile.name   
     var extension = filename.replace(/^.*\./, '');
     console.log(extension)
     if(extension != "json")
     {  alert('not supported');
         return;     
     }else{
        var readFile = new FileReader();
        readFile.onload = function(e) { 
            var contents = e.target.result;
            var json = JSON.parse(contents);
            alert_data(json);
        };
        readFile.readAsText(uploadedFile);
    }
});
function alert_data(json)
{
    var response=$.parseJSON(json);
  if(typeof response =='object')
  {
    alert('valid json file');
  }else{
    alert('invalid json file');
  }  
  console.log(json);
}

// Prepare demo data
// Data is joined to map using value of 'hc-key' property by default.
// See API docs for 'joinBy' for more info on linking data and map.
var data = [
    ['in-py', 0],
    ['in-ld', 1],
    ['in-wb', 2],
    ['in-or', 3],
    ['in-br', 4],
    ['in-sk', 5],
    ['in-ct', 6],
    ['in-tn', 7],
    ['in-mp', 8],
    ['in-2984', 9],
    ['in-ga', 10],
    ['in-nl', 11],
    ['in-mn', 12],
    ['in-ar', 13],
    ['in-mz', 14],
    ['in-tr', 15],
    ['in-3464', 16],
    ['in-dl', 17],
    ['in-hr', 18],
    ['in-ch', 19],
    ['in-hp', 20],
    ['in-jk', 21],
    ['in-kl', 22],
    ['in-ka', 23],
    ['in-dn', 24],
    ['in-mh', 25],
    ['in-as', 26],
    ['in-ap', 27],
    ['in-ml', 28],
    ['in-pb', 29],
    ['in-rj', 30],
    ['in-up', 31],
    ['in-ut', 32],
    ['in-jh', 33]
];

// Create the chart
Highcharts.mapChart('container_map', {
    chart: {
        map: 'countries/in/in-all'
    },

    title: {
        text: ''
    },

    mapNavigation: {
        enabled: true,
        buttonOptions: {
            verticalAlign: 'bottom'
        }
    },

    colorAxis: {
        min: 0
    },

    series: [{
        data: data,
        name: 'Random data',
        states: {
            hover: {
                color: '#BADA55'
            }
        },
        dataLabels: {
            enabled: true,
            format: '{point.name}'
        }
    }]
});
        
