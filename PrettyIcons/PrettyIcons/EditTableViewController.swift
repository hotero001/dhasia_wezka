//
//  EditTableViewController.swift
//
//

import UIKit

class EditTableViewController: UITableViewController {

  var icon: Icon?
  //@IBOutlet weak var iconImageView: UIImageView!
  //@IBOutlet weak var titleTextField: UITextField!
  //@IBOutlet weak var subtitleTextField: UITextField!
  //@IBOutlet weak var ratingLabel: UILabel!

  @IBOutlet weak var webView: UIWebView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var websiteButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        canDisplayBannerAds = true
    }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    guard let icon = icon else {
      return
    }
    //if let iconImage = icon.image {
    //  iconImageView.image = iconImage
    //}
    //titleTextField.text = icon.title
    //subtitleTextField.text = icon.subtitle
    //ratingLabel.text = String(icon.rating)
    
    webView.loadHTMLString(icon.url_string, baseURL: nil)
    
    titleLabel.text = icon.title
    
    descriptionLabel.text = icon.subtitle
    descriptionLabel.numberOfLines = 0;
  }
  
  override func viewWillDisappear(animated: Bool) {
    guard let icon = icon else {
      return
    }
    //if let iconImage = iconImageView.image {
    //  icon.image = iconImage
    //}

    //if let title = titleTextField.text {
    //  icon.title = title
    //}
    //if let subtitle = subtitleTextField.text {
    //  icon.subtitle = subtitle
    //}
    
    if let title = titleLabel.text {
        icon.title = title
    }
    
    if let subtitle = descriptionLabel.text {
        icon.subtitle = subtitle
    }

  }
  
    //refactor links below to a single function that gets each url string passed into it
    
    //action that links to Yoss website outside of application
    @IBAction func websiteAction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.yosstop.tv")!)
    }
    
    //action that links to Yoss Vine outside of application
    @IBAction func vineWebAction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.vine.co/YosStoP")!)
    }
    
    //action that links to Yoss Twitter outside application
    @IBAction func twitterWebAction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://twitter.com/YosStoP?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor")!)
    }
    
    //action that links to Yoss Instagram account #1 outside application
    @IBAction func instagramWebAction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string:"https://www.instagram.com/justyoss/?hl=en")!)
    }
    
    //action that links to Yoss Instagram account #2 outside application
    @IBAction func instagramTwoWebAction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string:"https://www.instagram.com/yosstop/")!)
    }
    
    //action that links to Yoss facebook account outside application
    @IBAction func fbWebAction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string:"https://es-la.facebook.com/yosstop")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


}

extension EditTableViewController: UITextFieldDelegate {
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
}


