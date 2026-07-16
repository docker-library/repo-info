## `julia:windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:6a116c496b9478940b0b2fa4a189f0b959352fdcc6e21bfe3225e379c21ad868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `julia:windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull julia@sha256:912f080875df7a3e44fc01d116965b46103d8f5aae4c67121bb9c02c6e7c1fd3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2643524984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582ee3aea5324a6eb69e77bb583f1f0cd531e9c0bb29c5d6c022e4b9383b39a2`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:21 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 15 Jul 2026 23:03:22 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.6-win64.exe
# Wed, 15 Jul 2026 23:03:23 GMT
ENV JULIA_SHA256=de2d50f23995d71c224423a4872673a4e9be2c9676fc975cd90b25fc3a5e6cb6
# Wed, 15 Jul 2026 23:05:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:05:27 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6fefa3b089dc4196805d9a08f8f011a49eff65c05c576d40f99a3c63c3b4dda`  
		Last Modified: Wed, 15 Jul 2026 23:05:35 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3128ac933dfcc3cb17445beca627573b11b46ac8eb2dbca11c1a25b3c2bbe0`  
		Last Modified: Wed, 15 Jul 2026 23:05:33 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061b0472274b62bd79ebd34dd15b90adb7ce81a225b4a388fdc1bbdd5270c4b7`  
		Last Modified: Wed, 15 Jul 2026 23:05:33 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb68b474e17eafd3907ec26926e752ff6bd282dc486028f73c374e6f4e775b9`  
		Last Modified: Wed, 15 Jul 2026 23:05:33 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedd6d26d80b473f57f2b6072bc2d7b5796b881cac0c8384ee273700fb6f8a26`  
		Last Modified: Wed, 15 Jul 2026 23:06:09 GMT  
		Size: 288.5 MB (288510253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339ec777d44b0ad1edccd35d65d378e7b649decb133f719e3bdc3fd3f2fc67cb`  
		Last Modified: Wed, 15 Jul 2026 23:05:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
