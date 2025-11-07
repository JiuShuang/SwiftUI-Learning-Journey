//
//  ClothesProduct.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/7.
//

import SwiftUI

// constant:max rating is 5
let MAX_RATING:Int=5

//Delivery Struct
struct Delivery{
    var type:String
    var dateRange:String
    var price:Double
}

// Review Struct
struct Review{
    var image:ImageResource
    var name:String
    var rating:Int
    var comment:String
}

// Popular Struct
struct PopularClothes{
    var image:ImageResource
    var price:Int
    var isLike:Bool
}

// MightLike Struct
struct MightLikeClothes{
    var image:ImageResource
    var desc:String
    var price:Double
}

//Clothes Product Detail Struct
struct ClothesProduct{
    var images:Array<ImageResource>
    var price:Double
    var desc:String
    var variations:Array<String>
    var specifications:Array<String>
    var origin:Array<String>
    var deliveries:Array<Delivery>
    var rating:Int
    var reviews:Array<Review>
    var popular:Array<PopularClothes>
    var MightLike:Array<MightLikeClothes>
    var colorOptions:Array<ImageResource>
    var size:Array<String>
}
