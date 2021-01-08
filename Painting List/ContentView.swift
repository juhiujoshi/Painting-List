//
//  ContentView.swift
//  Painting List
//
//  Created by New User1 on 1/7/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var paintingStore = PaintingStore()
    
    @State var searchString : String = ""
    
    var searchBar : some View {
        HStack{
            TextField("Search Paintings", text: self.$searchString)
            Button(action: self.filter, label: {
                Text("Search")
            })
            
        }
    }
    
    func filter() {
        for (index, painting) in self.paintingStore.paintings.enumerated().reversed(){
           
            if (!painting.painter.contains(searchString)
            && !painting.paintingGenre.contains(searchString)
            && !painting.paintingMedium.contains(searchString))
            {
                self.paintingStore.paintings.remove(at: index)
            }
        }
    }
    
    var body: some View {
        //         VStack {
    NavigationView{
        
        VStack{
        
        searchBar.padding()
            
        List(self.paintingStore.paintings) {
            painting in
            VStack
            {Image(painting.paintingImg)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text(painting.painter).fontWeight(.bold)
            Text(painting.paintingGenre)
            Text(painting.paintingMedium)
            }
       }.navigationBarTitle("Paintings") //end of List
     }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
