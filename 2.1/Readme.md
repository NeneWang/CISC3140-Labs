
# SVN Repository Instructions

## Reference Sheet
|  | Git  | Subversion|
|--|--|-- |
| Documentation | https://git-scm.com/docs | https://svnbook.red-bean.com/ |
| Quickistart | https://www.linuxjournal.com/content/git-quick-start-guide | https://subversion.apache.org/quick-start |
| Creating New Repository | git init | svnadmin create \<repo name> |
| Adding Files | git add \<filename.extension> | svn add \<filename.extension> |
| Commiting Files | git commit -m "\<commit message>"  | svn commit -m "\<commit message>"|
| Pushing Files | git push \<remote> \<branch> | - |
| Pulling Files | git pull \<options> \<repository>  | svn update |
| Cloning Repository | git clone | svn checkout URL[@REV]... [PATH]  e.g `svn checkout file:///var/svn/repos/test_mine` |
| Review Changes | git status |svn diff  |



## Steps
### Create Repository
    svnadmin create Lab2.1
    ls -l Lab2.1/
> nwang cis 4096 Jul 21 11:38 conf
>nwang cis 4096 Jul 21 11:38 db
nwang cis    2 Jul 21 11:38 format
nwang cis 4096 Jul 21 11:38 hooks
nwang cis 4096 Jul 21 11:38 locks
nwang cis  229 Jul 21 11:38 README.txt

    cd Lab2.1/
    pwd
>/users1/st/nwang/Lab2.1

    mkdir working_folders
    svn checkout file:///users1/st/nwang/Lab2.1
    ls

>Lab2.1
cd Lab2.1
touch hello_world.py
nano hello_world.py
>
>(Python):
>> print("Hello World")

`svn add hello_world.py`
>A         hello_world.py

    svn commit -m "hello world | added"

### Making Modifications

    nano hello_world.py

>Python:
>>print("Hello World")
>>print(" I made some modifications")

     svn diff
     svn commit -m "hello world | Modifications"
    
>Sending        hello_world.py
>Transmitting file data .
>Committed revision 2.

## Hystory

      643  svnadmin create Lab2.1
      645  ls -l Lab2.1/
      646  cd Lab2.1/
      647  ls
      648  pwd
      649  ls
      650  cd ..
      651  ls
      652  svn checkout file:///users1/st/nwang/Lab2.1
      653  ls
      654  cd Lab2.1/
      655  ls
      656  cd ..
      657  ls
      658  mkdir working_folders
      660  cd working_folders/
      661  ls
      662  svn checkout file:///users1/st/nwang/Lab2.1
      663  ls
      664  cd Lab2.1/
      665  ls
      666  touch hello_world.py
      667  nano hello_world.py 
      668  svn add hello_world.py 
      669  svn commit -m "hello world | added"
      670  nano hello_world.py 
      672  svn commit -m "hello world | Modifications"
