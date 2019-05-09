import UIKit

class FinalResultViewController: UIViewController {
    
    var perfil = Model.instance.pontuacao

    @IBOutlet weak var profileType: UILabel!
    @IBOutlet weak var typeInfo: UITextView!
    @IBAction func Restart(_ sender: Any) {
        Model.instance.pontuacao = [0,0,0]
    }
    
    
    override func viewDidLoad() {
        
        if perfil[0] > perfil[1] && perfil[0] > perfil[2] {
            profileType.text = "Conservador"
            typeInfo.text = "Entre os perfis de investidores, um dos que mais se destacam é dos conservadores, ou seja, aqueles que não estão dispostos a correr muitos riscos e preferem a segurança a uma maior rentabilidade. O conservador também prefere uma maior liquidez em seus investimentos, ou seja, um resgate mais rápido, com poucas perdas. \nPor esse motivo, ele prioriza a renda fixa, investindo pouco em renda variável. A renda fixa, representada pelos títulos do Tesouro Direto, CDBs, LCIs, LCAs, debêntures e outros investimentos, apresentam retornos mais previsíveis. Mesmo assim, ele pode investir uma pequena parcela de seu capital em ações ou fundos de ações."
            
        }
        else if perfil[1] > perfil[0] && perfil[1] > perfil[2] {
            profileType.text = "Moderado"
            typeInfo.text = "Esse é o tipo de perfil meio-termo entre o perfil conservador e o arrojado. Trata-se do investidor que está disposto a se arriscar um pouco mais, a ir além do conservador no que se refere a maior rentabilidade.\nAssim, o investidor moderado assume correr riscos maiores para receber melhores rendimentos, mas sem exagerar. Ele consegue dividir sua carteira de investimentos, optando por renda fixa e variável, ainda que a primeira prevaleça sobre a segunda.\nApesar de ousar correr riscos maiores, se tiver que optar entre riscos muito elevados e rendimentos mais comedidos, mas garantidos, ele optará certamente pela última opção."
            
            
            
        }
        else if perfil[2] > perfil[0] && perfil[2] > perfil[1] {
            profileType.text = "Agressivo"
            typeInfo.text = "Trata-se de um perfil mais avançado no que refere a correr riscos e perdas, principalmente em médio e em longo prazo. O investidor arrojado entende que o nível de rentabilidade está muito associado ao nível de risco e, por esse motivo, está disposto a sofrer riscos mais altos se eles prometerem rendimentos mais fartos.\nVisando objetivos de longo prazo, o investidor arrojado mantém sua carteira de investimentos sujeita à volatilidade enquanto o capital estiver em fase de acumulação (período de duração do investimento).\nApesar de se dispor a sofrer riscos, o investidor arrojado faz tudo de forma calculada, evitando investir sem fazer projeções. Ele arrisca, mas com bom senso, visando ganhos maiores e não prejuízos desnecessários."
        }
        else{
            profileType.text = "NOT READY 4 U"
            typeInfo.text = "NOT READY 4 U"
            
        }
        super.viewDidLoad()
    }
}
