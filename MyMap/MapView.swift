//MapView.swift

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    // 検索キーワード
    let searchKey: String
    // 表示するViewを作成するときに実行
    func makeUIView(context: Context) -> MKMapView {
        // MKMapViewのインスタンス生成
        MKMapView()
    }
    
    // 表示したViewが更新されるたびに実行
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        // 入力された文字をデバッグエリアに表示
        print("検索キーワード:\(searchKey)")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "羽田空港")
    }
}
