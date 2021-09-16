angular.module("myApp")
.controller("fourmCtrl",function($scope,$rootScope,$http2,$state,$timeout,$interval){
    $scope.getComment = function(){
        $http2.post("api/getComment.php",{
        }).then(function(resp){
            $rootScope.comment=resp.data 
            $scope.$apply()
        })
        
    }
    $scope.getComment()
    $scope.sendComment=function(userImg,userName,userComment,userId){
       $http2.post("api/sendComment.php",{
            userImg:userImg,
            userName:userName,
            id:userId,
            comment:userComment
       }).then(function(resp){
        if(resp.status){
            alert("Comment sended successfully")
            $scope.userComment =''
            $scope.getComment()
            $scope.$apply()
        }
        else
            alert("Failed to send comment")
       })
    } 
    $scope.deleteComment=function(id){
        proc = confirm("Are you sure to delete product ?")
        if(proc)
        {
        $http2.post("api/deleteComment.php",{
            id:id
        }).then(function (resp) {
            if(resp.data.status){
                alert("Comment deleted successfully")
                $scope.getComment()
                $scope.$apply()
            }
            else
                alert("Failed to delete comment")
        })
    }}
})