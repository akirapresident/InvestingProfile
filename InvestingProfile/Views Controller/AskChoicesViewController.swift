import UIKit

class AskChoicesViewController: UIViewController {
    let model = Model.instance
    var number = Model.instance.perguntaAtual
    
    @IBOutlet weak var pergunta: UILabel!
    @IBOutlet weak var botao1: UIButton!
    @IBOutlet weak var botao2: UIButton!
    @IBOutlet weak var botao3: UIButton!
    
    let botoes = [botao1, botao2, botao3]
    
    
    
    
    @IBAction func botao1(_ sender: UIButton) {
        
        model.pontuacao[0] += 1
        number += 1
        if number == (model.perguntas.count) {
            performSegue(withIdentifier: "pintaria", sender: "nil")
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
            performSegue(withIdentifier: "pintaria", sender: "nil")
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
            performSegue(withIdentifier: "pintaria", sender: "nil")
            return
        }
        pergunta.text = model.perguntas[number].pergunta
        botao1.setTitle(model.perguntas[number].opcao1, for: .normal)
        botao2.setTitle(model.perguntas[number].opcao2, for: .normal)
        botao3.setTitle(model.perguntas[number].opcao3, for: .normal)
        
    }
   
    @IBAction func chamarViewController() {
    let storyBoard = UIStoryboard(name: "FinalResultViewController", bundle: nil)
        let novoViewController = storyBoard.instantiateViewController(withIdentifier: "ViewViaCodigo")
        self.present(novoViewController, animated: true, completion: nil)
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
        
        botao1.layer.cornerRadius = 12
        botao2.layer.cornerRadius = 12
        botao3.layer.cornerRadius = 12
    }
}
