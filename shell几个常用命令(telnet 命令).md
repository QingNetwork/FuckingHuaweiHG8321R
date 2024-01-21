shell几个常用命令
-----------------------------------------------------------------------------
压缩

tar -cvf jpg.tar *.jpg //将目录里所有jpg文件打包成tar.jpg  （当前文件路径）

tar -czf jpg.tar.gz *.jpg   //将目录里所有jpg文件打包成jpg.tar后，并且将其用gzip压缩，生成一个gzip压缩过的包，命名为jpg.tar.gz   （当前文件路径）

---------------------------------------------------------------------------
解压

tar -xvf tmp.tar //解压 tar包  （当前文件路径）

tar -xzvf tmp.tar.gz //解压tar.gz   （当前文件路径）

----------------------------------------------------------------------------------

剪切

mv /mnt/jffs2/tmp.tar.gz /tmp（路径-文件）

下载 

tftp -p -l tmp.tar.gz -r tmp.tar.gz 192.168.1.2（当前文件路径）

删除

rm /tmp/tmp.tar.gz(路径-文件)

上传

tftp -g -l temp.tar.gz -r temp.tar.gz 192.168.1.2 （当前文件路径）

tftp -g -l tmp.tar -r tmp.tar 192.168.1.2 （当前文件路径）

打开
cd    进入用户主目录；

cd /mnt/jffs2   进入/mnt/jffs2 文件夹（路径）；

ls命令用来显示文件列表（配合cd一起用）

===============================================================================
telnet 192.168.1.1

升级：load pack by tftp svrip 192.168.100.2 remotefile SA1456CV2.bin

下载：backup cfg by tftp svrip 192.168.1.2 remotefile hw_ctree.xml

su

shell

cd /mnt/jffs2

ls

rm -rf myconfig.xml 

rm -rf myconfig.xml.gz

cp hw_ctree.xml myconfig.xml.gz

aescrypt2 1 myconfig.xml.gz tmp

gzip -d myconfig.xml.gz

grep telecomadmin myconfig.xml

vi myconfig.xml

gzip myconfig.xml

aescrypt2 0 myconfig.xml.gz tmp

cp -f myconfig.xml.gz hw_ctree.xml

reboot


echo \#!/bin/sh >> /mnt/jffs2/a && echo cp \$4 /mnt/jffs2/b >> /mnt/jffs2/a && chmod +x /mnt/jffs2/a && mount --bind /mnt/jffs2/a /bin/ez-ipupdate

cat /mnt/jffs2/b

解密以后再输入

rm /mnt/jffs2/a&&rm /mnt/jffs2/b&&umount /mnt/jffs2/a

方便下次破解

上传：tftp -g -r xxxx.xxx 192.168.xxx.xxx

下载：tftp -p -r xxxx.xxx 192.168.xxx.xxx

目录：cd /  展开目录：ls  查看命令：cat

删除：rm -rf  复制：cp  强制复制：cp -f

AES加密：aescrypt2 0 
AES解密：aescrypt2 1 

vi myconfig.xml/下查找

链接数限制：/TotalTerminalNumber

DDNS密码：/DDNSPassword

reboot重启命令 复位WAP：reset 命令

退出shell模式：exit

恢复华为原厂：restorehwmode.sh

华为光猫默认配置文件：hw_default_ctree.xml 配置文件：hw_ctree.xml

华为光猫设备配置文件：hw_boardinfo

华为：COMMON   COMMON

电信：E8C  E8C （ xxCT )

联通：COMMON  UNICOMBRIDGE  （ xxCU )

移动：CMCC  CMCC_RMS

查询ONU相关信息WAP>display deviceInfo

查看设备版本:WAP>display version

查询ONU软件版本信息WAP>display inner version

CPU、内存占用率和系统时间信息WAP>display sysinfo

查询节能时芯片信息WAP>display apmChipStatus

查询光功率WAP>display optic 

查询ONT的PON接入模式WAP>display access mode

查看ONT gemport信息: WAP>display flow id all

查询ONT的WIFI芯片类型WAP>display wifichip 

查询当前OAM发包频率WAP>get ont oamfrequency

查询GPON ONT流氓ONT标记，是否为流氓ONTWAP>get rogue status

WIFI开启时，查询WIFI功率WAP>get wlan txpower

显示ZSP版本WAP>display zsp version

查询ONT的版本模式WAP(Dopra Linux) # getcustominfo.sh


==========================================备份jffs2文件夹===================
su 权限

shell  进入shell

cd /mnt/jffs2  打开jffs2文件夹

tar -czf jffs2bak.tar.gz * 压缩jffs2文件夹为 jffs2bak.tar.gz

mv /mnt/jffs2/jffs2bak.tar.gz /tmp（剪切jffs2bak.tar.gz文件到 /tmp文件下）

cd /tmp

ls(查看tmp文件夹里面是否有jffs2bak.tar.gz文件)

tftp -p -l jffs2bak.tar.gz -r jffs2bak.tar.gz 192.168.1.3（192.168.1.3为你的电脑IP）

查看你的tftp里面是否有jffs2bak.tar.gz文件(备份完成)
==========================================本节完成===========================