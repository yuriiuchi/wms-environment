AtualizarCompilarSubirWms:
	make AtualizarWms
	make CompilarWms
	make SubirWms

ClonarCompilarSubirWms:
	make GitCloneWmsSuite
	make CompilarWms
	make SubirWms

CompilarWms:
	make CompileDocumento
	make CompileEtiqueta
	make CompileUnidade
	make CompileWms

AtualizarWms:
	make GitPullDocumento
	make GitPullEtiqueta
	make GitPullUnidade
	make GitPullWms

SubirWms:
	make UpServiceDocumento
	make UpServiceEtiqueta
	make UpServiceUnidade
	make UpServiceWms

PararWms:
	kill $$(jps | grep RELEASE | awk '{print $$1}')

UpServiceWms:
	cd SL-WMSConferenciaRecebimento/target/  && java -jar -Dspring.profiles.active=dev wms-conferencia-recebimento-1.0.0-RELEASE.jar&
	cd SL-WMSEndereco/target/  && java -jar -Dspring.profiles.active=dev wms-endereco-1.0.0-RELEASE.jar&
	cd SL-WMSEstoque/target/  && java -jar  -Dspring.profiles.active=dev wms-estoque-1.0.0-RELEASE.jar&
	cd SL-WMSExpedicao/target/  && java -jar  -Dspring.profiles.active=dev wms-expedicao-1.0.0-RELEASE.jar&
	cd SL-WMSExpedicaoQuery/target/  && java -jar  -Dspring.profiles.active=dev wms-expedicao-query-1.0.0-RELEASE.jar&
#	cd SL-WMSRecebimento/target/  && java -jar  -Dspring.profiles.active=dev wms-recebimento-1.0.0-RELEASE.jar&
#	cd SL-WMSRecebimentoQuery/target/  && java -jar  -Dspring.profiles.active=dev wms-recebimento-query-1.0.0-RELEASE.jar&
	cd SL-WMSSelecaoEstoque/target/  && java -jar  -Dspring.profiles.active=dev wms-selecao-estoque-1.0.0-RELEASE.jar&
	cd SL-WMSEstoqueQuery/target/  && java -jar  -Dspring.profiles.active=dev wms-estoque-query-1.0.0-RELEASE.jar&

GitCloneWmsSuite:
	make GitCloneDocumento
	make GitCloneEtiqueta
	make GitCloneUnidade
	make GitCloneWms

DockerClearRestart:
	sudo docker container stop $$(sudo docker container ls -aq)
	sudo docker container rm $$(sudo docker container ls -aq)
	sudo docker volume rm $$(sudo docker volume ls -q -f dangling=true)
	sudo docker-compose up -d
	
GitPullDocumento:
	cd SL-Documento && git pull
	cd SL-DocumentoQuery && git pull
	
GitPullEtiqueta:
	cd SL-Etiqueta && git pull
	
GitPullUnidade:
	cd SL-Unidade && git pull
	cd SL-UnidadeQuery && git pull
	
GitPullWms:
	#cd SL-WMSArmazenagem && git pull
	#cd SL-WMSConferenciaExpedicao && git pull
	cd SL-WMSConferenciaRecebimento && git pull
	cd SL-WMSEndereco && git pull
	cd SL-WMSEstoque && git pull
	#cd SL-WMSEstoqueFiscal && git pull
	cd SL-WMSExpedicao && git pull
	cd SL-WMSExpedicaoQuery && git pull
	#cd SL-WMSMobile && git pull
	cd SL-WMSRecebimento && git pull
	cd SL-WMSRecebimentoQuery && git pull
	cd SL-WMSSelecaoEstoque && git pull
	#cd SL-WMSSeparacao && git pull
	cd SL-WMSThf && git pull
	cd SL-WMSEstoqueQuery && git pull

CompileDocumento:
	cd SL-Documento && mvn clean install -DskipTests
	cd SL-DocumentoQuery && mvn clean install -DskipTests
	
CompileEtiqueta:
	cd SL-Etiqueta && mvn clean install -DskipTests
	
CompileUnidade:
	cd SL-Unidade && mvn clean install -DskipTests
	cd SL-UnidadeQuery && mvn clean install -DskipTests
	
CompileWms:
	#cd SL-WMSArmazenagem && mvn clean install -DskipTests
	#cd SL-WMSConferenciaExpedicao && mvn clean install -DskipTests
	cd SL-WMSConferenciaRecebimento && mvn clean install -DskipTests
	cd SL-WMSEndereco && mvn clean install -DskipTests
	cd SL-WMSEstoque && mvn clean install -DskipTests
	#cd SL-WMSEstoqueFiscal && mvn clean install -DskipTests
	cd SL-WMSExpedicao && mvn clean install -DskipTests
	cd SL-WMSExpedicaoQuery && mvn clean install -DskipTests
	#cd SL-WMSMobile && mvn clean install -DskipTests
	cd SL-WMSRecebimento && mvn clean install -DskipTests
	cd SL-WMSRecebimentoQuery && mvn clean install -DskipTests
	cd SL-WMSSelecaoEstoque && mvn clean install -DskipTests
	#cd SL-WMSSeparacao && mvn clean install -DskipTests
	cd SL-WMSEstoqueQuery && mvn clean install -DskipTests

UpServiceDocumento:
	cd SL-Documento/target/  && java -jar  -Dspring.profiles.active=dev documento-1.0.0-RELEASE.jar&
	cd SL-DocumentoQuery/target/  && java -jar  -Dspring.profiles.active=dev documento-query-1.0.0-RELEASE.jar&
	
UpServiceEtiqueta:
	cd SL-Etiqueta/target/  && java -jar  -Dspring.profiles.active=dev etiqueta-1.0.0-RELEASE.jar&
	
UpServiceUnidade:
	cd SL-Unidade/target/  && java -jar  -Dspring.profiles.active=dev unidade-1.0.0-RELEASE.jar&
	cd SL-UnidadeQuery/target/  && java -jar  -Dspring.profiles.active=dev unidade-query-1.0.0-RELEASE.jar&

GitCloneDocumento:
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-Documento
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-DocumentoQuery
	
GitCloneEtiqueta:
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-Etiqueta
		
GitCloneUnidade:
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-Unidade
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-UnidadeQuery
	
GitCloneWms:
	#git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSArmazenagem
	#git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSConferenciaExpedicao
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSConferenciaRecebimento
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSEndereco 
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSEstoque
	#git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSEstoqueFiscal
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSExpedicao
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSExpedicaoQuery
	#git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSMobile
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSRecebimento
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSRecebimentoQuery
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSSelecaoEstoque
	#git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSSeparacao
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSThf
	git clone totvstfs@vs-ssh.visualstudio.com:v3/totvstfs/SuiteLogistica/SL-WMSEstoqueQuery


	
