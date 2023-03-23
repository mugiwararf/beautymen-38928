window.addEventListener('load', function(){

  const pullDownButtonOne = document.getElementById("pull_down_one")
  const pullDownParentsOne = document.getElementById("lists_one")



  pullDownButtonOne.addEventListener('mouseover', function(){
    if (pullDownParentsOne.getAttribute("style") == "display:block;") {
      pullDownParentsOne.removeAttribute("style")
    } else {
      pullDownParentsOne.setAttribute("style", "display:block;")
    }
  })

  pullDownButtonOne.addEventListener('mouseout', function(){

  })

})