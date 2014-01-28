class TapController < UIViewController

  def viewDidLoad
    super    

    # Initial View Content
    self.view.backgroundColor = UIColor.whiteColor

    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Taps"
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @label

    # UI Navigation Controller
    self.title = "Tap (#{self.navigationController.viewControllers.count})"

    rightButton = UIBarButtonItem.alloc.initWithTitle("Push", style: UIBarButtonItemStyleBordered, target:self, action:'push')
    self.navigationItem.rightBarButtonItem = rightButton
  end


  def push    
    newController = TapController.alloc.initWithNibName(nil, bundle: nil)
    self.navigationController.pushViewController(newController, animated: true)
  end


  def initWithNibName(name, bundle: bundle)
    super
    
    # Favorite Tab Bar Item
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag: 1)    
    self
  end

end