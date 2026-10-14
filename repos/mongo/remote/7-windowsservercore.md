## `mongo:7-windowsservercore`

```console
$ docker pull mongo@sha256:d1a38f54e1cc5342ec8c25e73f9a754ebb91cde49c1d4ac9b1e826d0dddf9eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `mongo:7-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull mongo@sha256:8ca41a142be196a2b4e41af997a60bbb932ed981d8df6c65b7bb093544c6c4f8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2844937514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401cf45fa05e16a9acbf93e3d6bfeab4219218c60fa6540042849c6558236a88`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 13 Oct 2026 21:54:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 22:02:47 GMT
ENV MONGO_VERSION=7.0.45
# Tue, 13 Oct 2026 22:02:47 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.45-signed.msi
# Tue, 13 Oct 2026 22:02:48 GMT
ENV MONGO_DOWNLOAD_SHA256=c523c13eec4bfe0900f6d0a4db9f7033276bafeda6786f388297c59f13eaee63
# Tue, 13 Oct 2026 22:04:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:04:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 13 Oct 2026 22:04:04 GMT
EXPOSE 27017
# Tue, 13 Oct 2026 22:04:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bedc8468944ace6da71d152f34bfa68998c8d7b91dbf6db232e7371e2103d9f`  
		Last Modified: Tue, 13 Oct 2026 21:57:16 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc2f9a0c0c5cea5fa9c2c1b8e6926e18ed561dad12adfbc99c2d9a0e347402e`  
		Last Modified: Tue, 13 Oct 2026 22:04:16 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad4d14b743a627a841b140f0f6770fc6c6aa485e9846584e5325bd68bf73082`  
		Last Modified: Tue, 13 Oct 2026 22:04:16 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada652ae7023deac946c5e4cf2e54c5b023e980a37ab5c6699b13809cb60a064`  
		Last Modified: Tue, 13 Oct 2026 22:04:14 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ae6f45e6dd391a3b8286042b4deebdf832afd3ccbd4a6ef9f59a6208b18f2c`  
		Last Modified: Tue, 13 Oct 2026 22:05:09 GMT  
		Size: 625.4 MB (625439554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d4eb0aa8154567f254d0a956151ef12cedd2bb97369fa704088d28aa2fe528`  
		Last Modified: Tue, 13 Oct 2026 22:04:14 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197b888d29ae03866bc28968b5b38d08e4a329735206ba747e5ddde0440bde`  
		Last Modified: Tue, 13 Oct 2026 22:04:14 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1310adccb5d5e26bd367505dc35a24fe9e218edc14f6bed738a2310912bcbc00`  
		Last Modified: Tue, 13 Oct 2026 22:04:14 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
