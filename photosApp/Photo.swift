//
//  Photo.swift
//  photosApp
//
//  Created by Victor Lee on 19/9/16.
//  Copyright © 2016 VictorLee. All rights reserved.
//

import Foundation

struct Photo {
    
    var name: String = ""
    var photographerProfileImageName: String = ""
    var caption: String = ""
    var thumbnailImageName: String = ""
    
    static func downloadAllPhotos() -> [Photo] {
        
        var photos = [Photo]()
        
        for i in 1...10 {
            let photo = Photo(name: "\(i)", photographerProfileImageName: "p\(i)", caption: "Sed condimentum risus tempus urna lacinia lacinia. Quisque vel porta lacus, eu faucibus ex. Phasellus neque elit, vestibulum sed nisi lobortis, lobortis sodales dolor. Vivamus a nibh eros. Donec ut mauris et libero aliquet rhoncus egestas sit amet felis. Aliquam vitae bibendum nibh. Donec dictum justo nulla, vel consectetur felis bibendum sed. Etiam orci mauris, tincidunt at semper ac, elementum eget nibh.", thumbnailImageName: "t\(i)")
            
            photos.append(photo)
        
        }
        
        
        return photos
        
    }
    
    
    
}
