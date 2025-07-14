
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var inputnumber: UILabel!
    var currentInput:String = ""
    var resultValue:String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        styleButtons()

    }
    func styleButtons() {
        for button in allButtons {
            button.layer.cornerRadius = button.frame.height / 5
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize:28)

        }
    }

    
    @IBAction func clearpressed(_ sender:UIButton) {
        currentInput = ""
        resultValue = ""
        inputnumber.text = "xxxxxxx"

    }
    
    @IBAction func pressequal(_ sender:UIButton) {
        let expression = (inputnumber.text ?? "")
            .replacingOccurrences(of: "x", with: "*")
            .replacingOccurrences(of: "%", with: "*0.01")

        print("Evaluating: \(expression)")

        let exp = NSExpression(format: expression)
        if let result = exp.expressionValue(with: nil, context: nil) as? NSNumber {
            inputnumber.text = result.stringValue
        } else {
            inputnumber.text = "Error"
        }
        currentInput = ""
        resultValue = ""
    }
    
    
    @IBAction func pressEsc(_ sender:UIButton) {
        guard var text = inputnumber.text, !text.isEmpty, text != "0" else {
            return
        }
        text.removeLast()
        inputnumber.text = text.isEmpty ? "0" : text

//        if isResultDisplayed{
//            isResultDisplayed = false
//            return
//        }
//        if !currentInput.isEmpty{
//            currentInput.removeLast()
//        }
//        inputnumber.text = currentInput.isEmpty ? "0":currentInput
    }
    
    @IBAction func presspercentage(_ sender:UIButton) {
        guard let text = inputnumber.text, let number = Double(text) else {
            inputnumber.text = "Error"
            return
        }
        let percentValue = number / 100
        inputnumber.text = String(percentValue)

    }
    
    @IBAction func pressnumber0(_ sender: UIButton){
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"0"
//        inputnumber.text = inputnumber.text ?? "" + "0"

    }
    
    @IBAction func pressnumber1(_ sender:UIButton) {
        let previousValue = inputnumber.text ?? ""
         inputnumber.text = previousValue+"1"
//        inputnumber.text = "jak kasfnakjsfn akjsfnaksjfnaksjfnajks"
        
    }
    
    @IBAction func pressnumber2(_ sender: UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"2"
//        inputnumber.text = inputnumber.text ?? "" + "2"
        
    }
    
    @IBAction func pressnumber3(_ sender: UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"3"
//        inputnumber.text = inputnumber.text ?? "" + "3"
        
    }
    
    @IBAction func pressnumber4(_ sender:UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"4"
//        inputnumber.text = inputnumber.text ?? "" + "4"
        
    }
    
    @IBAction func pressnumber5(_ sender:UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"5"
//        inputnumber.text = inputnumber.text ?? "" + "5"
        
        
    }
    
    @IBAction func pressnumber6(_ sender:UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"6"
//        inputnumber.text = inputnumber.text ?? "" + "6"
        
    }
    
    @IBAction func pressnumber7(_ sender:UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"7"
//        inputnumber.text = inputnumber.text ?? "" + "7"
        
    }
    
    @IBAction func pressnumber8(_ sender:UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"8"
//        inputnumber.text = inputnumber.text ?? "" + "8"
        
    }
    
    @IBAction func pressnumber9(_ sender:UIButton) {
        let previousValue = inputnumber.text ?? ""
        inputnumber.text = previousValue+"9"
//        inputnumber.text = inputnumber.text ?? "" + "9"
        
    }
    @IBAction func pressoperationplus(_ sender:UIButton){
//        resultValue = resultValue + currentInput +  "+"
//        currentInput = ""
        let previousvalue =  inputnumber.text ?? ""
        inputnumber.text = previousvalue +  "+"


        
    }
    
    @IBAction func pressoperationminus(_ sender: UIButton) {
//        resultValue = resultValue + currentInput +  "-"
//        currentInput = ""
        let previousvalue =  inputnumber.text ?? ""
        inputnumber.text = previousvalue + "-"
        
        
    }
    
    @IBAction func pressoperationmultiply(_ sender: UIButton) {
//        resultValue = resultValue + currentInput +  "x"
//        currentInput = ""
        let previousvalue =  inputnumber.text ?? ""
        inputnumber.text = previousvalue + "x"
        
    }
    
    @IBAction func pressoperationdivide(_ sender: UIButton) {
//        resultValue = resultValue + currentInput +  "//"
//        currentInput = ""
        let previousvalue =  inputnumber.text ?? ""
        inputnumber.text = previousvalue + "/"
        
    }
    
    @IBAction func pressdot(_ sender: UIButton) {
//        resultValue = resultValue + currentInput +  "."
//        currentInput = ""
        let previousvalue =  inputnumber.text ?? ""
        inputnumber.text = previousvalue + "."

    }
   
}

