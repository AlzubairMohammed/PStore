angular.module("myApp")

.controller("dashboardCtrl",function($scope,$rootScope,$http2,$state,$timeout,$interval){
    $scope.insertProduct=function () {
        $http2.post("api/insertProduct.php",{
            name:$scope.name,
            price:$scope.price,
            type:$scope.type,
            descr:$scope.descr,
            img1:$scope.img1,
            img2:$scope.img2,
            img3:$scope.img3
        }).then(function (resp) {
            if(resp.status){
                alert("Product inserted successfully")
                $scope.name=""
                $scope.price=""
                $scope.type=""
                $scope.descr=""
                $scope.y1=""
                $scope.y2=""
                $scope.y3=""
                $scope.img1=""
                $scope.img2=""
                $scope.img3=""
                $state.go("app.store")
                $scope.$apply()
            }
            else
                alert("Failed to insert product")
        })
    }
})