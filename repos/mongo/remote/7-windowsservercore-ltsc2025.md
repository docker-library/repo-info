## `mongo:7-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:d5606fb9f3c80ae59c9e24176b26e52f33436e5212533537aafc547fbbab685c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `mongo:7-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull mongo@sha256:9b2f070528373801435a24980f1b7b6a9a462847dc2985150500906ce6fd0ff8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (3017471785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e42273855348057221abf75db2beecb8099a283ed87e6b126913487b38cc1f5`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:58:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 18:00:22 GMT
ENV MONGO_VERSION=7.0.45
# Tue, 27 Oct 2026 18:00:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.45-signed.msi
# Tue, 27 Oct 2026 18:00:23 GMT
ENV MONGO_DOWNLOAD_SHA256=c523c13eec4bfe0900f6d0a4db9f7033276bafeda6786f388297c59f13eaee63
# Tue, 27 Oct 2026 18:01:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 18:01:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 27 Oct 2026 18:02:00 GMT
EXPOSE 27017
# Tue, 27 Oct 2026 18:02:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42d1e66cf897dc9bbfeacddbf1af32f69fa90853bd4d9e06d8f01f0dbec7b7`  
		Last Modified: Tue, 27 Oct 2026 18:00:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae991194cb6b2e576a1b4b12d442d39118695e9118607b71627251aa18a46d3`  
		Last Modified: Tue, 27 Oct 2026 18:02:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20279a9da25822165c4ab2b38220a68bc06c78832afa2897696548e3304b11a`  
		Last Modified: Tue, 27 Oct 2026 18:02:06 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ea959f92c1f120717cebb8967d2a388d04d26951d48b25f42163396fd5d29`  
		Last Modified: Tue, 27 Oct 2026 18:02:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93bb0f363a54d1f8c1c1266398d4da96b8e6c9a1ded5bc0fd72f5def4c9a4ab`  
		Last Modified: Tue, 27 Oct 2026 18:02:54 GMT  
		Size: 625.4 MB (625413683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0c0f357a1167c9ce1222763933598af78c3f06a3e07d37232fea77ecbd6935`  
		Last Modified: Tue, 27 Oct 2026 18:02:04 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb72a6a3a26f2a82a2d70c692ae6a49fa7c1dabf9c121139b4e3a05407f01a1`  
		Last Modified: Tue, 27 Oct 2026 18:02:04 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f10835494a9ef7a73e9531b9a1d447ed98d93d055a37d245f515686535be4db`  
		Last Modified: Tue, 27 Oct 2026 18:02:04 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
