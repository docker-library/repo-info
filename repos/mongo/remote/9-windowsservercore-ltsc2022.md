## `mongo:9-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:a6f1b36ec3900db94305232dcd9d8ca580c73219a7813ffc9afbb20ec9e57475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `mongo:9-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull mongo@sha256:92b711546eb06559f129fbe3e8aedb0144675d68426621844ae8792ca878ca2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3245723782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8539e33c246305f2a9d08880557a515b3d8e83a34added6ce7d245a8f418f3c3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:08:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Nov 2026 22:10:53 GMT
ENV MONGO_VERSION=9.0.8
# Wed, 11 Nov 2026 22:10:54 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-9.0.8-signed.msi
# Wed, 11 Nov 2026 22:10:54 GMT
ENV MONGO_DOWNLOAD_SHA256=4841753f49c1e3e25d12ff63a049894b7d56e397f27f05303ccde5144a6ae060
# Wed, 11 Nov 2026 22:12:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 22:12:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Nov 2026 22:12:54 GMT
EXPOSE 27017
# Wed, 11 Nov 2026 22:12:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08b2768c618482e0c4585893cefe671c6a6b8777ad8691afb1d088a3b4e703b`  
		Last Modified: Wed, 11 Nov 2026 22:10:37 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca1002789d2aeed9f91634cfa450e38e290c2bcaa166e3dc082ad1abf782a20`  
		Last Modified: Wed, 11 Nov 2026 22:13:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207e00bafce527b6aab55b54aae7c1f9cf8f41768829ad028c4d152d8f3288e2`  
		Last Modified: Wed, 11 Nov 2026 22:13:13 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fe6fa87bfc90a41a42af8067323562d89343394986845d43dfdb0893dbb38`  
		Last Modified: Wed, 11 Nov 2026 22:13:11 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945b8bde51a347dc49942a4b6f5523fb52f2458a9b0a097d2fc4ce1ae5d5b51e`  
		Last Modified: Wed, 11 Nov 2026 22:14:28 GMT  
		Size: 999.4 MB (999366913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dc0bbf3164a9aaf5806b143c3f72ce6d0bf0a9d2a0840b69f82f2373f2a68b`  
		Last Modified: Wed, 11 Nov 2026 22:13:11 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad605369b3814fa241636ed511b5f852b168075bafe906a272cab2e611345750`  
		Last Modified: Wed, 11 Nov 2026 22:13:11 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791d2813e06111aa5ac6a009f1909e4bad01f4e03727b6299ad9dbaee4e3d7ad`  
		Last Modified: Wed, 11 Nov 2026 22:13:11 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
