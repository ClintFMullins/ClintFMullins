$(document).ready(function(){
  allExperiences = new AllExperiences();
});


function AllExperiences(){
  this.experiences = [];
  this.init(this);
}

AllExperiences.prototype = {
  init: function(self){
    $.each($('.experience'), function(i,experience){
      var name = $(this).find('.name').html();
      var type = $(this).find('.type').html();
      self.experiences.push(new Experience(name,type));
    });
  }
}

function Experience(name, type){
  this.name = name;
  this.type = type;
  this.show = true;
  this.view = new ExperienceView();
}

Experience.prototype = {  
  hide: function(){
    this.show = false;
    this.view.hide(this);
  },

  show: function(){
    this.show = true;
    this.view.show(this);
  }
}

function ExperienceView(){


}

ExperienceView.prototype = {


}

