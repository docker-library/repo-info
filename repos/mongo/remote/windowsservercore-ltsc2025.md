## `mongo:windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:718003cbad8728728e8864e9f8bd078748faad15ec0a1af8af9891b7da61d2cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:429de644cdbcd08710d06ab7b01420a9c7cdb4434ce8adc850f97c77ea448cd6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3364141104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d89707459298cf8682a9700ab55693193185b4b1e42ae4065821875f30fe50`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Tue, 08 Sep 2026 21:53:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Sep 2026 21:53:17 GMT
ENV MONGO_VERSION=8.3.9
# Tue, 08 Sep 2026 21:53:18 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.9-signed.msi
# Tue, 08 Sep 2026 21:53:19 GMT
ENV MONGO_DOWNLOAD_SHA256=349ac0c10d204d014c97bb2ae03de61b8955f69d6c81f01f4a91f3823663589b
# Tue, 08 Sep 2026 21:56:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Sep 2026 21:56:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Sep 2026 21:56:30 GMT
EXPOSE 27017
# Tue, 08 Sep 2026 21:56:32 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd51301f90856c0bd7f41fece6f1ada8ead28dafc98ae6b34be42065cfaa1525`  
		Last Modified: Tue, 08 Sep 2026 21:56:44 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd552e4c521f4e885e190ac075ba626c140b89b831f65071a9ce4cc3f4c7ecfb`  
		Last Modified: Tue, 08 Sep 2026 21:56:44 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31d43bf7815464c316fcfb87f6a0ec0eafdc13e89ebf8fc6fbc0d72d267a1a3`  
		Last Modified: Tue, 08 Sep 2026 21:56:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d358e7c5f401bc2d2834e7b4a2a6c593a06b59c43b08d3f9baa0fc37ad9477ea`  
		Last Modified: Tue, 08 Sep 2026 21:56:42 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863a821f07dac6793846a7186e3260cb469a985b1db9dc65dd3fac2c9a439941`  
		Last Modified: Tue, 08 Sep 2026 21:57:52 GMT  
		Size: 923.3 MB (923346650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a2d122e000aa4bc931f136c966183e9028bfddd0ce574c2adce7d9b0d12fa8`  
		Last Modified: Tue, 08 Sep 2026 21:56:42 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03a39613de446368206b7238025ed74992d8e626aa7d94b91ba58c0cdb84980`  
		Last Modified: Tue, 08 Sep 2026 21:56:42 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdec912a67c1046b7ad5b4aab8fb38be7fdbbe746c24f67d3a885309a76bbe7`  
		Last Modified: Tue, 08 Sep 2026 21:56:42 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
