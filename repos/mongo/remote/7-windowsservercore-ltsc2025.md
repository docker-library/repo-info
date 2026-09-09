## `mongo:7-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:840acd325388bf177ccf50fd5b1e125559e6e2630763177f3b8c61bfeb88d879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:7-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

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
