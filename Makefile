Install:
	make CreateDir
	make NewRsaKey
	cd GIT-TOTVS-OFF && make GitCloneAll
	cd thf && make CloneThfProjects
	cd java && make CloneJavaProjects
	cd tmp && make InstallUtils

CreateDir:
	mkdir java
	mkdir thf 
	mkdir GIT-TOTVS-OFF
	mv Makefile-GIT-TOTVS-OFF GIT-TOTVS-OFF/Makefile
	mv Makefile-thf thf/Makefile
	mv Makefile-java java/Makefile 
	mkdir tmp
	mv Makefile-utils tmp/Makefile


NewRsaKey:
	ssh-keygen -t rsa -b 4096 -C "yuri.iuchi@totvs.com.br"
	google-chrome https://totvstfs.visualstudio.com/_usersSettings/keys


