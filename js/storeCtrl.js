angular.module("myApp")
.controller("storeCtrl",function($scope,$rootScope,$http2,$state,$timeout,$interval){
    $scope.active1='active'
    $scope.getProduct = function(){
        $http2.post("api/getProduct.php",{
        }).then(function(resp){
            $rootScope.products=resp.data 
            $scope.$apply()
        })
        
    }
    $scope.getProduct()
    $scope.deleteProduct=function(id){
        proc = confirm("Are you sure to delete product ?")
        if(proc)
        {
        $http2.post("api/deleteProduct.php",{
            id:id
        }).then(function (resp) {
            if(resp.data.status){
                alert("product deleted successfully")
                $scope.getProduct()
            }
            else
                alert("Failed to delete product")
        })
    }}
    
    $rootScope.getPruchases = function(){
        $http2.post("api/getPruchases.php",{
        }).then(function(resp){
            $rootScope.pruchasesInfo=resp.data 
            $rootScope.$apply()
        })
        
    }
    $rootScope.getPruchases()
    $rootScope.deleltPru=function(id){
        proc = confirm("Are you sure to delete product ?")
        if(proc){ 
        $http2.post("api/deletePruchase.php",{
            id:id
        }).then(function (resp) {
            if(resp.data.status){
                alert("product deleted successfully")
                $rootScope.getPruchases()
                $rootScope.$apply()
            }
            else
                alert("Failed to delete product")
        })
    }}
    $rootScope.pruchases=function(name,img,productId){
        $http2.post("api/pruchases.php",{
            name:name,
            img:img,
            productId:productId
        }).then(function(resp){
            if(resp.status){
                alert("product added to cart successfully")
                $rootScope.getPruchases()
            }
            
        })
    }
   
    $scope.go=function(){
        alert("You can't buy without login !")
        $state.go("app.login")
    }

})