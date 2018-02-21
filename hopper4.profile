############################################
# /opt/hopper-v4/bin/Hopper profile
############################################
# Persistent global definitions
# include /etc/firejail/globals.local

### basic blacklisting
include /etc/firejail/disable-common.inc
# include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
# include /etc/firejail/disable-programs.inc

### home directory whitelisting
whitelist ~/reversing/
whitelist ~/Downloads/
whitelist ~/Documents/Hopper/
whitelist ~/hopper-hacking/

whitelist ~/GNUstep/Library/ApplicationSupport/Hopper/

whitelist ~/.local/share/mime
whitelist ~/.local/share/icons
whitelist ~/.icons/
whitelist ~/.fonts.conf
whitelist ~/.fonts.conf.d
whitelist ~/.config/fontconfig
whitelist ~/.Xdefaults*
whitelist ~/.gtk-2.0/
whitelist ~/.themes/Greybird/gtk-2.0
whitelist ~/.gtkrc-2.0.en
whitelist ~/.gtkrc-2.0.en_US
whitelist ~/.ICEauthority
whitelist ~/GNUstep/Defaults
whitelist ~/.GNUstep.conf
include /etc/firejail/whitelist-common.inc

### filesystem
private-tmp
private-dev
private-etc machine-id,group,drirc,timezone,fonts,gtk-2.0,selinux,xdg,passwd,
whitelist /var/lib/dbus/machine-id
whitelist /usr/share//mime
whitelist /usr/share/xfce4
whitelist /usr/share/xubuntu
whitelist /usr/share/locale
whitelist /usr/share/pixmaps
whitelist /usr/share/zoneinfo
whitelist /usr/share/mime
whitelist /usr/share/icons
whitelist /usr/share/fonts
whitelist /usr/share/themes
whitelist /usr/share/gtk-2.0
whitelist /usr/share/X11
whitelist /usr/share/qt5

### security filters
caps.drop all
nonewprivs
seccomp.keep access,arch_prctl,bind,brk,chmod,clock_getres,clone,close,connect,eventfd2,execve,fadvise64,fallocate,fchmod,fcntl,fdatasync,flock,fstat,fstatfs,fsync,futex,getcwd,getdents,getegid,geteuid,getgid,getpeername,getpid,getrandom,getresgid,getresuid,getsockname,getsockopt,gettid,getuid,inotify_add_watch,inotify_init1,inotify_rm_watch,ioctl,listen,lseek,lstat,madvise,mkdir,mmap,mprotect,munmap,nanosleep,open,openat,pipe,poll,prctl,prlimit64,read,readlink,recvfrom,recvmsg,rename,rmdir,rt_sigaction,rt_sigprocmask,sendmmsg,sendmsg,sendto,set_robust_list,setsockopt,set_tid_address,shmat,shmctl,shmdt,shmget,shutdown,socket,stat,statfs,sysinfo,umask,uname,unlink,write,writev

# XXX figure out what i need to allow for plugin scripts (those run in hopper's memory space?) and the debugger...

### network
protocol unix,
net none

### environment
shell none
