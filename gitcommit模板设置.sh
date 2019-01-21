多人协作开发一个项目时，版本控制工具是少不了的，git是linux 内核开发时引入的一个优秀代码管理工具，利用它能很好使团队协作完成一个项目。为了规范团队的代码提交，也方便出版本时的release note，更为了出问题时方便代码回溯，所以大家统一用一个模板提交代码是必要的。Git中设置template非常简单，只需以下几步即可：
1、在根目录建立模板文件
如 xxx_template文件，其内容如下：

OverView：

BUG：

Description：

2、设置模板，命令如下

git config commit.template   [模板文件名]    //这个命令只能设置当前分支的提交模板

git config  — —global commit.template   [模板文件名]    //这个命令能设置全局的提交模板，注意global前面是两杠

例如： git config commit.template   xxx_template

            git config --global commit.template   xxx_template

3、设置文本编辑器，命令如下：

git config --global core.editor  [编辑器名字]

例如：git config --global core.editor vi

4、编辑模板提交代码，命令如下

git  commit

注意：a、git commit之前先要使用  git add  将没有入库的代码入库

          b、可以使用 git  commit  -a 提交多个代码文件

5、在第四步之后，会以设置的编辑器打开模板文件，然后按照格式修改该文件，并保存

6、提交代码到远程分支

git push
