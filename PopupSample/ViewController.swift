import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tap(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Popup", bundle: nil)
        let po = sb.instantiateInitialViewController() as! PopupViewController
        po.modalTransitionStyle = .crossDissolve
        po.modalPresentationStyle = .overCurrentContext
        present(po, animated: true, completion: nil)
    }

}

