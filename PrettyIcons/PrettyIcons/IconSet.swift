/*
* 
*/

import UIKit
import Firebase

class IconSet : Equatable {
    
  //firebase BaaS setup
  //create reference to a Firebase location
  var myRootRef = Firebase(url:"https://crackling-heat-1487.firebaseio.com")
  
  let name: String
  var icons: [Icon]
    
    //var firebaseIcons:[Icon]
    
    var data:String?
  
    init(name: String, icons: [Icon]) {
    self.name = name
    self.icons = icons
    //self.firebaseIcons = firebaseIcons
  }
  
  static func winterSet() -> IconSet {
    var icons = [Icon]()
    
    return IconSet(name: "YosStoP", icons: icons)
  }
  
  static func summerSet() -> IconSet {
    var icons = [Icon]()
    //icons.append(Icon(withTitle: "Pare De Sufrir", subtitle: "Para toda la gente que sufre,\n con esto puede parar", imageName: "paredesufrir.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/LSkWMEv2k3A\" frameborder=\"0\" allowfullscreen></iframe>", date: "2/27/2016"))
    //icons.append(Icon(withTitle: "Pinches Unas", subtitle: "Pinches modas horribles de uñas", imageName: "pinchesunas.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/O-3ec-tC_4Q\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/24/2016"))
    //icons.append(Icon(withTitle: "Viejas Golosas", subtitle: "Algunas tipas que parece que \nestán bien golosas.", imageName: "viejasgolosas.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/sICWe5yZtxA\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/20/2016"))
    //icons.append(Icon(withTitle: "Las Raperas", subtitle: "Esas niñas que creen que \nson buenas rapeando.", imageName: "lasraperas.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/ofnajdhTeXA\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/17/2016"))
    //icons.append(Icon(withTitle: "Fotos De Hijos", subtitle: "Cuando se la pasan subiendo fotos\n de sus hijos o sobrinos y ya\n no sabes como explicarles.", imageName: "fotosdehijos.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/L1i6bVUij_M\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/13/2016"))
    //icons.append(Icon(withTitle: "Por Que Lo Hacen", subtitle: "De esas veces que no entiendes\n porqué lo hacen, porqué se toman\n esas fotos", imageName: "porquelohacen.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/5BS5mHqDoVg\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/10/2016"))
    //icons.append(Icon(withTitle: "Vieja Marrana", subtitle: "Viejas marranas que besan a \nancianos, no se depilan y mandan \nbesos bien raros.", imageName: "viejamarrana.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/yousRu39cCk\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/06/2016"))
    //icons.append(Icon(withTitle: "Enferma En Europa", subtitle: "De esas veces que te enfermas\n del otro lado del mundo.", imageName: "enfermaeneuropa.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/2tOOjoGXaxc\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/03/2016"))
    //icons.append(Icon(withTitle: "Soy Una Maldita Gorda", subtitle: "Porque llega un punto en el \nque no lo puedes negar, eres \nuna maldita gorda", imageName: "soyunamalditagorda.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/UShjjyVSj0E\" frameborder=\"0\" allowfullscreen></iframe>",date: "1/27/2016"))
    //icons.append(Icon(withTitle: "Fetiche De Pies", subtitle: "Gente que tiene pedos con los \npies. ¿A ti se te hacen sexy los \npies?", imageName: "fetichedepies.png", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/gRjP7j8ofHs\" frameborder=\"0\" allowfullscreen></iframe>",date: "1/23/2016"))
    return IconSet(name: "justYoss", icons: icons)
  }
    
