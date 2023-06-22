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
        
        // CLGeocoderインスタンスを生成
        let geocoder = CLGeocoder()
        
        // 入力された文字から位置情報を取得
        geocoder.geocodeAddressString(
            searchKey,
            completionHandler: {(placemarks, error) in
                // リクエストの結果が存在し、1件目の情報から位置情報を取り出す
                if let placemarks,
                   let firstPlacemark = placemarks.first,
                   let location = firstPlacemark.location {
                    
                    // 位置情報から緯度経度をtargetCoordinateに取り出す
                    let targetCoordinate = location.coordinate
                    
                    // 緯度経度をデバッグエリアに表示
                    print("緯度経度：\(targetCoordinate)")
                }
            }
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "羽田空港")
    }
}
