## `mongo:8-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:38e8b47064af0cf3f98554ef453b86b0739c7dc398cde6418c55b3cf33674f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `mongo:8-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

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
