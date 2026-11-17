## `mongo:9-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:951488d4a4f60b563be8598325a8d208b90ddaa8dbd80b9d72f4eb59b419384e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `mongo:9-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull mongo@sha256:8e359469a503541251467f6cb3d9d4bb912e95fc0600f213bfe282bb3b61fee6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3245467798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47abaa72fe2e38840f3b515ad13357b7f9132f57a90e4cad04066e703058267d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 16 Nov 2026 20:08:42 GMT
ENV MONGO_VERSION=9.0.8
# Mon, 16 Nov 2026 20:08:43 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-9.0.8-signed.msi
# Mon, 16 Nov 2026 20:08:43 GMT
ENV MONGO_DOWNLOAD_SHA256=4841753f49c1e3e25d12ff63a049894b7d56e397f27f05303ccde5144a6ae060
# Mon, 16 Nov 2026 20:10:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:10:58 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 16 Nov 2026 20:10:58 GMT
EXPOSE 27017
# Mon, 16 Nov 2026 20:10:59 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd0b0631bc35613ed0c091b22f21be8536b3db2dc2203091a3ff945e257e696`  
		Last Modified: Mon, 16 Nov 2026 19:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430c1c7a7b96613a8e0e6716fc409dd7e48523c059c997446d299a265e970ffe`  
		Last Modified: Mon, 16 Nov 2026 20:11:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaea3bb2c4b25341718bbd5d03bf2be029bc227125557274a90c50b4985a3df7`  
		Last Modified: Mon, 16 Nov 2026 20:11:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e467efc404265e36a0671a26ae8a6e1e7ee690f958ac4a10e689d08fbd035`  
		Last Modified: Mon, 16 Nov 2026 20:11:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62413fa99a9dc0e6cabd6401ea76803da53aca78ccd2b033ede681ccf9266a1`  
		Last Modified: Mon, 16 Nov 2026 20:12:26 GMT  
		Size: 999.4 MB (999367930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b905bd0e1750e02b9e76c7307ba0130477709cf28da22ccfc448ba3cc34bc781`  
		Last Modified: Mon, 16 Nov 2026 20:11:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1b2698260eb29a4116077ca4a444d72fb2edc5bb44c1d39379b73b45b23a73`  
		Last Modified: Mon, 16 Nov 2026 20:11:12 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6944c23b4a7ae47fc9b7a2459d3dab98d5748852de7611cdfb8712270aeac666`  
		Last Modified: Mon, 16 Nov 2026 20:11:12 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
