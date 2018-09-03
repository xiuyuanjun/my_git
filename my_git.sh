
Git必须知道当前版本是哪个版本，在Git中，用HEAD表示当前版本，，上一个版本就是HEAD^，上上一个版本就是HEAD^^，当然往上100个版本写100个^比较容易数不过来，所以写成HEAD~100。

现在，我们要把当前版本A ，回退到上一个版本“B”，就可以使用git reset命令：

$ git reset --hard HEAD^

HEAD is now at ea34578 B

也可以查询版本 ：Git log pretty =oneline

显示出 所有 提交 版本记录，选择 id

执行 git rest --hard id即可。
