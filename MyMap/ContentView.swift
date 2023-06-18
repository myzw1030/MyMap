//ContentView.swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 垂直にレイアウト
        VStack {
            // マップを表示
            MapView(searchKey: "羽田空港")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
