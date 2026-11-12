## `julia:windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:c847e2ef32ec11d17e9f18f1cd3efcc1570e72b2fd7e20abfa3dfeee2f1bce24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `julia:windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull julia@sha256:7f9b46dd27ce5307b8a98be600855a7d520a8fd5883ac827893331c495fc8743
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2555950620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e9172110d1cd02263b1d0d2694419ce5b7e7b01724ab58d895842348e8a55cc`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:51:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:51:04 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 11 Nov 2026 21:51:05 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.3-win64.exe
# Wed, 11 Nov 2026 21:51:06 GMT
ENV JULIA_SHA256=3928c7d1a908eb4797f9ca064cf62757fc49198360ee8251f4a6df9f35c6f9ad
# Wed, 11 Nov 2026 21:54:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:54:47 GMT
CMD ["julia"]
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
	-	`sha256:59f4d5422eed2c478715bb4732415753d4fe16fb151638b8a66d61f84668b2e1`  
		Last Modified: Wed, 11 Nov 2026 21:55:04 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c92188f19a73c7a233bfb47dcad8820dcd29be9b9611df17412f984ee4093a`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22367b81d01667e176b41e137a20d7d6ba422970a9beacb45e10e1a8eb29c74`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd2747f09e1acb77125b88ac35b9d3362c7ff6b96d78078b0c9976ebe718475`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c46d239e43becd418575f4d85fb8e68c1bf4d72497f07a35e2423b06f6cc048`  
		Last Modified: Wed, 11 Nov 2026 21:55:41 GMT  
		Size: 309.6 MB (309596315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439ccabc4c27c896c77a6570c9a5a3f2264b5454d03a0a2bdcabf824147dcf0`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
