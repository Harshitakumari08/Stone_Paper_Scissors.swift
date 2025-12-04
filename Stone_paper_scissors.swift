import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultlabel: UIButton!
    @IBOutlet weak var computerChoicelabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    enum Choice : String {
        case Stone = "✊"
        case Paper = "🖐️"
        case Scissors = "✌️"
    }
    @IBAction func Stone(_ sender: Any) {
        play(userChoice: .Stone)
    }
    @IBAction func Paper(_ sender: Any) {
        play(userChoice: .Paper)
    }
    @IBAction func Scissors(_ sender: Any) {
        play(userChoice: .Scissors)
    }
    func play(userChoice: Choice) {
        let choice: [Choice] = [.Stone, .Paper, .Scissors]
        let computerChoice = choice.randomElement()!
        computerChoicelabel.titleLabel?.text = "Computer: \(computerChoice.rawValue)"
        let result: String
        
        if userChoice == computerChoice {
            result = "Draw 🤝"
        }else if(userChoice == .Stone && computerChoice == .Scissors) ||
                    (userChoice == .Paper && computerChoice == .Stone) ||
                    (userChoice == .Scissors && computerChoice == .Paper){
            result = "You 🏆"
        }else {
            result = "Lose 🥲"
        }
        resultlabel.titleLabel?.text = result
    }
}
