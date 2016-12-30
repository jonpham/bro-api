(function() {
  "use strict";
  angular.module("app").controller('broCtrl',
    function($scope, $http)  {
      // Debug Code
      window.$scope = $scope;

      /// Production Code

      // Create People Array
      $scope.bros = new Array;

      // Get Person JSON
      $scope.setup = function() {
        $http.get('/api/v2/bros.json').then(function(response){
          $scope.bros= response.data;
        });

        for (var i=0; i < $scope.bros.length; i++) {
          $scope.bros[i]["toggleDetails"]=false;
        }
        // $scope.addBro("Bob","Sniper from Tennessee");
        // $scope.addBro("Billy","Cowboy from Kansas");
        // $scope.addBro("Jill","Rancher from Montanta");
      }

      $scope.addBro = function(input_name,input_bio,input_job,input_food) {
        var empty_name = "Add a Name";
        var empty_bio = "Add a Bio";
        console.log("Name: " + input_name + "Bio: "+ input_bio);
        if ((input_name !== empty_name) && (input_bio !== empty_bio) && input_name && input_bio) {
          var new_bro = {
            name: input_name,
            bio: input_bio,
            job: input_job,
            fav_food: input_food,
            toggleDetails : false
          };
          // console.log(new_bro);
          $http.post('/api/v2/bros.json',new_bro).then(function(response){
            $scope.bros.push(new_bro);
            $scope.clearNewBro();
          });
        }
      }

      $scope.addToggleBoolean = function() {
        for (var i=0; i < $scope.bros.length; i++) {
          $scope.bros[i]["toggleDetails"]=false;
        }
      }

      $scope.clearNewBro = function() {
        $scope.newBroName = null;
        $scope.newBroBio = null;
        $scope.newBroJob = null;
        $scope.newBroFood = null;
      }

      $scope.deleteBro = function(bro) {
        var bro_index = $scope.bros.indexOf(bro);
        $scope.bros.splice(bro_index,1);
      }
    }
  );
}
());

