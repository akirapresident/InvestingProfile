import Foundation
import UIKit

class Perguntas{
    internal init(pergunta: String, opcao1:String, opcao2:String, opcao3:String, opcao4:String, opcao5:String, opcao6:String, opcao7:String, numOpc: Int) {
        self.pergunta = pergunta
        self.opcao1 = opcao1
        self.opcao2 = opcao2
        self.opcao3 = opcao3
        self.opcao4 = opcao4
        self.opcao5 = opcao5
        self.opcao6 = opcao6
        self.opcao7 = opcao7
        self.numOpc = numOpc
        
    }
    var pergunta:String
    var opcao1:String
    var opcao2:String
    var opcao3:String
    var opcao4:String
    var opcao5:String
    var opcao6:String
    var opcao7:String
    var numOpc: Int
}
