# Image-processing
Image processing test

Image processing with R.<br>
<br>
Image processing is very popular with python, but image processing can be done with R.<br>
At first it is easy preprocessing.<br>
<br>
・Search files<br>
・Resize of image<br>
・Gray scale of the image<br>
<br><br>
Rで画像処理<br>
<br>
pythonで画像処理がめっちゃ流行っていますが、Rでも画像処理ができます。<br>
まずは簡単な前処理<br>
<br>
・画像のファイルの位置を全検索<br>
・画像のリサイズ<br>
・画像のグレースケール化<br>
<br><br>
For example, try to create an illustration-style filter<br>
・Edge detection<br>
・Color reduction processing by k-means<br>
・Superimposition of images by multiplication<br>
<br><br>
例えばイラスト風のフィルタを作ってみる<br>
・エッジ検出<br>
・k-meansによる減色処理<br>
・乗算による画像の重ね合わせ<br>

# 結果
オリジナル画像（筆者がオーストラリアに行ったときの写真）<br>
![original](https://user-images.githubusercontent.com/29366710/58598617-133f0000-82b8-11e9-9516-0eb38bc49303.jpg)<br>
エッジ抽出<br>
![edge](https://user-images.githubusercontent.com/29366710/58598701-5dc07c80-82b8-11e9-99fe-41b56957ebc6.jpg)<br><br>
k-meansとエッジ抽出重ね合わせ（乗算）<br>
k=2<br>
![edge_kmeans2](https://user-images.githubusercontent.com/29366710/58598675-484b5280-82b8-11e9-99e9-fffa1b4ecd69.jpg)<br><br>
k=4<br>
![edge_kmeans4](https://user-images.githubusercontent.com/29366710/58598678-4bded980-82b8-11e9-9c5b-d4a16860c912.jpg)<br><br>
k=8<br>
![edge_kmeans8](https://user-images.githubusercontent.com/29366710/58598682-4ed9ca00-82b8-11e9-8982-60bf6d523225.jpg)<br><br>
k=16<br>
![edge_kmeans16](https://user-images.githubusercontent.com/29366710/58598687-5305e780-82b8-11e9-8b21-c301b66c62ed.jpg)<br>
<br>
# 考察
空などのグラデーションが掛かっているところは特に減色処理が顕著に現れます。<br>
多くのイラストではグラデーションは多用されるので、この点は上手く言っているとは言い難いです。どちらかというと、漫画みたいなフィルタに近いでしょうか。<br>

