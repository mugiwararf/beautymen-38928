window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("pull_down")
  const pullDownParents = document.getElementById("lists")


  pullDownButton.addEventListener('mouseover', function(){
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownButton.addEventListener('mouseout', function(){

  })

})