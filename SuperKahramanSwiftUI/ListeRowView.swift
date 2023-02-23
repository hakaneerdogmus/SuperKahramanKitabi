//
//  ListeRowView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hakan ERDOĞMUŞ on 23.02.2023.
//

import SwiftUI

struct ListeRowView: View {
    var superKahraman : Superkahraman

    var body: some View {
        HStack{
            Image(superKahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .leading)
                .clipShape(Circle())
                
            
            Spacer()
            
            VStack{
                Text(superKahraman.isim)
                    .font(.title)
                    .bold()
                Text(superKahraman.gercekIsim)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superKahraman: superman)
    }
}
