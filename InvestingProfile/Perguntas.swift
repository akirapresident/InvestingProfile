import Foundation
import UIKit

class Perguntas{
    internal init(pegunta: String, opcao1:String, opcao2:String, opcao3:String, opcao4:String) {
        self.pegunta = pegunta
        self.opcao1 = opcao1
        self.opcao2 = opcao2
        self.opcao3 = opcao3
        self.opcao4 = opcao4
        
    }
    var pegunta:String
    var opcao1:String
    var opcao2:String
    var opcao3:String
    var opcao4:String
}
