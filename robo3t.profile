############################################
# /opt/robomongo/bin/robo3t profile
############################################
# Persistent global definitions
# include /etc/firejail/globals.local

### basic blacklisting
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

### home directory whitelisting
whitelist ~/.config/3T
whitelist ~/.config/fontconfig
whitelist ~/.icons/default
whitelist ~/.icons/DMZ-White
whitelist ~/.icons/DMZ-White/cursors
whitelist ~/.Xdefaults-yoga900
whitelist ~/.fonts.conf
whitelist ~/.fonts.conf.d
whitelist ~/.local/share/mime
whitelist ~/.3T/
whitelist ~/robo3t/
include /etc/firejail/whitelist-common.inc
whitelist /opt/robomongo
whitelist /opt/robo3t

### filesystem
private-tmp
private-dev
private-etc hosts,fonts,selinux,xdg,lsb-release,localtime

private-lib libGL.so.1,libbsd.so.0,libc.so.6,libdl.so.2,libexpat.so.1,libgcc_s.so.1,libglib-2.0.so.0,libm.so.6,libpcre.so.3,libpthread.so.0,librt.so.1,libz.so.1,libcrypto.so.1.0.0,libQt5Core.so.5,libQt5Gui.so.5,libQt5Network.so.5,libQt5Widgets.so.5,libssl.so.1.0.0,libstdc++.so.6,libdrm.so.2,libglapi.so.0,libgthread-2.0.so.0,libX11.so.6,libX11-xcb.so.1,libXau.so.6,libxcb-dri2.so.0,libxcb-dri3.so.0,libxcb-glx.so.0,libxcb-present.so.0,libxcb.so.1,libxcb-sync.so.1,libXdamage.so.1,libXdmcp.so.6,libXext.so.6,libXfixes.so.3,libxshmfence.so.1,libXxf86vm.so.1
private-bin robo3t

whitelist /usr/share/pixmaps
whitelist /usr/share/X11
whitelist /usr/share/fonts
whitelist /usr/share/mime
whitelist /usr/share/icons
whitelist /usr/share/zoneinfo

### security filters
caps.drop all
nonewprivs
seccomp.keep access,arch_prctl,bind,brk,chmod,clock_getres,clone,close,connect,eventfd2,exit,exit_group,fadvise64,fchmod,fcntl,fdatasync,flock,fstat,fstatfs,futex,getcwd,getdents,geteuid,getpeername,getpid,getrandom,getresgid,getresuid,getrusage,getsockname,getsockopt,getuid,inotify_add_watch,inotify_init1,inotify_rm_watch,ioctl,link,lseek,lstat,madvise,mkdir,mmap,mprotect,munmap,nanosleep,open,openat,poll,prctl,pread64,prlimit64,read,readlink,recvfrom,recvmsg,rename,restart_syscall,rt_sigaction,rt_sigprocmask,rt_sigreturn,sched_getaffinity,sched_get_priority_max,sched_get_priority_min,sched_setscheduler,select,sendmmsg,sendmsg,sendto,set_robust_list,setsockopt,set_tid_address,shmat,shmctl,shmdt,shmget,shutdown,socket,stat,statfs,sysinfo,tgkill,uname,unlink,write,writev

### network
protocol unix,inet,
# net eth0
netfilter

### environment
shell none
