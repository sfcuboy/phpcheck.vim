# phpcheck.vim
在vim中进行:w操作时检查php语法，若有语法错误，将禁止保存，并提示出错位置

```bash
echo "let g:PHP_SYNTAX_CHECK_BIN = '{你的php二进制文件路径}'">>~/.vimrc
mkdir -p ~/.vim/plugin
cp phpcheck.vim ~/.vim/plugin/
```
