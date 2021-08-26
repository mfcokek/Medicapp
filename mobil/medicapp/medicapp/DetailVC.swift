

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var lblMediceneProducts: UILabel!
    
    var product: MediceneProducts?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMediceneProducts.text = product?.productDetails

    }
    @IBAction func Segment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            lblMediceneProducts.text = product?.productDetails
        }
        else if sender.selectedSegmentIndex == 1 {
            lblMediceneProducts.text = product?.productHastalık
        }
        else if sender.selectedSegmentIndex == 2 {
            lblMediceneProducts.text = product?.productKullanim
        }
        else if sender.selectedSegmentIndex == 3 {
            lblMediceneProducts.text = product?.productEtki
        }
    }

}
