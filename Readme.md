
# SVN Repository Instructions

## Steps
### Create Repository
    enter svnadmin create Lab2.1
    ls -l Lab2.1/
> nwang cis 4096 Jul 21 11:38 conf
>nwang cis 4096 Jul 21 11:38 db
nwang cis    2 Jul 21 11:38 format
nwang cis 4096 Jul 21 11:38 hooks
nwang cis 4096 Jul 21 11:38 locks
nwang cis  229 Jul 21 11:38 README.txt

    cd Lab2.1/
    pwdcode here
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
Make Changtes
>Python:
>>print("Hello World")
>>print(" I made some modifications")

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
