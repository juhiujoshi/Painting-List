//
//  Paintings.swift
//  Painting List
//
//  Created by New User1 on 1/8/21.
//

import Foundation
import SwiftUI
import Combine

struct Painting : Identifiable {
    var id = String()
    var painter = String()
    var paintingMedium = String()
    var paintingGenre = String()
    var paintingImg = String()
}

class PaintingStore : ObservableObject {
    @Published var paintings = [Painting]()
    
    init(){
    paintings.append(
        Painting(
            id: "1",
            painter: "Bernard",
            paintingMedium: "Oil",
            paintingGenre: "Landscape",
            paintingImg: "Bernard 1 Landscape"
        )
    )
    paintings.append(
        Painting(
                id: "2",
                painter: "Bernard",
                paintingMedium: "Water color",
                paintingGenre: "Landscape",
                paintingImg: "Bernard 2 Landscape"
        )
      )
        paintings.append(
            Painting(
                id: "3",
                painter: "Christian Angué",
                paintingMedium: "Oil",
                paintingGenre: "Impressionism",
                paintingImg: "Christian Angué 2 Impressionism"
            )
        )
        paintings.append(
            Painting(
                    id: "4",
                    painter: "Christian Angué",
                    paintingMedium: "Oil",
                    paintingGenre: "Landscape",
                    paintingImg: "Christian Angué 3 Landscape"
            )
          )
        paintings.append(
            Painting(
                id: "5",
                painter: "Christian Angué",
                paintingMedium: "Oil",
                paintingGenre: "Impressionism",
                paintingImg: "Christian Angué Impressionism"
            )
        )
        paintings.append(
            Painting(
                    id: "6",
                    painter: "Paul Meldahl",
                    paintingMedium: "Oil",
                    paintingGenre: "Still Life",
                    paintingImg: "Paul Meldahl Oil1 Still Life"
            )
          )
        paintings.append(
            Painting(
                id: "7",
                painter: "Paul Meldahl",
                paintingMedium: "Oil",
                paintingGenre: "Still Life",
                paintingImg: "Paul Meldahl Oil2 Still Life"
            )
        )
        paintings.append(
            Painting(
                    id: "8",
                    painter: "Robert Henri",
                    paintingMedium: "Oil",
                    paintingGenre: "Portrait",
                    paintingImg: "Robert Henri 1 Portrait"
            )
          )
    }

}
