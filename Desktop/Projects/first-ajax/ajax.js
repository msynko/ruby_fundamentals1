document.addEventListener("DOMContentLoaded", function() {


 const AjaxRequestBtn = document.getElementById('AJAX_request');

  AjaxRequestBtn.addEventListener('click', function() {
    const request = axios.get(' http://intro-ajax-api.herokuapp.com')
                .then(function(response) {
                    console.log('INSIDE THE `then()` CALLBACK');
                    console.log(response);})
  });

const AjaxRequestBtnPing = document.getElementById('AJAX_request_Ping');

AjaxRequestBtnPing.addEventListener('click', function() {
  const request = axios.get(' http://intro-ajax-api.herokuapp.com/ping')
    .then(function(response) {
      console.log(response.data)
      const dataElem = document.getElementById('step3456');
      let p = document.getElementById("Error");
      p.innerText=response.data;
      dataElem.appendChild(p);
      })
      .catch(function(error) {
        console.log(error.data);
      let p = document.getElementById("Error");
      p.innerText=`You have an error`;
      dataElem.appendChild(p);
      })
      .then(function(response) {
        console.log(`Hey the request finished!`);
      })
});

const AjaxRequestBtnCount = document.getElementById('AJAX_request_Count');

AjaxRequestBtnCount.addEventListener('click', function() {
  const request = axios.get(' http://intro-ajax-api.herokuapp.com/count')
  .then(function(response) {
    console.log(response.data);
  })
});

const AjaxRequestBtnTime = document.getElementById('AJAX_request_Time');

AjaxRequestBtnTime.addEventListener('click', function() {
  const request = axios({
  url:' http://intro-ajax-api.herokuapp.com/time?timezone=Asia/Kolkata',
  method:'GET' ,
  responseType: 'text'
})
  .then(function(response) {
    console.log(response.data);
  })
});

const AjaxRequestBtnCar = document.getElementById('AJAX_request_Car');

AjaxRequestBtnCar.addEventListener('click', function() {
  const request = axios({
  url:' http://intro-ajax-api.herokuapp.com/a_car',
  method:'GET' ,
  responseType: 'html'
})
  .then(function(response) {
    console.log(response.data);
    const elem = document.getElementById('step9');
    let ul = document.getElementById("cars");
    ul.innerText=response.data;
    elem.appendChild(ul);
  })

});









  });
