
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

Git 查询某次历史提交的修改内容
我们首先可以git log显示历史的提交列表：
之后我们用git show <commit-hashId> 便可以显示某次提交的修改内容
同样 git show <commit-hashId> filename 可以显示某次提交的某个内容的修改信息。


删除本地分支
命令行 : $ git branch -d <BranchName>

删除远程分支
命令行 : $ git push origin --delete <BranchName>


查看远程仓库
如果想查看你已经配置的远程仓库服务器，可以运行 git remote 命令。 它会列出你指定的每一个远程服务器的简写。 如果你已经克隆了自己的仓库，那么至少应该能看到 origin - 这是 Git 给你克隆的仓库服务器的默认名字：

$ git clone https://github.com/schacon/ticgit
Cloning into 'ticgit'...
remote: Reusing existing pack: 1857, done.
remote: Total 1857 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (1857/1857), 374.35 KiB | 268.00 KiB/s, done.
Resolving deltas: 100% (772/772), done.
Checking connectivity... done.
$ cd ticgit
$ git remote
origin
你也可以指定选项 -v，会显示需要读写远程仓库使用的 Git 保存的简写与其对应的 URL。

$ git remote -v
origin	https://github.com/schacon/ticgit (fetch)
origin	https://github.com/schacon/ticgit (push)
如果你的远程仓库不止一个，该命令会将它们全部列出。 例如，与几个协作者合作的，拥有多个远程仓库的仓库看起来像下面这样：

项目初始，为了实现不同的功能，不同人员处理不同的功能，所以在git上创建了很多分支（branch）。对于git菜鸟，只会add branch 或者Git commit, 不会删除git分支也是一个烦恼。

直接上代码：

删除本地分支：git branch -d 分支名称

强制删除本地分支：git branch -D 分支名称

删除远程分支：git push origin --delete 分支名称

git branch -d developbranch
 
git branch -D developbranch
 
git push origin --delete developbranch
注意：删除分支就不可以撤销。删除分支前需要慎重。



