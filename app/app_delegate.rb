class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)      
    # UIScreen describes the display our app is running on
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    # Setup Controllers
    controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)

    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [alphabet_controller, nav_controller]
    @window.rootViewController = tab_controller

    true
  end

end
