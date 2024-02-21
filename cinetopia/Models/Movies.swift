//
//  Movies.swift
//  cinetopia
//
//  Created by João Alexandre Bitar on 11/01/24.
//

import Foundation

struct Movie {
    let id: Int
    let title: String
    let image: String
    let synopsis: String
    let rate: Double
    let realaseDate: String
}

let movies: [Movie] = [
    Movie(id: 1, title: "A Origem", image: "a_origem", synopsis: "Em um mundo onde é possível entrar na mente humana, Cobb (Leonardo DiCaprio) está entre os melhores na arte de roubar segredos valiosos do inconsciente, durante o estado de sono. Além disto ele é um fugitivo, pois está impedido de retornar aos Estados Unidos devido à morte de Mal (Marion Cotillard). Desesperado para rever seus filhos, Cobb aceita a ousada missão proposta por Saito (Ken Watanabe), um empresário japonês: entrar na mente de Richard Fischer (Cillian Murphy), o herdeiro de um império econômico, e plantar a ideia de desmembrá-lo. Para realizar este feito ele conta com a ajuda do parceiro Arthur (Joseph Gordon-Levitt), a inexperiente arquiteta de sonhos Ariadne (Ellen Page) e Eames (Tom Hardy), que consegue se disfarçar de forma precisa no mundo dos sonhos.", rate: 8.8, realaseDate: "10/07/2010"),
    Movie(id: 2, title: "Interestelar", image: "interestelar", synopsis: "Após ver a Terra consumindo boa parte de suas reservas naturais, um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper (Matthew McConaughey) é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand (Anne Hathaway), Jenkins (Marlon Sanders) e Doyle (Wes Bentley), ele seguirá em busca de uma nova casa. Com o passar dos anos, sua filha Murph (Mackenzie Foy e Jessica Chastain) investirá numa própria jornada para também tentar salvar a população do planeta.", rate: 8.6, realaseDate: "25/04/2014"),
    Movie(id: 3, title: "A Chegada", image: "a_chegada", synopsis: "Quando seres interplanetários deixam marcas na Terra, a Dra. Louise Banks (Amy Adams), uma linguista especialista no assunto, é procurada por militares para traduzir os sinais e desvendar se os alienígenas representam uma ameaça ou não. No entanto, a resposta para todas as perguntas e mistérios pode ameaçar a vida de Louise e a existência de toda a humanidade.", rate: 7.9, realaseDate: "27/06/2016"),
    
    Movie(id: 4, title: "Oppenheimer", image: "oppenheimer", synopsis: "Uma dramatização da história de vida de J. Robert Oppenheimer, o físico que teve uma grande mão no desenvolvimento da bomba atômica, ajudando assim a acabar com a Segunda Guerra Mundial. Vemos sua vida desde os dias de universidade até o pós-WW2, onde sua fama o viu envolvido em maquinações políticas", rate: 9.3, realaseDate: "21/07/2023")
]
