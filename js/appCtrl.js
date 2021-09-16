angular.module("myApp")
.controller("appCtrl",function($scope,$rootScope,$http2,$state,$timeout,$interval){
    $rootScope.stut="active"
    
    $scope.logout = function(){
        localStorage.clear();
        $rootScope.user=''
        
        $state.go("app.home")

    }
    // $rootScope.getInfo=function () {
    //     $http2.post("api/getInfo.php",{
            
    //     }).then(function (resp) {
    //         if(resp.data.status){
    //             $rootScope.userInfo = resp.data
    //             $state.go("app.home")
    //             $scope.$apply()
                
    //         }
    //         else
    //             alert("Wrong Username or Password")
    //     })
        
    // }
    // $rootScope.getInfo()
})



