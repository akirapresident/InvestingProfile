import Foundation
import UIKit

class Model{
    static let instance = Model()
    
    var perguntaAtual: Int = 0
    var pontuacao: [Int] = [0,0,0]
    
    let perfil = [
        Investidor(type: "Conservador"),
        Investidor(type: "Moderado"),
        Investidor(type: "Agressivo"),
    ]
    let perguntas = [
        Perguntas(pergunta: "Por quanto tempo você pretende deixar seu dinheiro investido?",
                  opcao1: "Menos de 6 meses",
                  opcao2: "Entre 6 meses e 1 ano",
                  opcao3: "Entre 1 ano e 3 anos",
                  opcao4: "Acima de 3 anos",
                  opcao5: "",
                  opcao6: "",
                  
                  opcao7: ""),
        
        Perguntas(pergunta: "Qual o objetivo desse investimento?",
                  opcao1: "Preservação do capital para não perder valor ao longo do tempo, assumindo baixos riscos de perdas",
                  opcao2: "Aumento gradual do capital ao longo do tempo, assumindo riscos moderados",
                  opcao3: "Aumento do capital acima da taxa de retorno média do mercado, mesmo que isso implique assumir riscos de perdas elevadas",
                  opcao4: "Obter no curto prazo retornos elevados e significativamente acima da taxa de retorno média do mercado, assumindo riscos elevados",
                  opcao5: "",
                  opcao6: "",
                  opcao7: ""),
        
        Perguntas(pergunta: "Qual das alternativas melhor classifica sua formação e experiência com o mercado financeiro?",
                  opcao1: "Qual das alternativas melhor classifica sua formação e experiência com o mercado financeiro?",
                  opcao2: "Possuo formação acadêmica na área financeira, mas não tenho experiência com o mercado financeiro",
                  opcao3: "Possuo formação acadêmica em outra área, mas possuo conhecimento do mercado financeiro",
                  opcao4: "Possuo formação acadêmica na área financeira ou pleno conhecimento do mercado financeiro",
                  opcao5: "",
                  opcao6: "",
                  opcao7: ""),
        //3 opcoes
        Perguntas(pergunta: "Considerando seus rendimentos regulares, qual a porcentagem você pretende reservar para aplicações financeiras?",
                  opcao1: "No máximo 25%",
                  opcao2: "Entre 25,01 e 50%",
                  opcao3: "Acima de 50%",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: ""),
        
        Perguntas(pergunta: "",
                  opcao1: "",
                  opcao2: "",
                  opcao3: "",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: ""),
        Perguntas(pergunta: "",
                  opcao1: "",
                  opcao2: "",
                  opcao3: "",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: ""),
        Perguntas(pergunta: "",
                  opcao1: "",
                  opcao2: "",
                  opcao3: "",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: ""),
        
    ]
    
    private init() {
        
    }
}
