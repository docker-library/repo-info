## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:cb84edcbaae8136fdc9d6e0bfc6cc90c66a75de864742992685c548d8a56c3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `mongo:windowsservercore` - windows version 10.0.20348.1487; amd64

```console
$ docker pull mongo@sha256:41f0bf47b1037d900c406868aaf709748562279a1a7c79ec5e2380330fe3d13b
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1899617791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4189924233c1472bdd3bb167d3049a174f1a7609e070cf9ab63fa5f8b1942871`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 04:01:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 26 Jan 2023 01:16:11 GMT
ENV MONGO_VERSION=6.0.4
# Thu, 26 Jan 2023 01:16:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-6.0.4-signed.msi
# Thu, 26 Jan 2023 01:16:14 GMT
ENV MONGO_DOWNLOAD_SHA256=935bd3812047391e4295970538d8b33ddbe088676d5356283678368fb1b2377d
# Thu, 26 Jan 2023 01:18:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 26 Jan 2023 01:18:36 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 26 Jan 2023 01:18:37 GMT
EXPOSE 27017
# Thu, 26 Jan 2023 01:18:38 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c906622aa010adfaf1dd8c570ad750108a9b1a91ee1eb148e409e3e4fe68f`  
		Last Modified: Thu, 12 Jan 2023 04:37:06 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b75b848ed0a6e44177dd2f5979011844a42deae7b376a97aa741cdc173359`  
		Last Modified: Thu, 26 Jan 2023 01:27:40 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ea7eb207300d45c0ba9fb039644b4a8a5ceb20109da6aad771640443e2bb53`  
		Last Modified: Thu, 26 Jan 2023 01:27:40 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0990f592ec2558a181daa4203d337987bce976ac7634554596b8a5509861f9c`  
		Last Modified: Thu, 26 Jan 2023 01:27:38 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1909432e60135a45cd8492145d4faa3a97116f94bed584f644bade103121316e`  
		Last Modified: Thu, 26 Jan 2023 01:29:05 GMT  
		Size: 513.6 MB (513578784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dc5d0d87692a8692d6e4c99c609fd74237309563f1cf09a25c377315ad0bce`  
		Last Modified: Thu, 26 Jan 2023 01:27:37 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f202dfedd9aa0d2e74735a065fe2f3200b6247285a4f9d9d61df0655fee5e86`  
		Last Modified: Thu, 26 Jan 2023 01:27:38 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ec5fdec85381f7d245447e6505a78585c1b8cd5f14580a2b011319b5a198`  
		Last Modified: Thu, 26 Jan 2023 01:27:37 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull mongo@sha256:158011828165dd9237399eb5f3bbc91ab5c003991d2b1fbb2ca9e7f632f77e66
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2221341291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c46c81b9fddc39c398eb70bd27007f43bee767cc8a27c06625431ad7fc0960`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 26 Jan 2023 01:18:57 GMT
ENV MONGO_VERSION=6.0.4
# Thu, 26 Jan 2023 01:18:58 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-6.0.4-signed.msi
# Thu, 26 Jan 2023 01:18:59 GMT
ENV MONGO_DOWNLOAD_SHA256=935bd3812047391e4295970538d8b33ddbe088676d5356283678368fb1b2377d
# Thu, 26 Jan 2023 01:21:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 26 Jan 2023 01:21:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 26 Jan 2023 01:21:23 GMT
EXPOSE 27017
# Thu, 26 Jan 2023 01:21:24 GMT
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
	-	`sha256:395b8570f83f3c8d029108d86cd6423032a8b92e50bb0e4dabbacf1905607de4`  
		Last Modified: Thu, 26 Jan 2023 01:29:26 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14be2e412427d020ee14f87c1d9ae66bc07cee27d945c94f106846ce31d43d06`  
		Last Modified: Thu, 26 Jan 2023 01:29:26 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22f63c7937e6b341581a3e4dd3a60c3665a9fe662d3b5dc72967677f7bd4dcc`  
		Last Modified: Thu, 26 Jan 2023 01:29:23 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1c9540fbde2b0badb037c16f25263fe571fd3f802b516fe92ec3bbc532daa5`  
		Last Modified: Thu, 26 Jan 2023 01:30:51 GMT  
		Size: 513.4 MB (513387486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d5b0da69c5cd6534b064c7c89609a9e06cf184df95538984a1802aaafafb92`  
		Last Modified: Thu, 26 Jan 2023 01:29:24 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664c55197a04f7895e1fc24d7facfe3126a5b14eb0780d04cd4026a192327b54`  
		Last Modified: Thu, 26 Jan 2023 01:29:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e3eb5510cf2fbcda1cfae3a14d1f9939b4743b959c4aed94460e57d7321d8b`  
		Last Modified: Thu, 26 Jan 2023 01:29:24 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
