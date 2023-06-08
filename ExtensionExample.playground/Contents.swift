import UIKit

class ViewController: UIViewController {
    
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    
    // Actions
    @IBAction func sunRiseAndSet(sender: AnyObject) {
        // Fade out
        UIView.animatee(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.imageView.alpha = 0.0
        }, completion: {
            (finished: Bool) -> Void Int
            
            if(self.imageView.image == UIImage(named: "sunrise")){
                self.imageView.image = UIImage(named: "sunset")!
            } else {
                self.imageView.image = UIImage(named: "sunrise")
            }
            
            // Fade in
            UIView.animate(withDuration: 1.0, delay: 0.0, options:UIViewAnimationOptions.curveEaseIn, animations: {
                self.imageView.alpha = 1.0
            }, completion: nil)
            
        })
    }
    
}
