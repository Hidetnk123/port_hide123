window.addEventListener('load', function(){

  const image = document.getElementById("index-image")
  
  image.addEventListener('mouseover', function(){
    image.setAttribute("style", "color: #7CFC00;")
  })
  image.addEventListener('mouseout', function(){
    image.removeAttribute("style", "color: #7CFC00;")
  })
})
