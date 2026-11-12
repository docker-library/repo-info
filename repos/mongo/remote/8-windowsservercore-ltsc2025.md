## `mongo:8-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:7849ed7d9f52674049efa9ddb50ca213addd176ea7ddd10d0a93050423ae7357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `mongo:8-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull mongo@sha256:e320a0ffd90df21c140606807ff8a6ce24ab821e101511c6cc908c51489e9cdf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3331566453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cd9574d209a4ed9e3d96400a17a91d2465002217e3d2e4095017402e90e57c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 22:00:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:00:18 GMT
ENV MONGO_VERSION=8.3.17
# Wed, 11 Nov 2026 22:00:19 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.17-signed.msi
# Wed, 11 Nov 2026 22:00:19 GMT
ENV MONGO_DOWNLOAD_SHA256=de68c65242b36d408c82095825786367481e4f4b6550ea308d6bf86c9690d5b9
# Wed, 11 Nov 2026 22:02:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 22:02:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Nov 2026 22:02:23 GMT
EXPOSE 27017
# Wed, 11 Nov 2026 22:02:24 GMT
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
	-	`sha256:f0c20fabd562275939339ced4c167bcdffd3a3b07e379ef58646e5f777787a59`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d09b325ccfa07f3950d9c4a908d030ae0bfc9db8e025f9c510aead779d1b64`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c98e27f3d22c7623517c0f86bb09fcad5c3ede9defc453cfa8cb38328607bf`  
		Last Modified: Wed, 11 Nov 2026 22:02:30 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcc10950f8ce22c0d20cb1616d78e450bfbe3af2945942fcc590d4d6b6b370c`  
		Last Modified: Wed, 11 Nov 2026 22:02:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93d9b946196e00a3dace4781dfe2b65aa8a8887d772da5dc8f6031b9e81ea02`  
		Last Modified: Wed, 11 Nov 2026 22:03:43 GMT  
		Size: 924.2 MB (924226569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef2a36e4b14add3e895b703658e11f0726737de962dd124f2b844ef1b2f4aa9`  
		Last Modified: Wed, 11 Nov 2026 22:02:28 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6e8c3314c8979593a0858105560000b44ebcebece9362cfde45cd1c58207b0`  
		Last Modified: Wed, 11 Nov 2026 22:02:28 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43476727c4f873599ec9795e7cd880e25a8ecd9fee2a2a8936702a88f4529e71`  
		Last Modified: Wed, 11 Nov 2026 22:02:28 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
