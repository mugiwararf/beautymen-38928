window.addEventListener('load', function(){

  const pullDownButtonTwo = document.getElementById("pull_down_two")
  const pullDownParentsTwo = document.getElementById("lists_two")



  pullDownButtonTwo.addEventListener('mouseover', function(){
    if (pullDownParentsTwo.getAttribute("style") == "display:block;") {
      pullDownParentsTwo.removeAttribute("style")
    } else {
      pullDownParentsTwo.setAttribute("style", "display:block;")
    }
  })

  pullDownButtonTwo.addEventListener('mouseout', function(){

  })

})