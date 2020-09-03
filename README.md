未知しるべiOS班の開発合宿
# michisirube_camp_iOS
ゆかりがんばれ！！！！！！  
当たって砕けろ！！！！！  
分量多くてすまん！！！！

## ブランチの切り方
- gitフロー
  - https://qiita.com/KosukeSone/items/514dd24828b485c69a05
  - masterブランチ、developブラントにはpushしない！！
  - 原則として、developからfeatureブランチを切る
  - とりあえず、masterブランチ、developブランチ、featureブランチは覚えてほしい
  - 余裕があれば、俺がプルリクレビューするよー

## 開発で気をつけること
1. アーキテクチャはMVP(Model View Presenter)
    - [【Swift】MVCから脱却したいのでMVPの勉強をした](https://qiita.com/hicka04/items/25be38a90fdde29c97c2)
1. APIの仕様を調べよう
1. Postmanを使いながら、サーバからのレスポンスを確認する
1. 1storyboardに１ViewController(鉄則)
1. storyboardとViewControllerを紐付け(これ忘れるとViewが表示されない)
1. APIはModelで叩くといいよ(人によってはPresenterでやることも)
1. ModelとPresenterでは import UIKit 禁止(Viewを管理するのはViewControllerだけ)
1. まあ、分からんことあったら調べてね
1. ViewControllerにベタがきはやめよう(ファイル分け)
1. pushした後はプルリクを出す
1. Xcode上でグループを作ると見やすい
1. デバッグには、print文とかブレイクポイントを使うといいよ
1. ブレイクポイントに関しては、「あれ？このメソッド呼ばれてなくね？？」とか「この行のこのコード実行されてなくね？？」とか思った時に使うといいよ(ブレイクポイントつけた箇所が呼ばれるとビルド時にその箇所でプログラムが止まる)
1. デフォルトのViewControllerとMain.storyboardは消して、自分で新たに作り直して開発するのが定石(開発チームによっては、Main.storyboardは残すこともある)
   - [StoryboardsをiOS13以上のプロジェクトから削除する](https://swiswiswift.com/2019-12-29/)

## 開発の流れ
1. プロジェクトを作って、[CocoaPods](https://qiita.com/ShinokiRyosei/items/3090290cb72434852460)を導入する(xcodeprojではなくて、workspaceで作業をする)
1. まず、UIを構成する(storyboardでもコードでもおk)
1. View、Presenter、Modelのグループを作る
1. storyboardとViewControllerを紐付け
1. MapKitをインポートして地図を表示する
1. [Alamofire](https://github.com/Alamofire/Alamofire)を使ってAPIを叩き、レンポンスをコンソールに表示する(URLSettionでもいいけど、めんどいよ)
1. Modelの中のAF.requestメソッド内でjsonを解析する
1. Modelの情報をPresenterにぶん投げる
1. Presenterでは、Viewが扱いやすいように情報を整形する(Modelから情報が取れているか確かめたり、キャストしたり)
1. Viewでは、Presenterから貰った情報をそのまま表示する(Labelに反映するとか、TableViewに反映するとか)

## Alamofireはこうやって使うといいよ
- キーワード(この辺はむずい)
    - 非同期
    - クロージャ
    - ハンドラ
```
AF.request(requestURL, method: .get, encoding: JSONEncoding.default).response { response in
// この中にコード書く
}
```
