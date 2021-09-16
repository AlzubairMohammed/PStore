angular.module("myApp")
.filter("priceFilter",function ($rootScope) {
    return function (products,min,max) {
        var out=[]
        if(!min && !max){
            return products
        }
        else if(min && !max){
            products.forEach(function (pro) {
                if(pro.price>=min)
                    out.push(pro)
            })
        }
        else if(!min && max){
            products.forEach(function (pro) {
                if(pro.price<max)
                    out.push(pro)
            })
        }
        else{
            products.forEach(function (pro) {
                if(pro.price>=min && pro.price<max)
                    out.push(pro)
            })
        }
        return out
    }
    
})