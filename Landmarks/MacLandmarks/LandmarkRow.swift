//
//  LandmarkRow.swift
//  MacLandmarks
//
//  Created by Anthony Da Cruz on 09/06/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack(alignment: .center) {
            landmark.image
            .resizable()
                .aspectRatio(1.0, contentMode: .fit)
            .frame(width: 32, height: 32)
            .fixedSize(horizontal: true, vertical: true)
                .cornerRadius(4.0)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .fontWeight(.bold)
                    .truncationMode(.tail)
                .frame(minWidth: 20)
                
                
                Text(landmark.park)
                    .opacity(0.625)
                    .truncationMode(.middle)
                    .font(.caption)
            }
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.yellow)
                .frame(width: 10, height: 10)
            }
        }
        .padding(.vertical, 4)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
