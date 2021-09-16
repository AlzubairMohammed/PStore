angular.module("myApp")
.controller("loginCtrl",function($scope,$rootScope,$http2,$state,$timeout,$interval){
    $rootScope.login=function () {
        $http2.post("api/login.php",{
            email:$scope.email,
            pass:$scope.pass
        }).then(function (resp) {
            if(resp.data.status){
                $rootScope.user = resp.data[0]
                $state.go("app.home")
                $scope.$apply()
                
            }
            else
                alert("Wrong Username or Password")
        })
        
    }
    
    
})