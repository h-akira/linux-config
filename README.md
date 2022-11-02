# 設定ファイル
Linux MintのXfceエディションで使用している`config`．  
導入の一例:
```
cd ~/.config
git init
git remote add origin git@github.com:h-akira/linux-config.git
git pull origin main
# たぶん必要
git submodule update --init --recursive
```

## config-add(submodule)
非公開の追加ファイル．自分はシンボリックリンクを貼って利用するが，無くても差し支えない．

## i3
タイル型ウィンドウマネージャーである．
```
sudo apt install i3
sudo apt install i3blocks
sudo apt install feh
pip3 install pandas-datareade
```
その後再起動して選択．  
メモ:
- 上下左右の移動はvimに合わせて`h`〜`l`
- 分割方向の変更は`-`と`\`
- ワークスペース間のコンテナの移動時のフォーカス
- `$mod`は~~XmodmapでSuperとAltを入れ替えることを前提としてMod1~~`Mod4`に設定
  - Macへの[yabaiとskhd](https://github.com/h-akira/mac-config)導入およびlinuxへの[xkeysnail](https://github.com/h-akira/xkeysnail)導入に伴い，ショートカットキー統一のため入れ替えを廃止（2022年10月24日）
- アプリ起動のショートカットを主に`$mod`+`Ctrl`+`$key`に設定（chromeは`$mod`+`c`）
- 動作に必要なアプリ（必要に応じて`sudo apt install hogehoge`）
  - スクリーンショット: xfce4-screenshooter
  - 画面管理: xrandr
  - 背景: feh
  - i3bar: i3blocks

### i3/add.sh
存在すれば起動時に実行されるシェルスクリプト．

### i3/script
configから呼び出すスクリプトを配置．
- `display.sh`: デュアルディスプレイの配置

### i3/desktop
背景画像（ネットから拾ってきたもの）

## i3blocks
以下を参照してカスタマイズしている．  
https://github.com/vivien/i3blocks-contrib

## xfce4/terminal
タブ移動がのショートカットがi3と被るため，`Ctrl+数字`と`Ctrl+Tab`で移動できるようにした．
- altキーが空いたことでで被らなくなったが，`iterm`や`Chrome`に合わせるため存続（2022年10月24日）

## `dot.*`
ホームディレクトリ直下にリンクを貼る．
```
ln -sf dot.hogehoge .hogehoge
```
- `dot.Xmodmap`: キー配置の変更（US配列が前提）→廃止（2022年10月24日）
  - [xkeysnail](https://github.com/h-akira/xkeysnail)に完全移行
