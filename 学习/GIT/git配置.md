# 给github 设置代理

## 如果sock5(SSR)
* git config --global http.https://github.com.proxy socks5://127.0.0.1:2333
* git config --global https.https://github.com.proxy socks5://127.0.0.1:2333

## 如果http/https (自己使用)
* git config --global https.https://github.com.proxy http://127.0.0.1:12333
* git config --global https.https://github.com.proxy https://127.0.0.1:12333

## 取消代理
* git config --global --unset http.proxy
* git config --global --unset http.https://github.com.proxy
* git config --global --unset https.https://github.com.proxy


# git 工具推荐
1. tig 命令行交互式工具
