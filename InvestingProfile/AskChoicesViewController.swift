import UIKit

class AskChoicesViewController: UIViewController {
    let model = Model.instance
    var number = Model.instance.perguntaAtual
    
    @IBOutlet weak var pergunta: UILabel!
    @IBOutlet weak var botao1: UIButton!
    @IBOutlet weak var botao2: UIButton!
    @IBOutlet weak var botao3: UIButton!
    @IBOutlet weak var botao4: UIButton!
    @IBOutlet weak var botao5: UIButton!
    @IBOutlet weak var botao6: UIButton!
    @IBOutlet weak var botao7: UIButton!
    
    
    
    @IBAction func botao1(_ sender: UIButton) {
        
        model.pontuacao[0] += 1
        number += 1
        pergunta.text = model.perguntas[number].pergunta
        pergunta.text = model.perguntas[number].pergunta
        botao1.setTitle(model.perguntas[number].opcao1, for: .normal)
        botao2.setTitle(model.perguntas[number].opcao2, for: .normal)
        botao3.setTitle(model.perguntas[number].opcao3, for: .normal)
        print(Model.instance.pontuacao)
    }
    @IBAction func botao2(_ sender: UIButton) {
        model.pontuacao[1] += 1
        number += 1
        pergunta.text = model.perguntas[number].pergunta
        botao1.setTitle(model.perguntas[number].opcao1, for: .normal)
        botao2.setTitle(model.perguntas[number].opcao2, for: .normal)
        botao3.setTitle(model.perguntas[number].opcao3, for: .normal)
        print(Model.instance.pontuacao)
    }
    
    @IBAction func botao3(_ sender: Any) {
        model.pontuacao[2] += 1
        number += 1
        pergunta.text = model.perguntas[number].pergunta
        botao1.setTitle(model.perguntas[number].opcao1, for: .normal)
        botao2.setTitle(model.perguntas[number].opcao2, for: .normal)
        botao3.setTitle(model.perguntas[number].opcao3, for: .normal)
        
        print(Model.instance.pontuacao)
    }
    @IBAction func botao4(_ sender: Any) {
    }
    @IBAction func botao5(_ sender: Any) {
    }
    
    @IBAction func botao6(_ sender: Any) {
    }
    
    @IBAction func botao7(_ sender: UIButton) {
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
        botao4.setTitle(perguntaAtual.opcao4, for: .normal)
        botao5.setTitle(perguntaAtual.opcao5, for: .normal)
        botao6.setTitle(perguntaAtual.opcao6, for: .normal)
        botao7.setTitle(perguntaAtual.opcao7, for: .normal)
    }

    

}
