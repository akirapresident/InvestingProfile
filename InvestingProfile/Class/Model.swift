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
        Perguntas(pergunta: "Qual é sua idade?",
                  opcao1: "Até 25 anos",
                  opcao2: "De 26 e 50 anos",
                  opcao3: "Acima de 50 anos",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: "",
                  numOpc: 3),
        
        Perguntas(pergunta: "Qual é o valor aproximado dos seus investimentos financeiros atualmente?",
                  opcao1: "0 a 100 mil",
                  opcao2: "100mil a 500 mil",
                  opcao3: "Acima de 500 mil",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: "",
                  numOpc: 3),
        
        Perguntas(pergunta: "Como você avalia seu conhecimento sobre investimentos?",
                  opcao1: "Não tenho conhecimento",
                  opcao2: "Bom",
                  opcao3: "Excelente",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: "",
                  numOpc: 3),
        
        Perguntas(pergunta: "Por quanto tempo você pretende deixar seu dinheiro investido?",
                  opcao1: "Menos de 1 ano",
                  opcao2: "Entre 1 ano e 3 anos",
                  opcao3: "Acima de 3 anos",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  
                  opcao7: "",
                  numOpc: 4),
        
        Perguntas(pergunta: "Oque você deseja fazer com o dinheiro investido?",
        opcao1: "Comprar uma imóvel nos próximos 5 anos",
        opcao2: "Guardar dinheiro e usar em algo ainda não planejado",
        opcao3: "Aposentadoria tranquila nos próximos 10, 20 anos",
        opcao4: "",
        opcao5: "",
        opcao6: "",
        
        opcao7: "",
        numOpc: 4),
        
        Perguntas(pergunta: "O que você faria se suas ações caíssem 20%?",
                  opcao1: "Venderia todas as minhas ações",
                  opcao2: "Venderia uma parte de minhas ações",
                  opcao3: "Compraria mais ações",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  
                  opcao7: "",
                  numOpc: 4),
        //2
        
        Perguntas(pergunta: "Considerando seus rendimentos regulares, qual a porcentagem você pretende reservar para aplicações financeiras?",
                  opcao1: "No máximo 25%",
                  opcao2: "Entre 25 e 50%",
                  opcao3: "Acima de 50%",
                  opcao4: "",
                  opcao5: "",
                  opcao6: "",
                  opcao7: "",
                  numOpc: 3),
    ]
    
    private init() {
    }
}
