//
//  GameContainerViewModel.swift
//  Bulls-Eye-Game
//
//  Created by Jacob on 4/8/22.
//

import Foundation

protocol GameContainerViewModelInputs {

}

protocol GameContainerViewModelOutputs {

}

protocol GameContainerViewModelTypes {
    var inputs: GameContainerViewModelInputs { get }
    var outputs: GameContainerViewModelOutputs { get }
}

class GameContainerViewModel:
    ObservableObject,
    GameContainerViewModelTypes,
    GameContainerViewModelInputs,
    GameContainerViewModelOutputs {

    init() {

    }

    deinit { debugPrint("Deinitializing: \(String(describing: self))") }

    var inputs: GameContainerViewModelInputs { self }
    var outputs: GameContainerViewModelOutputs { self }
}
