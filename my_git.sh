
Git必须知道当前版本是哪个版本，在Git中，用HEAD表示当前版本，，上一个版本就是HEAD^，上上一个版本就是HEAD^^，当然往上100个版本写100个^比较容易数不过来，所以写成HEAD~100。

现在，我们要把当前版本A ，回退到上一个版本“B”，就可以使用git reset命令：

$ git reset --hard HEAD^

HEAD is now at ea34578 B

也可以查询版本 ：Git log pretty =oneline

显示出 所有 提交 版本记录，选择 id

执行 git rest --hard id即可。







git clean命令用来从你的工作目录中删除所有没有tracked过的文件

git clean经常和git reset --hard一起结合使用. 记住reset只影响被track过的文件, 所以需要clean来删除没有track过的文件. 结合使用这两个命令能让你的工作目录完全回到一个指定的<commit>的状态

 

用法

git clean -n

是一次clean的演习, 告诉你哪些文件会被删除. 记住他不会真正的删除文件, 只是一个提醒

git clean -f　　

删除当前目录下所有没有track过的文件. 他不会删除.gitignore文件里面指定的文件夹和文件, 不管这些文件有没有被track过

git clean -f <path>

删除指定路径下的没有被track过的文件

git clean -df

删除当前目录下没有被track过的文件和文件夹

git clean -xf

删除当前目录下所有没有track过的文件. 不管他是否是.gitignore文件里面指定的文件夹和文件

 

讨论

git reset --hard和git clean -f是一对好基友. 结合使用他们能让你的工作目录完全回退到最近一次commit的时候

git clean对于刚编译过的项目也非常有用. 如, 他能轻易删除掉编译后生成的.o和.exe等文件. 这个在打包要发布一个release的时候非常有用

 

例子

下面的例子要删除所有工作目录下面的修改, 包括新添加的文件. 假设你已经提交了一些快照了, 而且做了一些新的开发

git reset --hard

git clean -df

运行后, 工作目录和缓存区回到最近一次commit时候一摸一样的状态，git status会告诉你这是一个干净的工作目录, 又是一个新的开始了！

git查看远程仓库地址命令：
git remote -v

git fetch 更新远程代码到本地仓库













































































 MINGW64 ~/Desktop/20180913
