//ContentView.swift

import SwiftUI

struct ContentView: View {
    
    // 入力中の文字列を保持する状態変数
    @State var inputText:  String = ""
    // 検索キーワードを保持する状態変数
    @State var displaySearchKey: String = ""
    
    var body: some View {
        // テキストフィールド（文字入力）
        TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
        // 入力が完了された時
            .onSubmit {
                //　入力が完了したので検索キーワードに設定する
                displaySearchKey  = inputText
            }
            .padding()
        // 垂直にレイアウト
        VStack {
            // マップを表示
            MapView(searchKey: displaySearchKey)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
