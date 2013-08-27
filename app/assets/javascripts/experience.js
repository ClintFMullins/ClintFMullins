$(document).ready(function(){
  allExperiences = AllExperiences();
});


function AllExperiences(){
  this.experiences = [];
  $.each($('.experience'), function(i,experience){
    console.log($(this));
  });
}

function Experience(name, type){
  this.name = name;
  this.type = type;
  // this.view = new ExperienceView();
}

Experience.prototype = {


}

// function ExperienceView(){


// }

// ExperienceView.prototype = {


// }

