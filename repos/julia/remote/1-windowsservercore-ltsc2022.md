## `julia:1-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:2e42dcd18730fc9c951c4b1af94377fe11f6879d31d63ae30681a39fc5ac86eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `julia:1-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull julia@sha256:58f7695ffc4fa76666d0e4c578ef6a586914d0ce965bee59a556155551845998
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2555695680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a06a3ac0ba7fd24724061b2fb31dd5fbe9e28a294308b1f92f3c97eb3eadf2`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 19:53:39 GMT
ENV JULIA_VERSION=1.13.4
# Mon, 16 Nov 2026 19:53:40 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.4-win64.exe
# Mon, 16 Nov 2026 19:53:41 GMT
ENV JULIA_SHA256=3c8379cc34b51616b9d2b3014c75c57f14afd3ea940bf540cbdf9ae339224b58
# Mon, 16 Nov 2026 19:55:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 19:55:07 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a7f87c3cd13c4caf00cae2e3e8e47ddc69a0a123ad5dafceee008f2910d72a`  
		Last Modified: Mon, 16 Nov 2026 19:55:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60af583619b7c0d7bb354462e2b19087bda19887baa292d21e96ef208d4842`  
		Last Modified: Mon, 16 Nov 2026 19:55:14 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420c8afa11faeecb5f1153bee57e08a619060aa89230000a5f9ddbabd112cdb8`  
		Last Modified: Mon, 16 Nov 2026 19:55:14 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe198901466f2eb0b344ab122df15ec6d0236ecb47d564d8fb70d761e5419df7`  
		Last Modified: Mon, 16 Nov 2026 19:55:14 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295d641309c6eb14c8ca6e3bf909c06847479ca06eb23380f72adca7e2fec897`  
		Last Modified: Mon, 16 Nov 2026 19:55:54 GMT  
		Size: 309.6 MB (309598402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6470282bbe4be99d831d4d8c70dc130f294340442d88ae804c9710ddc32a62c`  
		Last Modified: Mon, 16 Nov 2026 19:55:14 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
