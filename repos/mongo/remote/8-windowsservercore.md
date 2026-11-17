## `mongo:8-windowsservercore`

```console
$ docker pull mongo@sha256:70bf13a7496178a8da3f58dffc5efdf67de492772447135297fc2e4eee055c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `mongo:8-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull mongo@sha256:d454748e24e91b3007627459fb1f4f00725e8f82ff2abc7ca6d0a132a9631ff4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3331307019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156705ce082d15434e0d0ac3b5b1db61cd8cd4a7ad400edc8cb7ba272d7cbedf`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 20:05:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 16 Nov 2026 20:05:13 GMT
ENV MONGO_VERSION=8.3.17
# Mon, 16 Nov 2026 20:05:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.17-signed.msi
# Mon, 16 Nov 2026 20:05:13 GMT
ENV MONGO_DOWNLOAD_SHA256=de68c65242b36d408c82095825786367481e4f4b6550ea308d6bf86c9690d5b9
# Mon, 16 Nov 2026 20:07:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:07:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 16 Nov 2026 20:07:34 GMT
EXPOSE 27017
# Mon, 16 Nov 2026 20:07:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34495be8b78f63ddfc8af02efe67ca502fca8973c1cb04f563f3a9358337e40c`  
		Last Modified: Mon, 16 Nov 2026 20:07:50 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9c71913ed9ab704a555d8d5778d96b236d0cb413b5d1a4bb12b1709a7b5742`  
		Last Modified: Mon, 16 Nov 2026 20:07:50 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1451382dd2ad98ab2226f4f6bd70b47684060bb6c994d43c339f4f30789ab7f`  
		Last Modified: Mon, 16 Nov 2026 20:07:50 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb7addaca0b1596e9934ac7792fef127ff7f84da9c1a8b680a0f1a8410bedef`  
		Last Modified: Mon, 16 Nov 2026 20:07:49 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb38e535009549646015e851dfbbf5240bf9ce671622888c25e9e4ad604394b`  
		Last Modified: Mon, 16 Nov 2026 20:09:04 GMT  
		Size: 924.2 MB (924230246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35003e5e4d54265984d6613a12e3948e8ef67c5836b057d448a50cd6011b897d`  
		Last Modified: Mon, 16 Nov 2026 20:07:49 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bcffe8be418d3ce9e42032fa40a735593e807d25bf99dc866bfcdde43519694`  
		Last Modified: Mon, 16 Nov 2026 20:07:49 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93da96b8214074c49aa50d931b804e501bfa741a78af101bd56553e11eec6196`  
		Last Modified: Mon, 16 Nov 2026 20:07:49 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8-windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull mongo@sha256:1cb39ed960e8c7399c435bdb4aef80c77cc9fc39b507894922a0ad253f9874c1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3170308155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d03a8db353c7a78e5bb6cc480e5224968c286048dab2166c69281e8f9bdd87`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 16 Nov 2026 20:08:50 GMT
ENV MONGO_VERSION=8.3.17
# Mon, 16 Nov 2026 20:08:51 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.17-signed.msi
# Mon, 16 Nov 2026 20:08:51 GMT
ENV MONGO_DOWNLOAD_SHA256=de68c65242b36d408c82095825786367481e4f4b6550ea308d6bf86c9690d5b9
# Mon, 16 Nov 2026 20:10:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:10:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 16 Nov 2026 20:10:44 GMT
EXPOSE 27017
# Mon, 16 Nov 2026 20:10:44 GMT
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
	-	`sha256:322832aeaa1f811073410e092aceceb1b45956768d0833e69f9512684751ba47`  
		Last Modified: Mon, 16 Nov 2026 19:54:27 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397510d88ada6fc999157ad99880808513301b205a250b21b82caa0fc9db5e32`  
		Last Modified: Mon, 16 Nov 2026 20:10:56 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884871a01826d1fda8870af04cdd5b48b41e8da31e3ca8d54288201712c77bc7`  
		Last Modified: Mon, 16 Nov 2026 20:10:56 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc42a2cb3c7deb8678c7378df2ba75500a1b9ca05ab7eac84a16732a502a8455`  
		Last Modified: Mon, 16 Nov 2026 20:10:55 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c81714ec6da17467a52e43345aa4edc0869a2795b3ffe1538d1b94ef2773c`  
		Last Modified: Mon, 16 Nov 2026 20:12:09 GMT  
		Size: 924.2 MB (924208313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff0ac35bd1b59d5f11c228cede9d244dce01cf9765a702268f46ee44ec08b85`  
		Last Modified: Mon, 16 Nov 2026 20:10:55 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb8b792561e21e20b1272ffeb11057b75b9dc1fb3f6c1fa1e48fdbab57c945`  
		Last Modified: Mon, 16 Nov 2026 20:10:55 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b685cbdd078eba786907eb7a6d636df4e7ebb8de956944186a2a2528b6e1`  
		Last Modified: Mon, 16 Nov 2026 20:10:55 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
