Install:
	make CreateDirEnvironment
	make CreateDirTreinamentos
	make NewRsaKey
	cd GIT-TOTVS-OFF && make GitCloneAll
	cd thf && make CloneThfProjects
	cd java && make CloneJavaProjects
	cd tmp && make InstallUtils
#	InstalarPluginsSpringTools

CreateDirEnvironment:
	mkdir java
	mkdir thf 
	mkdir GIT-TOTVS-OFF
	cp Makefile-GIT-TOTVS-OFF GIT-TOTVS-OFF/Makefile
	cp Makefile-thf thf/Makefile
	cp Makefile-java java/Makefile 
	mkdir tmp
	cp Makefile-utils tmp/Makefile

CreateDirTreinamentos:
	cd .. && mkdir totvs-treinamentos
	cd ../totvs-treinamentos  && mkdir backend && mkdir frontend
	

NewRsaKey:
#	ssh-keygen -t rsa -b 4096 -C "yuri.iuchi@totvs.com.br"
	google-chrome -b https://totvstfs.visualstudio.com/_usersSettings/keys

CleanFiles:
	rm Makefile-GIT
	rm Makefile-thf
	rm Makefile
	rm Makefile-utils
	rm GIT-TOTVS-OFF/Makefile
	rm thf/Makefile
	rm java/Makefile
	rm tmp/Makefile

DockerClearRestart:
	sudo docker container stop $$(sudo docker container ls -aq)
	sudo docker container rm $$(sudo docker container ls -aq)
	sudo docker volume rm $$(sudo docker volume ls -q -f dangling=true)
	sudo docker-compose up -d

FindInFiles:
	grep -rlw -e $(file)

