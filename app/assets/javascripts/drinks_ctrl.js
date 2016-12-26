/* global angular */
// (function() {
//   "use strict";

//     angular.module("app").controller("drinksCtrl", function($scope, $http) {
//       $http.get('http://localhost:3000/api/v1/drinks').then(function(response) {
//         $scope.drinks = response.data;
//     });
//       $scope.addDrink = function(inputName, inputAlc){
//         var params = {
//           name: inputName,
//           ingredients: inputAlc
//         };
//         $http.post('/api/v1/drinks', params).then(function(response) {
//           $scope.people.push(response.data);
//         }, function(error) {
//           $scope.errors = error.data.errors;
//         }
//         })
//       }
//   });
// }());
(function() {
  angular.module("app"). controller("drinksCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('api/v1/drinks').then(function(response) {
        $scope.drinks = response.data;
    
      });
    };
    $scope.addDrink = function(inputName, inputIngredients) {
      var params = {name: inputName, ingredients: inputIngredients};

      $http.post('api/v1/drinks', params).then(function(response) {
        console.log(response);
        $scope.drinks.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };

    $scope.deleteDrink = function(inputDrink) {
      var index = $scope.drinks.indexOf(inputDrink);
      if (index !== 1) {
        $scope.drinks.splice(index, 1);
      }

    };

    window.$scope = $scope;

  });

})();