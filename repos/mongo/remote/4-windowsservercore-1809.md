## `mongo:4-windowsservercore-1809`

```console
$ docker pull mongo@sha256:e159f7c40a1d8ff21ae52713e727e9164626fe0fe0b53de564f8d578f1fae83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `mongo:4-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull mongo@sha256:e4941561cd10b115e249c3277e84c9461a5685abc27dd5f6fd6607982c41cd39
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1953291369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ccae31de63458e3b2662668e126dec2e9cace1b34bbdef55dfb5601498b8204`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 04:22:42 GMT
ENV MONGO_VERSION=4.4.18
# Thu, 12 Jan 2023 04:22:42 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-4.4.18-signed.msi
# Thu, 12 Jan 2023 04:22:43 GMT
ENV MONGO_DOWNLOAD_SHA256=e647d6432ceaf4949bd989e10bad5cd10788f87c41ac2fc054a6e6122503fc64
# Thu, 12 Jan 2023 04:24:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=Client,MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 04:24:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 12 Jan 2023 04:24:31 GMT
EXPOSE 27017
# Thu, 12 Jan 2023 04:24:32 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddb11581da44d3cdb28c7f85a383be02802f60be0bac87414bd080f3f1d879`  
		Last Modified: Thu, 12 Jan 2023 04:50:46 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194466712985d612cdad1a6a766a00d86ea6d52f28398fe8a3867187219cdd01`  
		Last Modified: Thu, 12 Jan 2023 04:50:46 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cebe0274a815d9a3aac1b20beb899ae99441d367957e545689a6dc62048c1b`  
		Last Modified: Thu, 12 Jan 2023 04:50:44 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0f3fe4f9a9195a7992a48d69586c4adf6b5dea00949871cd4d5b659d10721e`  
		Last Modified: Thu, 12 Jan 2023 04:51:33 GMT  
		Size: 245.3 MB (245338050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb01f400047565bc109e4f827248703b5f34092ce4fd264ec6a4dc22b53472e7`  
		Last Modified: Thu, 12 Jan 2023 04:50:44 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a331294c21a3871e328cfd7f48d2bd594b0c79410efbacc95845776bf5ad89`  
		Last Modified: Thu, 12 Jan 2023 04:50:44 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf1882e20890d503a703513229acf071acdbf2480f90e46244dc95e15ae66c3`  
		Last Modified: Thu, 12 Jan 2023 04:50:44 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
