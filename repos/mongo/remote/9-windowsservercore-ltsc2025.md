## `mongo:9-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:3a17842c23ae3f6d038a565969b66e57ad3dbc0adf2ed708cea5cde6d9c0e976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `mongo:9-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull mongo@sha256:6933ef893599ee3d6f397120280fa0d1e55a2d823a45287a754d88573aa2b09a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3406732029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d050f696084e761ca51342ee8dde8285466ef371aecf2f6dc5c8fb2f820e74f9`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 22:00:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:00:00 GMT
ENV MONGO_VERSION=9.0.8
# Wed, 11 Nov 2026 22:00:01 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-9.0.8-signed.msi
# Wed, 11 Nov 2026 22:00:02 GMT
ENV MONGO_DOWNLOAD_SHA256=4841753f49c1e3e25d12ff63a049894b7d56e397f27f05303ccde5144a6ae060
# Wed, 11 Nov 2026 22:02:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 22:02:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Nov 2026 22:02:16 GMT
EXPOSE 27017
# Wed, 11 Nov 2026 22:02:17 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd604d2931022dc6e7d657fc7578bf05f73f18e1e28e5b14478f7a5bd5dd2e1`  
		Last Modified: Wed, 11 Nov 2026 22:02:35 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734c9dd095e9ebfb7b1d1a72a59a3f2875f63b0c02808e28518f560d6f66b439`  
		Last Modified: Wed, 11 Nov 2026 22:02:35 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f7fbd5f3ef383aba29e2ae6b19656561c57f1c75699491e8caccd48eea1069`  
		Last Modified: Wed, 11 Nov 2026 22:02:35 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1dbdb595d3e958dffec7fd1daa5d90493a6791d7da39951d56c8dbf826317`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6c816c3abc5036d6884ffbdfb16228c512c658a7488673a16a3a5631952f5f`  
		Last Modified: Wed, 11 Nov 2026 22:03:53 GMT  
		Size: 999.4 MB (999392155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cc37f3c19e50248676f55684956606b53fbb2976d953f5f8aafb5caa719649`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639dc6243913c26513db93c63ce38e5aef0168e5b467e324ea001308131598f6`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca4d454c2ac1a5a57aec8930ae5dff3dfe84d6cf7d8580451c76b9b2ee7758f`  
		Last Modified: Wed, 11 Nov 2026 22:02:34 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
