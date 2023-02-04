var state = document.getElementsByClassName("name");

var i;

for (i = 0; i < state.length; i++) {
    
    state[i].addEventListener("click", function () {

        var city_name = this.nextElementSibling;

        console.log(city_name);

        if(city_name.style.maxHeight) {
            city_name.style.maxHeight = null;
        } else {
            city_name.style.maxHeight = city_name.scrollHeight + "1px";
        }
});
};

var cities = ["Mumbai", "Bengaluru", "Chennai", "Hyderabad", "Kolkata", "Ahmedabad", "Pune", "Delhi","Jabalpur"];

const apiKey = "4d8fb5b93d4af21d66a2948710284366";

// Mumbai

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[0]}&appid=${apiKey}&units=metric`;

  fetch(url)
    .then(response => response.json())
    .then(data => {
      const { main, name, sys, weather, wind } = data;

        var tempArray = document.getElementsByClassName("val");
            tempArray[0].textContent = main.temp + " °C";

        var description = document.getElementsByClassName("wind");
            description[0].textContent = weather[0].description;

        var speedArray = document.getElementsByClassName("speed");
            speedArray[0].textContent = wind.speed + "km/h ";

        var directionArray = document.getElementsByClassName("direction");
            directionArray[0].textContent = wind.deg + "°";
         
            var icon = weather[0].icon;
        var iconArray = document.getElementsByClassName("icon");
        var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
        iconArray[0].src = imgURl; 
    });


// Bengaluru

    var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[1]}&appid=${apiKey}&units=metric`;

  fetch(url)
    .then(response => response.json())
    .then(data => {
      const { main, name, sys, weather, wind } = data;

        var tempArray = document.getElementsByClassName("val");
            tempArray[1].textContent = main.temp + " °C";

        var description = document.getElementsByClassName("wind");
            description[1].textContent = weather[0].description;

        var speedArray = document.getElementsByClassName("speed");
            speedArray[1].textContent = wind.speed + "km/h ";

        var directionArray = document.getElementsByClassName("direction");
            directionArray[1].textContent = wind.deg + "°";
         
            var icon = weather[0].icon;
        var iconArray = document.getElementsByClassName("icon");
        var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
        iconArray[1].src = imgURl; 
    });

// Chennai

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[2]}&appid=${apiKey}&units=metric`;

fetch(url)
  .then(response => response.json())
  .then(data => {
    const { main, name, sys, weather, wind } = data;

      var tempArray = document.getElementsByClassName("val");
          tempArray[2].textContent = main.temp + " °C";

      var description = document.getElementsByClassName("wind");
          description[2].textContent = weather[0].description;

      var speedArray = document.getElementsByClassName("speed");
          speedArray[2].textContent = wind.speed + "km/h ";

      var directionArray = document.getElementsByClassName("direction");
          directionArray[2].textContent = wind.deg + "°";
       
          var icon = weather[0].icon;
      var iconArray = document.getElementsByClassName("icon");
      var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
      iconArray[2].src = imgURl; 
  });

  // Hyedrabad

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[3]}&appid=${apiKey}&units=metric`;

fetch(url)
  .then(response => response.json())
  .then(data => {
    const { main, name, sys, weather, wind } = data;

      var tempArray = document.getElementsByClassName("val");
          tempArray[3].textContent = main.temp + " °C";

      var description = document.getElementsByClassName("wind");
          description[3].textContent = weather[0].description;

      var speedArray = document.getElementsByClassName("speed");
          speedArray[3].textContent = wind.speed + "km/h ";

      var directionArray = document.getElementsByClassName("direction");
          directionArray[3].textContent = wind.deg + "°";
       
          var icon = weather[0].icon;
      var iconArray = document.getElementsByClassName("icon");
      var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
      iconArray[3].src = imgURl; 
  });

