angular.module("myApp")
.controller("registerCtrl",function($scope,$rootScope,$http2,$state,$timeout,$interval){
    $scope.insertUser=function(){
    $http2.post("api/insertUser.php",{
        name:$scope.name,
        pass:$scope.pass,
        email:$scope.email,
        tel:$scope.tel,
        addr:$scope.addr,
        user:$scope.user,
        img:$scope.x
    }).then(function(resp){
        alert("Your account created successfully")
        $scope.name=""
        $scope.pass=""
        $scope.email=""
        $scope.tel=""
        $scope.addr=""
        $scope.user=""
        $scope.y=""
        $state.go("app.login")
        $scope.$apply()
    })
    }
})

