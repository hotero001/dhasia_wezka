/*
* 
*/

import UIKit

enum RatingType : Int {
  case Unrated
  case Ugly
  case OK
  case Nice
  case Awesome
}

class Icon {
  
  var title: String
  var subtitle: String
  var image: UIImage?
  var rating = RatingType.Unrated
    
  var url_string:String
  //added line below for date in ViewController.swift
  var date:String
  
    init(withTitle title: String, subtitle: String, imageName: UIImage, url_string: String, date:String) {
    self.title = title
    self.subtitle = subtitle
        
    self.url_string = url_string
        
    self.date = date
        
    //imageName was of type :String? and below was uncommented
    //if let imageName = imageName {
    //  if let iconImage = UIImage(named: imageName) {
    //    image = iconImage
    //  }
    //}
    self.image = imageName
  }
}