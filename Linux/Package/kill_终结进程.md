inux中的kill命令用来终止指定的进程（terminate a process）的运行，是Linux下进程管理的常用命令。通常，终止一个前台进程可以使用Ctrl+C键，但是，对于一个后台进程就须用kill命令来终止，我们就需要先使用ps/pidof/pstree/top等工具获取进程PID，然后使用kill命令来杀掉该进程。kill命令是通过向进程发送指定的信号来结束相应进程的。在默认情况下，采用编号为15的TERM信号。TERM信号将终止所有不能捕获该信号的进程。对于那些可以捕获该信号的进程就要用编号为9的kill信号，强行“杀掉”该进程。 



实例1：列出所有信号名称

命令：

kill -l

[root@localhost test6]# kill -l

 1) SIGHUP       2) SIGINT       3) SIGQUIT      4) SIGILL

 5) SIGTRAP      6) SIGABRT      7) SIGBUS       8) SIGFPE

 9) SIGKILL     10) SIGUSR1     11) SIGSEGV     12) SIGUSR2

13) SIGPIPE     14) SIGALRM     15) SIGTERM     16) SIGSTKFLT

17) SIGCHLD     18) SIGCONT     19) SIGSTOP     20) SIGTSTP

21) SIGTTIN     22) SIGTTOU     23) SIGURG      24) SIGXCPU

25) SIGXFSZ     26) SIGVTALRM   27) SIGPROF     28) SIGWINCH

29) SIGIO       30) SIGPWR      31) SIGSYS      34) SIGRTMIN

35) SIGRTMIN+1  36) SIGRTMIN+2  37) SIGRTMIN+3  38) SIGRTMIN+4

39) SIGRTMIN+5  40) SIGRTMIN+6  41) SIGRTMIN+7  42) SIGRTMIN+8

43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+11 46) SIGRTMIN+12

47) SIGRTMIN+13 48) SIGRTMIN+14 49) SIGRTMIN+15 50) SIGRTMAX-14

51) SIGRTMAX-13 52) SIGRTMAX-12 53) SIGRTMAX-11 54) SIGRTMAX-10

55) SIGRTMAX-9  56) SIGRTMAX-8  57) SIGRTMAX-7  58) SIGRTMAX-6

59) SIGRTMAX-5  60) SIGRTMAX-4  61) SIGRTMAX-3  62) SIGRTMAX-2

63) SIGRTMAX-1  64) SIGRTMAX



说明：

只有第9种信号(SIGKILL)才可以无条件终止进程，其他信号进程都有权利忽略。	下面是常用的信号：

HUP    1    终端断线

INT     2    中断（同 Ctrl + C）

QUIT    3    退出（同 Ctrl + \）

TERM   15    终止

KILL    9    强制终止

CONT   18    继续（与STOP相反， fg/bg命令）

STOP    19    暂停（同 Ctrl + Z）


