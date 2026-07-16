## `mongo:windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:e7e4ba434c2676a8a67fc7a0371aa83b5c67654f09f7ab8bf1dcbb807d23bf24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:6a395a8256196a1617b1d32bd8d3775ae93fac389456367271d003c4116f13a1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2975540201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd5bfafdbd467d1b9578d0cf74e5ffaca68c17cbed69f4affde1b3fd5e10360`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:27:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:27:26 GMT
ENV MONGO_VERSION=8.2.11
# Wed, 15 Jul 2026 23:27:27 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.2.11-signed.msi
# Wed, 15 Jul 2026 23:27:28 GMT
ENV MONGO_DOWNLOAD_SHA256=564477a3abee2720e78714dd6d2d9757a2d8e5cf24ecd6665cb788be95626c36
# Wed, 15 Jul 2026 23:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:32:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Jul 2026 23:32:28 GMT
EXPOSE 27017
# Wed, 15 Jul 2026 23:32:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe75e8ec617e2f46883b922201a47b611c2b8dbb7b6b0dd6a9f9d23babf4e8b`  
		Last Modified: Wed, 15 Jul 2026 23:32:43 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95680ad5948c172f775cb3b87e64db0a2e34f49da78130156c60e9fb143c797`  
		Last Modified: Wed, 15 Jul 2026 23:32:43 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8899a578a72914250f2681865ad0535fab682faa2bae5cf335298f5969eb8a`  
		Last Modified: Wed, 15 Jul 2026 23:32:42 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc823b814263073fc961d65e0e1adcf1ef4e7d59d05c7c7cec404f550a67c13`  
		Last Modified: Wed, 15 Jul 2026 23:32:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6b526656c6f05ad66bed217567cd6aa17929f818e8af5974bc1920f21f542e`  
		Last Modified: Wed, 15 Jul 2026 23:33:49 GMT  
		Size: 818.0 MB (817977865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd283aff019e6fbaa90d62fcc5927b7d73a42e474bc50fd7d01a82a6ee5fec5`  
		Last Modified: Wed, 15 Jul 2026 23:32:41 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371f9454771b738a2d9cf12bb13f6a134e285c6e2499951ac640f25262cd618`  
		Last Modified: Wed, 15 Jul 2026 23:32:41 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c139569ac94db8ee26d314ad1e20beb6214d24942237843c8ab012aed6f95ec5`  
		Last Modified: Wed, 15 Jul 2026 23:32:41 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
