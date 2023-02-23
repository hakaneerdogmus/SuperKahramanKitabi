//
//  DetayView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hakan ERDOĞMUŞ on 21.02.2023.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : Superkahraman
    
    
    var body: some View {
        
        
            VStack{
                MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                    .frame(height: UIScreen.main.bounds.height * 0.3 )
                    .edgesIgnoringSafeArea(.all)
                
                OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                    .frame(width:UIScreen.main.bounds.width * 0.9 , height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .offset(y:UIScreen.main.bounds.height * -0.25)
                    
                
                
                VStack{
                    HStack{
                        Text(secilenKahraman.isim)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        
                        Spacer()
                        
                        Text(secilenKahraman.gercekIsim)
                            .font(.title)
                            .foregroundColor(.orange)
                    }
                    HStack{
                        Text(secilenKahraman.sehir)
                            .bold()
                        
                        Spacer()
                        
                        Text(secilenKahraman.meslek)
                            .bold()
                        
                    }
                    
                }.padding( )
                    .offset(y:UIScreen.main.bounds.height * -0.3)
               
                Spacer()
            
        }
        
       
        
    }
    
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: spiderman)
    }
}

