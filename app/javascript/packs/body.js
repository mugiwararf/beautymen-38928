window.addEventListener('load', function(){

  const pullDownButtonThree = document.getElementById("pull_down_three")
  const pullDownParentsThree = document.getElementById("lists_three")



  pullDownButtonThree.addEventListener('mouseover', function(){
    if (pullDownParentsThree.getAttribute("style") == "display:block;") {
      pullDownParentsThree.removeAttribute("style")
    } else {
      pullDownParentsThree.setAttribute("style", "display:block;")
    }
  })

  pullDownButtonThree.addEventListener('mouseout', function(){

  })

})