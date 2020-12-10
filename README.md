# auto-proxy-setter

# 概要

プロキシの設定と解除を自動化します。
学校-自宅で設定をいちいち手動で毎回変えるのはめんどくさいので書きました。

# 使い方

1.このリポジトリをcloneします

```
git clone https://github.com/yuina-blend/auto-proxy-setter
```

2. proxy_set.shに各種設定を記述します

```
HTTP_PROXY="http://hoge.jp"
HTTPS_PROXY="https://hoge.jp"
wireless_network_interface_name="wlan0"
SSID="huge"
```

`HTTP_PROXY`と`HTTPS_PROXY`にはそれぞれプロキシサーバを記述

`wireless_network_interface_name`には無線LANインターフェース名を記述(`iwconfig`コマンドで確認できます)

`SSID`にはプロキシ設定を行う際に接続するSSIDを記述

3. ~/.bashrcを編集します

```
source 任意の場所/auto-proxy-setter/proxy_set.sh
```

をファイル内に追記して下さい。

# 設定内容の変更

デフォルトでは`http_proxy` `https_proxy`の環境変数の設定、`git`のプロキシ設定、`apt`のプロキシ設定を行います。

プロキシ設定/解除の動作を変更する場合は`proxy_set.sh`を編集して下さい。
