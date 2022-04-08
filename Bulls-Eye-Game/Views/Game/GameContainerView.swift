//
//  GameContainerView.swift
//  Bulls-Eye-Game
//
//  Created by Jacob on 4/8/22.
//

import SwiftUI

struct GameContainerView: View {

    @State private var userBullsEyeSlider = 50.0
    private var givenBullsEyeNumber: Int = 30

    var body: some View {

        VStack {
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("\(givenBullsEyeNumber)")
            }

            HStack {
                Text("1")
                    .frame(width: 40, alignment: .center)
                Slider(value: $userBullsEyeSlider,
                       in: 1...100)
                Text("100")
                    .frame(width: 40, alignment: .center)
            }

            Text("\(Int(floor(userBullsEyeSlider)))")

            Spacer().frame(height: 50)

            Button("Hit Me!", action: didTapHitMeButton)

            Spacer().frame(height: 40)

            HStack {
                Button("Start Over", action: {})

                Spacer()

                HStack {
                    Text("Score:")
                    Text("1")
                }

                Spacer()

                HStack {
                    Text("Round:")
                    Text("1")
                }

                Spacer()

                Button("Info", action: {})
            }
        }
        .padding([.leading, .trailing], 10)
    }

    private func didTapHitMeButton() {
        let userBullsEyeAnswer = Int(floor(userBullsEyeSlider))
        if givenBullsEyeNumber == userBullsEyeAnswer {
            debugPrint("Correct!")
        } else {
            debugPrint("Wrong!")
        }
    }
}

//struct GameContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameContainerView()
//    }
//}
