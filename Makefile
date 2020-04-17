Install:
	make CreateDirEnvironment
	make NewRsaKey
	cd GIT-TOTVS-OFF && make GitCloneAll
	cd thf && make CloneThfProjects
	cd java && make CreateDirJavaEnvironment
	cd tmp && make InstallUtils
#	make CreateDirTreinamentos

CreateDirEnvironment:
	mkdir java
	cp Makefiles-Install/Makefile java/Makefile 
	mkdir thf 
	cp Makefiles-Install/thf/Makefile thf/Makefile
	mkdir GIT-TOTVS-OFF
	cp Makefiles-Install/GIT-TOTVS-OFF/Makefile GIT-TOTVS-OFF/Makefile
	mkdir tmp
	cp Makefiles-Install/Makefile tmp/Makefile

NewRsaKey:
#	ssh-keygen -t rsa -b 4096 -C "yuri.iuchi@totvs.com.br"
	google-chrome -b https://totvstfs.visualstudio.com/_usersSettings/keys

CreateDirTreinamentos:
	cd .. && mkdir totvs-treinamentos
	cd ../totvs-treinamentos  && mkdir backend && mkdir frontend

# CleanFiles:
# 	rm Makefile-GIT
# 	rm Makefile-thf
# 	rm Makefile
# 	rm Makefile-utils
# 	rm GIT-TOTVS-OFF/Makefile
# 	rm thf/Makefile
# 	rm java/Makefile
# 	rm tmp/Makefile

# DockerClearRestart:
# 	sudo docker container stop $$(sudo docker container ls -aq)
# 	sudo docker container rm $$(sudo docker container ls -aq)
# 	sudo docker volume rm $$(sudo docker volume ls -q -f dangling=true)
# 	sudo docker-compose up -d

# FindInFiles:
# 	grep -rlw -e $(file)

