import UIKit
import iAd
import Firebase

class ViewController: UIViewController {
    
  var ref = Firebase(url:"https://crackling-heat-1487.firebaseio.com")

  var iconSets = [IconSet]()
  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    //added single line of code below
    var desubicados = [Icon]()
    var winterset = [Icon]()
    var summerset = [Icon]()
    super.viewDidLoad()
    
    //alert message on app launch
    let title = "Bienvenidos!"
    let message = "Visite nuestra aplicacion con regularidad. Nuevos videos cada semana."
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
    alertController.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.Default, handler: nil))
    
    self.presentViewController(alertController, animated: true, completion: nil)
    
    //TODO: Extract individual appendings of firebase data to a single function to reduce code base
    
    //appends the desubicados video data and information from firebase backend
    ref.observeEventType(.Value, withBlock: {snapshot in
        func appendDesubicadosItems(setName:String, withTitle:String, subTitle:String, imageName:String, url_string:String, date:String) {
            desubicados.append(Icon(withTitle: snapshot.value.valueForKey(setName)!.valueForKey(withTitle)! as! String, subtitle: snapshot.value.valueForKey(setName)!.valueForKey(subTitle)! as! String, imageName: UIImage(data: NSData(base64EncodedString: snapshot.value.valueForKey(setName)!.valueForKey(imageName)! as! String, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)!)!, url_string: snapshot.value.valueForKey(setName)!.valueForKey(url_string)! as! String, date: snapshot.value.valueForKey(setName)!.valueForKey(date)! as! String
                ))
        }
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitle", subTitle:"subTitle", imageName:"imageName", url_string:"url_string", date:"date")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleTwo", subTitle:"subTitleTwo", imageName:"imageNameTwo", url_string:"url_stringTwo", date:"dateTwo")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleThree", subTitle:"subTitleThree", imageName:"imageNameThree", url_string:"url_stringThree", date:"dateThree")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleFour", subTitle:"subTitleFour", imageName:"imageNameFour", url_string:"url_stringFour", date:"dateFour")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleFive", subTitle:"subTitleFive", imageName:"imageNameFive", url_string:"url_stringFive", date:"dateFive")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleSix", subTitle:"subTitleSix", imageName:"imageNameSix", url_string:"url_stringSix", date:"dateSix")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleSeven", subTitle:"subTitleSeven", imageName:"imageNameSeven", url_string:"url_stringSeven", date:"dateSeven")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleEight", subTitle:"subTitleEight", imageName:"imageNameEight", url_string:"url_stringEight", date:"dateEight")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleNine", subTitle:"subTitleNine", imageName:"imageNameNine", url_string:"url_stringNine", date:"dateNine")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleTen", subTitle:"subTitleTen", imageName:"imageNameTen", url_string:"url_stringTen", date:"dateTen")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleEleven", subTitle:"subTitleEleven", imageName:"imageNameEleven", url_string:"url_stringEleven", date:"dateEleven")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleTwelve", subTitle:"subTitleTwelve", imageName:"imageNameTwelve", url_string:"url_stringTwelve", date:"dateTwelve")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleThirteen", subTitle:"subTitleThirteen", imageName:"imageNameThirteen", url_string:"url_stringThirteen", date:"dateThirteen")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleFourteen", subTitle:"subTitleFourteen", imageName:"imageNameFourteen", url_string:"url_stringFourteen", date:"dateFourteen")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleFifteen", subTitle:"subTitleFifteen", imageName:"imageNameFifteen", url_string:"url_stringFifteen", date:"dateFifteen")
        appendDesubicadosItems("desubicadosSet", withTitle:"withTitleSixteen", subTitle:"subTitleSixteen", imageName:"imageNameSixteen", url_string:"url_stringSixteen", date:"dateSixteen")
        
        //function that checks if there are additional videos in the desubicados series, beyond the 16 shows as of April 2016
        //refactor to only have a single function and check at .count values of 81, 86, 91, 96, etc...
        var videoArray = [81: "Seventeen", 86: "Eighteen", 91: "Nineteen", 96: "Twenty", 101: "Twentyone", 106: "Twentytwo", 111: "Twentythree", 116: "Twentyfour", 121: "Twentyfive", 126: "Twentysix", 131: "Twentyseven", 136: "Twentyeight", 141: "Twentynine", 146: "Thirty", 151: "Thirtyone", 156: "Thirtytwo"]
        func checkForFutureDesubicadosVideos(arrayIndex:Int, withTitle:String, subTitle:String, imageName:String, url_string:String, date:String) {
            if snapshot.value.valueForKey("desubicadosSet")!.count > arrayIndex {
                desubicados.append(Icon(withTitle: snapshot.value.valueForKey("desubicadosSet")!.valueForKey(withTitle)! as! String, subtitle: snapshot.value.valueForKey("desubicadosSet")!.valueForKey(subTitle)! as! String, imageName: UIImage(data: NSData(base64EncodedString: snapshot.value.valueForKey("desubicadosSet")!.valueForKey(imageName)! as! String, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)!)!, url_string: snapshot.value.valueForKey("desubicadosSet")!.valueForKey(url_string)! as! String, date: snapshot.value.valueForKey("desubicadosSet")!.valueForKey(date)! as! String
                ))
            }
        }
        
        //loops through each new video set beyond the 16 as of April 2016, and if it exists, it is appended to the table view
        for (key, value) in videoArray {
            checkForFutureDesubicadosVideos(key, withTitle:"withTitle"+"\(value)", subTitle:"subTitle"+"\(value)", imageName:"imageName"+"\(value)", url_string:"url_string"+"\(value)", date:"date"+"\(value)")
        }
        
        //appending justyoss vids to summerset from firebase backend
        func appendJustyossItems(setName:String, withTitle:String, subTitle:String, imageName:String, url_string:String, date:String) {
            summerset.append(Icon(withTitle: snapshot.value.valueForKey(setName)!.valueForKey(withTitle)! as! String, subtitle: snapshot.value.valueForKey(setName
                )!.valueForKey(subTitle)! as! String, imageName: UIImage(data: NSData(base64EncodedString: snapshot.value.valueForKey(setName)!.valueForKey(imageName)! as! String, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)!)!, url_string: snapshot.value.valueForKey(setName)!.valueForKey(url_string)! as! String, date: snapshot.value.valueForKey(setName)!.valueForKey(date)! as! String
                ))
        }
        appendJustyossItems("summerSet", withTitle:"withTitle", subTitle:"subTitle", imageName:"imageName", url_string:"url_string", date:"date")
        appendJustyossItems("summerSet", withTitle:"withTitleTwo", subTitle:"subTitleTwo", imageName:"imageNameTwo", url_string:"url_stringTwo", date:"dateTwo")
        appendJustyossItems("summerSet", withTitle:"withTitleThree", subTitle:"subTitleThree", imageName:"imageNameThree", url_string:"url_stringThree", date:"dateThree")
        appendJustyossItems("summerSet", withTitle:"withTitleFour", subTitle:"subTitleFour", imageName:"imageNameFour", url_string:"url_stringFour", date:"dateFour")
        appendJustyossItems("summerSet", withTitle:"withTitleFive", subTitle:"subTitleFive", imageName:"imageNameFive", url_string:"url_stringFive", date:"dateFive")
        appendJustyossItems("summerSet", withTitle:"withTitleSix", subTitle:"subTitleSix", imageName:"imageNameSix", url_string:"url_stringSix", date:"dateSix")
        appendJustyossItems("summerSet", withTitle:"withTitleSeven", subTitle:"subTitleSeven", imageName:"imageNameSeven", url_string:"url_stringSeven", date:"dateSeven")
        appendJustyossItems("summerSet", withTitle:"withTitleEight", subTitle:"subTitleEight", imageName:"imageNameEight", url_string:"url_stringEight", date:"dateEight")
        appendJustyossItems("summerSet", withTitle:"withTitleNine", subTitle:"subTitleNine", imageName:"imageNameNine", url_string:"url_stringNine", date:"dateNine")
        appendJustyossItems("summerSet", withTitle:"withTitleTen", subTitle:"subTitleTen", imageName:"imageNameTen", url_string:"url_stringTen", date:"dateTen")
        
        //appending yosstop vids info and data from firebase backend
        func appendYosstopItems(setName:String, withTitle:String, subTitle:String, imageName:String, url_string:String, date:String) {
            winterset.append(Icon(withTitle: snapshot.value.valueForKey(setName)!.valueForKey(withTitle)! as! String, subtitle: snapshot.value.valueForKey(setName)!.valueForKey(subTitle)! as! String, imageName: UIImage(data: NSData(base64EncodedString: snapshot.value.valueForKey(setName)!.valueForKey(imageName)! as! String, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)!)!, url_string: snapshot.value.valueForKey(setName)!.valueForKey(url_string)! as! String, date: snapshot.value.valueForKey(setName)!.valueForKey(date)! as! String
                ))
        }
        appendYosstopItems("winterSet", withTitle:"withTitle", subTitle:"subTitle", imageName:"imageName", url_string:"url_string", date:"date")
        appendYosstopItems("winterSet", withTitle:"withTitleTwo", subTitle:"subTitleTwo", imageName:"imageNameTwo", url_string:"url_stringTwo", date:"dateTwo")
        appendYosstopItems("winterSet", withTitle:"withTitleThree", subTitle:"subTitleThree", imageName:"imageNameThree", url_string:"url_stringThree", date:"dateThree")
        appendYosstopItems("winterSet", withTitle:"withTitleFour", subTitle:"subTitleFour", imageName:"imageNameFour", url_string:"url_stringFour", date:"dateFour")
        appendYosstopItems("winterSet", withTitle:"withTitleFive", subTitle:"subTitleFive", imageName:"imageNameFive", url_string:"url_stringFive", date:"dateFive")
        appendYosstopItems("winterSet", withTitle:"withTitleSix", subTitle:"subTitleSix", imageName:"imageNameSix", url_string:"url_stringSix", date:"dateSix")
        appendYosstopItems("winterSet", withTitle:"withTitleSeven", subTitle:"subTitleSeven", imageName:"imageNameSeven", url_string:"url_stringSeven", date:"dateSeven")
        appendYosstopItems("winterSet", withTitle:"withTitleEight", subTitle:"subTitleEight", imageName:"imageNameEight", url_string:"url_stringEight", date:"dateEight")
        appendYosstopItems("winterSet", withTitle:"withTitleNine", subTitle:"subTitleNine", imageName:"imageNameNine", url_string:"url_stringNine", date:"dateNine")
        appendYosstopItems("winterSet", withTitle:"withTitleTen", subTitle:"subTitleTen", imageName:"imageNameTen", url_string:"url_stringTen", date:"dateTen")
        
    self.iconSets = IconSet.iconSets()
    self.iconSets.append(IconSet(name: "Desubicados", icons: desubicados))
    self.iconSets.append(IconSet(name: "JustYoss", icons: summerset))
    self.iconSets.append(IconSet(name: "YosStoP", icons: winterset))
    //navigationItem.rightBarButtonItem = editButtonItem()self.
    self.tableView.allowsSelectionDuringEditing = true
    self.tableView.rowHeight = UITableViewAutomaticDimension
    self.tableView.estimatedRowHeight = 70.0
    self.automaticallyAdjustsScrollViewInsets = false
    
    self.canDisplayBannerAds = true
    })
  }

  override func viewWillAppear(animated: Bool) {
    tableView.reloadData()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
    if identifier == "GoToDetail" && editing {
      return false
    }
    return true
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  //this viewcontroller does not exist
  //  if segue.identifier == "GoToDetail" {
  //    let detailViewController = segue.destinationViewController as? DetailViewController
  //    if let indexPath = tableView.indexPathForSelectedRow {
  //      let set = iconSets[indexPath.section]
  //      let icon = set.icons[indexPath.row]
  //      detailViewController?.icon = icon
  //    }
  //  }
    if segue.identifier == "GoToEdit" {
      let editViewController = segue.destinationViewController as? EditTableViewController
      if let indexPath = tableView.indexPathForSelectedRow {
        let set = iconSets[indexPath.section]
        let icon = set.icons[indexPath.row]
        editViewController?.icon = icon
      }
    }
  }
  
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
  
  override func setEditing(editing: Bool, animated: Bool) {
    super.setEditing(editing, animated: animated)
    if editing {
      tableView.beginUpdates()
      for (index, set) in iconSets.enumerate() {
        let indexPath = NSIndexPath(forRow: set.icons.count, inSection: index)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
      }
      tableView.endUpdates()
      tableView.setEditing(true, animated: true)
    } else {
      
      tableView.beginUpdates()
      for (index, set) in iconSets.enumerate() {
        let indexPath = NSIndexPath(forRow: set.icons.count, inSection: index)
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
      }
      
      tableView.endUpdates()
      tableView.setEditing(false, animated: true)
    }
  }
  
  func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
    
    let set = iconSets[indexPath.section]
    if indexPath.row >= set.icons.count {
      return .Insert
    } else {
      return .Delete
    }
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return iconSets.count
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let adjustment = editing ? 1 : 0;
    return iconSets[section].icons.count + adjustment
  }
  
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return iconSets[section].name
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell: UITableViewCell
    let set = iconSets[indexPath.section]
    
    if indexPath.row >= set.icons.count && editing {
      cell = tableView.dequeueReusableCellWithIdentifier("NewRowCell", forIndexPath: indexPath)
      cell.textLabel?.text = "Add Icon"
      cell.detailTextLabel?.text = nil
      cell.imageView?.image = nil
    } else {
      cell = tableView.dequeueReusableCellWithIdentifier("IconCell", forIndexPath: indexPath)
      if let iconCell = cell as? IconTableViewCell {
        let icon = set.icons[indexPath.row]
        iconCell.titleLabel.text = icon.title
        iconCell.subtitleLabel.text = icon.subtitle
        //this line below should add a date in the main ViewController
        iconCell.dateLabel.text = icon.date
        
        //re insert the if let else statement that was deleted
        if let iconImage = icon.image {
            iconCell.iconImageView.image = iconImage
        } else {
            iconCell.iconImageView.image = nil
        }
            
        if icon.rating == .Awesome {
          iconCell.favoriteImageView.image = UIImage(named: "star_sel.png")
        } else {
          iconCell.favoriteImageView.image = UIImage(named: "star_uns.png")
        }
      }
    }
    
    return cell
  }
  
  func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {

    let set = iconSets[indexPath.section]
    if editingStyle == .Delete {

      set.icons.removeAtIndex(indexPath.row)
      tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation:.Automatic)
    } else if editingStyle == .Insert {
      //below, need to add , date: "" after the url_string
        //let newIcon = Icon(withTitle: "New Icon", subtitle: "", imageName: "eyeball.png", url_string: "", date: "")
      //set.icons.append(newIcon)
      //tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
  }
  
  func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
    let set = iconSets[indexPath.section]
    if editing && indexPath.row < set.icons.count {
      return nil
    }
    return indexPath
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    let set = iconSets[indexPath.section]
    if indexPath.row >= set.icons.count && editing {
      self.tableView(tableView, commitEditingStyle: .Insert, forRowAtIndexPath: indexPath)
    }
  }
  
  func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    let iconSet = iconSets[indexPath.section]
    if indexPath.row >= iconSet.icons.count && editing {
      return false
    }
    return true
  }
  
  func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
    let sourceSet = iconSets[sourceIndexPath.section]
    let destinationSet = iconSets[destinationIndexPath.section]
    let iconToMove = sourceSet.icons[sourceIndexPath.row]
    
    if sourceSet == destinationSet {
      if destinationIndexPath.row != sourceIndexPath.row {
       swap(&destinationSet.icons[destinationIndexPath.row], &destinationSet.icons[sourceIndexPath.row])
      }
    } else {
      destinationSet.icons.insert(iconToMove, atIndex: destinationIndexPath.row)
      sourceSet.icons.removeAtIndex(sourceIndexPath.row)
    }
  }
  
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
    let set = iconSets[proposedDestinationIndexPath.section]
    if proposedDestinationIndexPath.row >= set.icons.count {
      return NSIndexPath(forRow: set.icons.count-1, inSection: proposedDestinationIndexPath.section)
    }
    return proposedDestinationIndexPath
  }  
}