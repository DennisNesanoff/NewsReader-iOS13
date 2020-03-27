//
//  DetailView.swift
//  NewsReader-iOS13
//
//  Created by Dennis Nesanoff on 27.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlSrting: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
