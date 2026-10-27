## `julia:1-windowsservercore`

```console
$ docker pull julia@sha256:e4a4522de7dec3a73a630bbb13ff7e1c1673149ad39ab57913543f31c3db1dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `julia:1-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull julia@sha256:e9d22c7e7af0486ab8c8b57a0c3695a8b51a55f2660f8169d561866bddb171b3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2701670584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fdd057a93ccb10cce1f0064e578d6cfe880aaf1528543e6ae76d88c685913bc`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:48:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:48:59 GMT
ENV JULIA_VERSION=1.13.3
# Tue, 27 Oct 2026 17:49:00 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.3-win64.exe
# Tue, 27 Oct 2026 17:49:01 GMT
ENV JULIA_SHA256=3928c7d1a908eb4797f9ca064cf62757fc49198360ee8251f4a6df9f35c6f9ad
# Tue, 27 Oct 2026 17:50:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:50:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fb4fa4d06e1f2e3039238a4088d1a60c472518c21e6736054dc7ee51694ba2`  
		Last Modified: Tue, 27 Oct 2026 17:50:19 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04abdd40ff3bda43f0641abfe3d116fc7f5e7dc122389c3509222a276ea9d828`  
		Last Modified: Tue, 27 Oct 2026 17:50:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0f1f34846125c883373da8c41c0228bad5b11176c5ba397e44a093f282733f`  
		Last Modified: Tue, 27 Oct 2026 17:50:18 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241fc472c3a318d96b94f475eb8587dbb1389d21faa90e2b7a59996e4b97be56`  
		Last Modified: Tue, 27 Oct 2026 17:50:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9be6a9891ef35d36c6dd0e79bcb263c794de00eeda6837a6dca6d3b6444b7e`  
		Last Modified: Tue, 27 Oct 2026 17:50:55 GMT  
		Size: 309.6 MB (309615172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b3b93bd2c870bff1aa49e61ee6b1ed853385c004bef6ca0937c1b0ac27864`  
		Last Modified: Tue, 27 Oct 2026 17:50:18 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull julia@sha256:e7cb10f3f2c515e5d9cddc21b06883685d353984bf5964aa93c5970c42e05778
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2536656706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a04c506935549cd916f860d4209a6d9b70a7c7f5313d0e8a36a223da1194ba`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:49:26 GMT
ENV JULIA_VERSION=1.13.3
# Tue, 27 Oct 2026 17:49:26 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.3-win64.exe
# Tue, 27 Oct 2026 17:49:28 GMT
ENV JULIA_SHA256=3928c7d1a908eb4797f9ca064cf62757fc49198360ee8251f4a6df9f35c6f9ad
# Tue, 27 Oct 2026 17:50:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:50:58 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488c55bf92a0c0c872918095830a67f20f7404f86708c4f1c76a3927bc0d4d1e`  
		Last Modified: Tue, 27 Oct 2026 17:51:07 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc078f0e1dd489e603fa8c903383ab96c65e32779e21414622d4375afd0da38`  
		Last Modified: Tue, 27 Oct 2026 17:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8926bd4084ac2ccefa6ed60ff47047dfde69e7694cfc0a2624cbf8e20efb9ce`  
		Last Modified: Tue, 27 Oct 2026 17:51:05 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ef311477327e05c24e52a73d123fa5ddbc9d829ca5112e619885814a8695d8`  
		Last Modified: Tue, 27 Oct 2026 17:51:05 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa57f02a12de5230f42a901ac8f0a91ecd17012acce4dc8311029d35a06e518`  
		Last Modified: Tue, 27 Oct 2026 17:51:42 GMT  
		Size: 309.6 MB (309594005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e835b7c174c3c5015a0f73ee7d49526d8d883b26aba63c5e90d0a8bf9c9331b`  
		Last Modified: Tue, 27 Oct 2026 17:51:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
