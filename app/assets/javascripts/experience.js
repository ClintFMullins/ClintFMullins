$(document).ready(function(){
  var elementClass = '.experience';
  allExperiences = new AllExperiences();
  // Responsive.init(elementClass);
});

function AllExperiences(){
  this.experiences = [];
  this.init();
}

AllExperiences.prototype = {
  init: function(){
    var self = this;
    $.each($('.experience'), function(i, experience){
      var name = $(this).find('.name').html();
      var type = $(this).find('.type').html();
      self.experiences.push(new Experience(name,type,this));
    });
    this.setUpListeners();
    $('.all').click();
  },

  setUpListeners: function(){
    var self = this;
    var experienceNames = ['.skills','.projects','.positions','.hobbies'];
    var htmlNames = ['skill','project','work','hobby']

    for (i in experienceNames){
      this.oneListener(experienceNames[i], htmlNames[i]);
    }

    $('.all').on('click', function(){
      window.scrollTo(0, 0);
      $('.chosen').removeClass('chosen');
      $(this).addClass('chosen');
      self.showAll();
    });
  },

  oneListener: function(lookFor, affect){
    var self = this;
    $(lookFor).on('click', function(){
      window.scrollTo(0, 0);
      $('.chosen').removeClass('chosen');
      $(this).addClass('chosen');
      self.showOnlyOne(affect);
    });
  },

  showOnlyOne: function(type){
    for (i in this.experiences){
      curExperience = this.experiences[i];
      if (curExperience.type.toLowerCase() == type){
        curExperience.appear();
      }
      else {
        curExperience.disappear();
      }
    }
  },

  toggleAll: function(){
    for (i in this.experiences){
      this.experiences[i].toggle();
    }
  },

  showAll: function(){
    for (i in this.experiences){
      this.experiences[i].appear();
    }
  },

  hideAll: function(){
    for (i in this.experiences){
      this.experiences[i].disappear();
    }
  }
}

function Experience(name, type, elem){
  this.name = name;
  this.type = type;
  this.show = true;
  this.view = new ExperienceView(elem);
}

Experience.prototype = {  

  appear: function(){
    this.show = true;
    this.view.appear();
  },

  disappear: function(){
    this.show = false;
    this.view.disappear();
  },

  toggle: function(){
    if (this.show){
      this.disappear();
    }
    else{
      this.appear();
    }
  }
}

function ExperienceView(elem){
  this.$self = $(elem);
}

ExperienceView.prototype = {
  appear: function(){
    this.$self.removeClass('colorless');
    this.$self.fadeIn();
  },

  disappear: function(){
    this.$self.addClass('colorless');
    this.$self.fadeOut();
  }
}

// var Responsive = {
//   init: function(elementClass){
//     this.current = null;
//     this.elementClass = elementClass
//     this.screenWidths = [500,1000,1500,2000];
//     this.itemPercents = [90,45,30,23];
//     this.watchWindow();
//   },

//   watchWindow: function(){
//     var self = this;
//     $(window).on('resize', function(){
//       self.resize(self);
//     });
//   },

//   resize: function(self){
//     var width = window.innerWidth
//     for (i in self.screenWidths){
//       if (width < self.screenWidths[i]){
//         if (i != self.current) {
//           self.current = i;
//           self.changeDimensions(self.itemPercents[i]);
//         }
//         break;
//       }
//     }
//   },

//   changeDimensions: function(itemPercent){
//     $(this.elementClass).css('width', itemPercent+'%');
//   }

// }