// Kolkata

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[4]}&appid=${apiKey}&units=metric`;

fetch(url)
  .then(response => response.json())
  .then(data => {
    const { main, name, sys, weather, wind } = data;

      var tempArray = document.getElementsByClassName("val");
          tempArray[4].textContent = main.temp + " °C";

      var description = document.getElementsByClassName("wind");
          description[4].textContent = weather[0].description;

      var speedArray = document.getElementsByClassName("speed");
          speedArray[4].textContent = wind.speed + "km/h ";

      var directionArray = document.getElementsByClassName("direction");
          directionArray[4].textContent = wind.deg + "°";
       
          var icon = weather[0].icon;
      var iconArray = document.getElementsByClassName("icon");
      var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
      iconArray[4].src = imgURl; 
  });

  // Ahmedabad

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[5]}&appid=${apiKey}&units=metric`;

fetch(url)
  .then(response => response.json())
  .then(data => {
    const { main, name, sys, weather, wind } = data;

      var tempArray = document.getElementsByClassName("val");
          tempArray[5].textContent = main.temp + " °C";

      var description = document.getElementsByClassName("wind");
          description[5].textContent = weather[0].description;

      var speedArray = document.getElementsByClassName("speed");
          speedArray[5].textContent = wind.speed + "km/h ";

      var directionArray = document.getElementsByClassName("direction");
          directionArray[5].textContent = wind.deg + "°";
       
          var icon = weather[0].icon;
      var iconArray = document.getElementsByClassName("icon");
      var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
      iconArray[5].src = imgURl; 
  });

  // Pune

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[6]}&appid=${apiKey}&units=metric`;

fetch(url)
  .then(response => response.json())
  .then(data => {
    const { main, name, sys, weather, wind } = data;

      var tempArray = document.getElementsByClassName("val");
          tempArray[6].textContent = main.temp + " °C";

      var description = document.getElementsByClassName("wind");
          description[6].textContent = weather[0].description;

      var speedArray = document.getElementsByClassName("speed");
          speedArray[6].textContent = wind.speed + "km/h ";

      var directionArray = document.getElementsByClassName("direction");
          directionArray[6].textContent = wind.deg + "°";
       
          var icon = weather[0].icon;
      var iconArray = document.getElementsByClassName("icon");
      var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
      iconArray[6].src = imgURl; 
  });

  // Delhi

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[7]}&appid=${apiKey}&units=metric`;

fetch(url)
  .then(response => response.json())
  .then(data => {
    const { main, name, sys, weather, wind } = data;

      var tempArray = document.getElementsByClassName("val");
          tempArray[7].textContent = main.temp + " °C";

      var description = document.getElementsByClassName("wind");
          description[7].textContent = weather[0].description;

      var speedArray = document.getElementsByClassName("speed");
          speedArray[7].textContent = wind.speed + "km/h ";

      var directionArray = document.getElementsByClassName("direction");
          directionArray[7].textContent = wind.deg + "°";
       
          var icon = weather[0].icon;
      var iconArray = document.getElementsByClassName("icon");
      var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
      iconArray[7].src = imgURl; 
  });
  
  
  
    // Madhya Pradesh

var url = `https://api.openweathermap.org/data/2.5/weather?q=${cities[8]}&appid=${apiKey}&units=metric`;

fetch(url)
  .then(response => response.json())
  .then(data => {
    const { main, name, sys, weather, wind } = data;

      var tempArray = document.getElementsByClassName("val");
          tempArray[8].textContent = main.temp + " °C";

      var description = document.getElementsByClassName("wind");
          description[8].textContent = weather[0].description;

      var speedArray = document.getElementsByClassName("speed");
          speedArray[8].textContent = wind.speed + "km/h ";

      var directionArray = document.getElementsByClassName("direction");
          directionArray[8].textContent = wind.deg + "°";
       
          var icon = weather[0].icon;
      var iconArray = document.getElementsByClassName("icon");
      var imgURl = "http://openweathermap.org/img/wn/"+ icon +"@2x.png";
      iconArray[8].src = imgURl; 
  });