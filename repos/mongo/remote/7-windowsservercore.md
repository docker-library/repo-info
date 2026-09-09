## `mongo:7-windowsservercore`

```console
$ docker pull mongo@sha256:0063737f5518e0d7d28a2e992db8f637d9de54294eb5715a7900b233bf563bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:657a6133d1f95670a1f5a9b913de32fb0bf228a3eb39597d3a83f07383d04aa0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066928928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6c44400e3f650acd0c6b0065d6555651c6b75c601b1704ab39c0b923a8e3f0`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Tue, 08 Sep 2026 21:54:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Sep 2026 21:54:50 GMT
ENV MONGO_VERSION=7.0.41
# Tue, 08 Sep 2026 21:54:51 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.41-signed.msi
# Tue, 08 Sep 2026 21:54:52 GMT
ENV MONGO_DOWNLOAD_SHA256=b4ed195f287c0d5356c3fd3f3dcb023f7bd01ec7b7a5bf6483dae995c92d352d
# Tue, 08 Sep 2026 21:57:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Sep 2026 21:57:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Sep 2026 21:57:45 GMT
EXPOSE 27017
# Tue, 08 Sep 2026 21:57:46 GMT
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
	-	`sha256:289a625b795067b36659439caa5607ff510987028cd31ac8c897e60866ae4898`  
		Last Modified: Tue, 08 Sep 2026 21:57:52 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95008b1dd54e00eb8e5148582ede933234a60c822d4d823ebddb3663006196f`  
		Last Modified: Tue, 08 Sep 2026 21:57:52 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be34aa34dc38a0ad68a908403085d35911e89df61c9f99bb5c8c51aa30ae5a63`  
		Last Modified: Tue, 08 Sep 2026 21:57:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f83761d53e4b7a8b44efbbd69c17747ad652d094575377e784e7820407ef377`  
		Last Modified: Tue, 08 Sep 2026 21:57:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7cfcdd9fcb2bbd0b560d4886263d2d28280581ef36bcdc66293f426798e341`  
		Last Modified: Tue, 08 Sep 2026 21:58:39 GMT  
		Size: 626.1 MB (626134570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a759b2b9d1ddc01b7ff5812a3dd7d86dd564fb0ad4429365d6f7e96adc2478d2`  
		Last Modified: Tue, 08 Sep 2026 21:57:50 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba828f472da270c19bbbe72dd74682f8987fce0deedf1c48398a6b7ac344914`  
		Last Modified: Tue, 08 Sep 2026 21:57:50 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008149328da5cc974c1b2e4a52189f5a38085e255f9cd1f076bf1e992e6789dd`  
		Last Modified: Tue, 08 Sep 2026 21:57:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:e8e5dc2ce00ad356ca9c397eb68c432ad0f10277edc967dbd8b573b3ea37ef5a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2810119292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb7b2a98acf284beea93180298fe15879d34de8c88b49ca32701295142208f9`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Tue, 08 Sep 2026 21:55:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Sep 2026 21:55:51 GMT
ENV MONGO_VERSION=7.0.41
# Tue, 08 Sep 2026 21:55:52 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.41-signed.msi
# Tue, 08 Sep 2026 21:55:53 GMT
ENV MONGO_DOWNLOAD_SHA256=b4ed195f287c0d5356c3fd3f3dcb023f7bd01ec7b7a5bf6483dae995c92d352d
# Tue, 08 Sep 2026 21:58:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Sep 2026 21:58:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Sep 2026 21:58:38 GMT
EXPOSE 27017
# Tue, 08 Sep 2026 21:58:38 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36327a3c31461682a6018b64e0187e75b16a30e6685cbdeaa571a9fc64483056`  
		Last Modified: Tue, 08 Sep 2026 21:58:52 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9d6d047fd4fe1f7c3029321e2d8ad5f5db883392585a21c498d92e9020c527`  
		Last Modified: Tue, 08 Sep 2026 21:58:52 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126ee8d1387947807688c742aaecb3819ba624eda818053eb92d732167ad5ed2`  
		Last Modified: Tue, 08 Sep 2026 21:58:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48426c15ecf321a5d4f8f2aade65bf1c9750a6f276d1342a037ba0f110aaf987`  
		Last Modified: Tue, 08 Sep 2026 21:58:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f658281de08cf1021c09a68a2e6510463e6adb5f560e685b52a52160be24df36`  
		Last Modified: Tue, 08 Sep 2026 21:59:40 GMT  
		Size: 626.1 MB (626112730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81025dcbf7d373103159faa3c5446b5ce93ffeec11757cc2fc5e206df73ae790`  
		Last Modified: Tue, 08 Sep 2026 21:58:51 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd1393ad392913eed9f4537968955391074f7fe313f31c4d6581a8572a6217`  
		Last Modified: Tue, 08 Sep 2026 21:58:51 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a0468b490ef35dbe31923be3a0d3107da0baf6b71b037ed5fadd71fc212e4f`  
		Last Modified: Tue, 08 Sep 2026 21:58:51 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
