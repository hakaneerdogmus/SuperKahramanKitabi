//
//  OzelGorselView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hakan ERDOĞMUŞ on 21.02.2023.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color.white, lineWidth: 3)
            }
            .shadow(radius: 15)
            
    }
}

struct OzelGorselView_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselView(image: Image("batman"))
    }
}
