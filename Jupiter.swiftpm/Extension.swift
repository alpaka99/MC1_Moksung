//
//  Extension.swift
//  Jupiter
//
//  Created by 한지석 on 2023/03/28.
//

import SwiftUI

extension Color {
    static var backgroundColor: Color {
        return Color(uiColor: UIColor(red: 41/255, green: 41/255, blue: 41/255, alpha: 1.0))
        /* #292929 */
    }
}

extension Rectangle {
    func textField(_ text: String) -> some View {
        self
            .foregroundColor(.white)
            .frame(height: 300)
            .padding(.bottom, 90)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .overlay(alignment: .center) {
                Rectangle()
                    .border(.black)
                    .padding(.bottom, 100)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .padding(.top, 10)
                    .foregroundColor(.white)
                    .overlay(alignment: .center) {
                        Text(text)
                            .font(.system(size: 40))
                            .lineLimit(nil)
                            .padding(.bottom, 100)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                            .padding(.top, 10)
            }
        }
    }
}
