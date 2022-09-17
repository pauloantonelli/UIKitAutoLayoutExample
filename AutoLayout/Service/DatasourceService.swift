//
//  DatasourceService.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 17/09/22.
//

import Foundation

struct DatasourceService {
    let swipeCellModelList: Array<SwipeCellModel> = [
        SwipeCellModel(
            iconName: "pet-paw",
            title: "Aplicativo para localizar seu pet!",
            description: """
            Tecnologia de aproximação
            para proteger e localizar facilmente o seu pet fujão
        """),
        SwipeCellModel(
            iconName: "cat-dog-1",
            title: "Se inscreva e ganhe cupons nos nossos eventos diários",
            description: """
            Seja notificado de promoções imediatamente quando
            nós anunciarmos na plataforma. Tenha certeza
            também de nós dar seu feedback sobre nossos serviços.
        """),
        SwipeCellModel(
            iconName: "cat-dog-2",
            title: "Serviços especiais para membros VIP",
            description: """
            Entrando no clube privado dos consumidores de ELITE levará você a selecionados sorteios e promoções.
        """),
        SwipeCellModel(
            iconName: "dog",
            title: "Vamos lá",
            description: """
            Seja bem vindo ao aplicativo definitivo para seu PET ;)
        """),
    ]
}
