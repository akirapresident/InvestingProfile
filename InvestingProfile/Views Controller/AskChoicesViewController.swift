import UIKit

class AskChoicesViewController: UIViewController {
    let model = Model.instance
    var number = Model.instance.perguntaAtual
    
    @IBOutlet weak var pergunta: UILabel!
    @IBOutlet weak var botao1: UIButton!
    @IBOutlet weak var botao2: UIButton!
    @IBOutlet weak var botao3: UIButton!
    @IBOutlet weak var perguntaView: UIView!
    
    
    let botoes = [botao1, botao2, botao3]
    
    
    
    
    @IBAction func botao1(_ sender: UIButton) {
        
        model.pontuacao[0] += 1
        number += 1
        if number == (model.perguntas.count) {
            performSegue(withIdentifier: "result", sender: "nil")
            return
        }
        pergunta.text = model.perguntas[number].pergunta
        botao1.setTitle(model.perguntas[number].opcao1, for: .normal)
        botao2.setTitle(model.perguntas[number].opcao2, for: .normal)
        botao3.setTitle(model.perguntas[number].opcao3, for: .normal)
    }
    
    
    @IBAction func botao2(_ sender: UIButton) {
        model.pontuacao[1] += 1
        number += 1
        if number == (model.perguntas.count) {
            performSegue(withIdentifier: "result", sender: "nil")
            return
        }
        pergunta.text = model.perguntas[number].pergunta
        botao1.setTitle(model.perguntas[number].opcao1, for: .normal)
        botao2.setTitle(model.perguntas[number].opcao2, for: .normal)
        botao3.setTitle(model.perguntas[number].opcao3, for: .normal)
        
    }
    @IBAction func botao3(_ sender: Any) {
        model.pontuacao[2] += 1
        number += 1
        if number == (model.perguntas.count) {
            performSegue(withIdentifier: "result", sender: "nil")
            return
        }
        pergunta.text = model.perguntas[number].pergunta
        botao1.setTitle(model.perguntas[number].opcao1, for: .normal)
        botao2.setTitle(model.perguntas[number].opcao2, for: .normal)
        botao3.setTitle(model.perguntas[number].opcao3, for: .normal)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    override func viewWillAppear(_ animated: Bool) {
        let perguntaAtual = model.perguntas[model.perguntaAtual]
        
        pergunta.text = perguntaAtual.pergunta
        botao1.setTitle(perguntaAtual.opcao1, for: .normal)
        botao2.setTitle(perguntaAtual.opcao2, for: .normal)
        botao3.setTitle(perguntaAtual.opcao3, for: .normal)
        
        botao1.clipsToBounds = true
        botao2.clipsToBounds = true
        botao3.clipsToBounds = true
        
        
        botao1.titleLabel?.textAlignment = NSTextAlignment.center
        botao2.titleLabel?.textAlignment = NSTextAlignment.center
        botao3.titleLabel?.textAlignment = NSTextAlignment.center
        
        botao1.backgroundColor = .clear
        botao1.layer.cornerRadius = 25
        botao1.layer.borderWidth = 2
        botao1.layer.borderColor = UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ).cgColor
        botao1.setTitleColor(UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ), for: .normal)
        
        botao2.backgroundColor = .clear
        botao2.layer.cornerRadius = 25
        botao2.layer.borderWidth = 2
        botao2.layer.borderColor = UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ).cgColor
        botao2.setTitleColor(UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ), for: .normal)
        
        botao3.backgroundColor = .clear
        botao3.layer.cornerRadius = 25
        botao3.layer.borderWidth = 2
        botao3.layer.borderColor = UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ).cgColor
        botao3.setTitleColor(UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ), for: .normal)
        
       
        perguntaView.layer.cornerRadius = 30
        perguntaView.layer.borderWidth = 1
        perguntaView.layer.borderColor = UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ).cgColor
        
        
    }
}
