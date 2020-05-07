# shell
shell collection

## 1.绘制golang类图

link <u>*github.com/Pingze-github/go-package-plantuml*</u>

```bash
// 1.download and build plantuml
go get github.com/Pingze-github/go-package-plantuml
go build github.com/Pingze-github/go-package-plantuml 

// 2. install java(path), graphviz 

// 3. download jar package 
将 plantuml.sh L17 中改为plantuml.jar 的地址
```

使用：

sh plantuml.sh  [code dir] [outputdir]

```
sh plantuml ~/go/src/projectname ~/outputdir
```