    static func desubicadosSet() -> IconSet {
        var icons = [Icon]()
        //icons.append(Icon(withTitle: "Desubicados 1", subtitle: "Capitulo 1", imageName: "desubicados_1.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/D7QGfOkWdOU\" frameborder=\"0\" allowfullscreen></iframe>",date: "12/04/2014"))
        //icons.append(Icon(withTitle: "Desubicados 2", subtitle: "Capitulo 2", imageName: "desubicados_2.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/T7Qrw42dF94\" frameborder=\"0\" allowfullscreen></iframe>",date: "12/18/2014"))
        //icons.append(Icon(withTitle: "Desubicados 3", subtitle: "Capitulo 3", imageName: "desubicados_3.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/Tg-0l79mUsU\" frameborder=\"0\" allowfullscreen></iframe>",date: "1/02/2015"))
        //icons.append(Icon(withTitle: "Desubicados 4", subtitle: "Capitulo 4", imageName: "desubicados_4.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/7IHx4sfqp0Q\" frameborder=\"0\" allowfullscreen></iframe>",date: "1/15/2015"))
        //icons.append(Icon(withTitle: "Desubicados 5", subtitle: "Capitulo 5", imageName: "desubicados_5.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/M7u6k_QLF9s\" frameborder=\"0\" allowfullscreen></iframe>",date: "1/29/2015"))
        //icons.append(Icon(withTitle: "Desubicados 6", subtitle: "Capitulo 6", imageName: "desubicados_6.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/JRCdWe-TAoI\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/12/2015"))
        //icons.append(Icon(withTitle: "Desubicados 7", subtitle: "Capitulo 7", imageName: "desubicados_7.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/T0G1n8-TZrs\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/26/2015"))
        //icons.append(Icon(withTitle: "Desubicados 8", subtitle: "Capitulo 8", imageName: "desubicados_8.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/6NqvOkj1IJY\" frameborder=\"0\" allowfullscreen></iframe>",date: "3/12/2015"))
        //icons.append(Icon(withTitle: "Desubicados 9", subtitle: "Capitulo 9", imageName: "desubicados_9.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/wNlvCUqIdPk\" frameborder=\"0\" allowfullscreen></iframe>",date: "10/29/2015"))
        //icons.append(Icon(withTitle: "Desubicados 10", subtitle: "Capitulo 10", imageName: "desubicados_10.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/QLNOoIQDqEQ\" frameborder=\"0\" allowfullscreen></iframe>",date: "11/12/2015"))
        //icons.append(Icon(withTitle: "Desubicados 11", subtitle: "Capitulo 11", imageName: "desubicados_11.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/W-O1U1WYF9Q\" frameborder=\"0\" allowfullscreen></iframe>",date: "11/26/2015"))
        //icons.append(Icon(withTitle: "Desubicados 12", subtitle: "Capitulo 12", imageName: "desubicados_12.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/b88urtbm05E\" frameborder=\"0\" allowfullscreen></iframe>",date: "12/10/2015"))
        //icons.append(Icon(withTitle: "Desubicados 13", subtitle: "Capitulo 13", imageName: "desubicados_13.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/uC0tcECOnf8\" frameborder=\"0\" allowfullscreen></iframe>",date: "1/07/2016"))
        //icons.append(Icon(withTitle: "Desubicados 14", subtitle: "Capitulo 14", imageName: "desubicados_14.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/7rNJkVitbug\" frameborder=\"0\" allowfullscreen></iframe>",date: "1/21/2016"))
        //icons.append(Icon(withTitle: "Desubicados 15", subtitle: "Capitulo 15", imageName: "desubicados_15.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/AKHr67N3qzg\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/04/2016"))
        //icons.append(Icon(withTitle: "Desubicados 16", subtitle: "Capitulo 16", imageName: "desubicados_16.jpg", url_string: "<iframe width=\"280\" height=\"315\" src=\"https://www.youtube.com/embed/3Vl0c32uXN0\" frameborder=\"0\" allowfullscreen></iframe>",date: "2/18/2016"))
        return IconSet(name: "Desubicados", icons: icons)
    }
    
    static func desSet() -> IconSet {
        var icons = [Icon]()
        
        let refTitle = Firebase(url:"https://crackling-heat-1487.firebaseio.com/desubicadosSet")
        
        func shamoo(theseIcons: [Icon]) -> IconSet {
            //desSet()
            return IconSet(name: "Des", icons: theseIcons)
        }
        
        let ref = Firebase(url:"https://crackling-heat-1487.firebaseio.com")
        //ref.observeEventType(.Value, withBlock: {snapshot in
            //print(snapshot.value.valueForKey("summerSet")!.valueForKey("withTitle")!)
        //    icons.append(Icon(withTitle: snapshot.value.valueForKey("summerSet")!.valueForKey("withTitle")! as! String, subtitle: "john",imageName: "", url_string: "", date: ""))
        //    print(icons[0].subtitle) //prints out 'john' in the terminal
            
            //shamoo(icons)
        //    })
        
        //ref.observeEventType(.Value, withBlock: { withTitle in
        //    var titleItems = [Icon]()
        //    for item in withTitle.children {
        //        let titleItem = Icon(withTitle: item as! FDataSnapshot, subtitle: "Capitulo 1", imageName: "desubicados_1.jpg", url_string: "<iframe width=\\\"280\\\" height=\\\"315\\\" src=\\\"https://www.youtube.com/embed/D7QGfOkWdOU\\\" frameborder=\\\"0\\\" allowfullscreen></iframe>", date: "12/04/2014")
        //        titleItems.append(titleItem)
        //    }
        //    self.icons = titleItems
        //})
        
        //put this append inside the ref.observeEvent {...}
        //icons.append(Icon(withTitle: (refTitle.observeEventType("withTitle")), subtitle: "", imageName: "", url_string: "", date: "")
        
        //refTitle.queryOrderedByChild("subtitle").observeSingleEventOfType(.Value, withBlock: {snapshot in
        //    if let subtit = snapshot.value["subtitle"] {
        //      icons.append(Icon(withTitle: "", subtitle: "\(subtit)", imageName: "", url_string: "", date: ""))
        //      print(icons)
        //    }
        //    })
        //print(icons)
        //print(refTitle.childByAppendingPath("withTitle").valueForKey("desubicadosSet"))
        
        return IconSet(name: "Des", icons: icons)
        //return shamoo(icons)
        }
  
  static func iconSets() -> [IconSet] {
    //return [IconSet.summerSet(), IconSet.winterSet()]//, IconSet.desSet()]
    return []
  }
}

func ==(lhs: IconSet, rhs: IconSet) -> Bool {
  var isEqual = false
  if (lhs.name == rhs.name && lhs.icons.count == rhs.icons.count) {
    isEqual = true
  } 
  return isEqual
}

