@Echo off
echo set sh=WScript.CreateObject("WScript.Shell") >tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "open 192.168.1.1{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "root{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "adminHW{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "su{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "shell{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "cp /mnt/jffs2/hw_ctree.xml /mnt/jffs2/mycfg.xml.gz {ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "cd /mnt/jffs2{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "aescrypt2 1 mycfg.xml.gz tem{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "gzip -d mycfg.xml.gz{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "grep WebUserInfoInstance mycfg.xml{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
echo sh.SendKeys "rm mycfg.xml{ENTER}" >>tmp.vbs
echo WScript.Sleep 1000 >>tmp.vbs
start telnet
cscript //nologo tmp.vbs
del tmp.vbs