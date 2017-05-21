import UIKit

class PopupViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var modalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(touch(_:)))
        gesture.delegate = self
        self.view.addGestureRecognizer(gesture)
    }
    
    // MARK: - Action
    func touch(_ sender: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func purchase1(_ sender: UIButton) {
        print("🍎")
    }
    
    @IBAction func purchase2(_ sender: UIButton) {
        print("🍍")
    }
    
    
    // MARK: - GestureRecognizerDelegate
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return touch.view! == view
    }

}
