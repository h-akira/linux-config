# 設定ファイル
```
cd ~/.config
git init
git remote add origin git@github.com:h-akira/linux-config.git
git pull origin main
# たぶん必要
git submodule update --init --recursive
```

## i3
タイル型ウィンドウマネージャーである．
```
sudo apt install feh
```
- 上下左右の移動はvimに合わせて`h`〜`l`
- 分割方向の変更は`-`と`\`
- ワークスペース感のコンテナの移動時のフォーカス
- `$mod`は`Xmodmap`で`Super`と`Alt`を入れ替えることを前提として`Mod4`に設定
- アプリ起動のショートカットを主に`$mod`+`Ctrl`+`$key`に設定（chromeは`$mod`+`c`）
- その他
  - スクリーンショット: xfce4-screenshooter
  - 画面管理: xrandr
  - 背景: feh

### i3/script
configから呼び出すスクリプトを配置．
- `mount.sh`: 起動時にGoogleDriveをマウント
- `display.sh`: 起動時に画面配置

### i3/desktop
背景画像（ネットから拾ってきたもの）


## i3blocks
以下を参照している．  
https://github.com/vivien/i3blocks-contrib  
https://www.simple-web-system.work/entry/2019/12/10/153217

## xfce4/terminal
タブ移動がのショートカットがi3と被るため，`Ctrl+数字`と`Ctrl+Tab`で移動できるようにした．

## `dot.*`
ホームディレクトリ直下にリンクを貼る．
```
ln -sf dot.hogehoge .hogehoge
```
- `dot.Xmodmap`: キー配置の変更（US配列が前提）
  - xkeysnailで上書きされてしまう模様
