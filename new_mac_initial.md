# shell
新版本mac都默认是zsh了，只需配置 oh-my-zsh 即可。开启了这几个插件：`vim ~/.zshrc`
```
plugins=(
git
Z
zsh-syntax-highlighting
zsh-autosuggestions
)
```
给shell配置代理，`vim ~/.zprofile`
```
function proxy_on() {
    export http_proxy=http://127.0.0.1:10080
    export https_proxy=$http_proxy
    export all_proxy=socks5://127.0.0.1:10080
    echo -e "终端代理已开启。"
}

function unproxy(){
    unset http_proxy https_proxy all_proxy
    echo -e "终端代理已关闭。"
}
```
# brew
安装 homebrew ，选择清华源
# vscode
配置成shell的code命令启动：`vim~/.zshrc`
```
alias code="/Users/yuanyu/Downloads/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
```
# 代理
除了shell之外，git和npm也可能需要配置。根据报错来处理即可。
# git
## git config
```
url.https://github.com.insteadof=git://github.com
```
在Github添加新电脑的rsa key