## `julia:windowsservercore`

```console
$ docker pull julia@sha256:4ab85d1d73f2212fae4c3b189fdc8697c448939f6b52ce3bda5a1cc58ac8d860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `julia:windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull julia@sha256:0d2008b23f81170b2e542b99087f0d5c93166af8874084620d4f00bffa1e5cd6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2716702420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dcfd7d07356cad8ea9595ad1d157f8d636e042b80852e8c4fed9188f311af6`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 19:53:53 GMT
ENV JULIA_VERSION=1.13.4
# Mon, 16 Nov 2026 19:53:54 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.4-win64.exe
# Mon, 16 Nov 2026 19:53:55 GMT
ENV JULIA_SHA256=3c8379cc34b51616b9d2b3014c75c57f14afd3ea940bf540cbdf9ae339224b58
# Mon, 16 Nov 2026 19:55:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 19:55:24 GMT
CMD ["julia"]
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
	-	`sha256:9abc17ba51d3f5ce737189cfa268f08ce31a44fd2e1a9e6b284a2c8df90868ac`  
		Last Modified: Mon, 16 Nov 2026 19:55:32 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e159579e442cc1621ad913b8a420ad1baa362c6d7646c02da38468c77aa574e`  
		Last Modified: Mon, 16 Nov 2026 19:55:31 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e8706efcd3a99a161125d056e28bcf751602516507f1a64d1f5fd8245980c5`  
		Last Modified: Mon, 16 Nov 2026 19:55:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd929985f7daead62524401caf1d1f00aa0a9233b63cc625b0360068c3fa1c3`  
		Last Modified: Mon, 16 Nov 2026 19:55:31 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2ec9f86937d6a220157aacb559721eaa7aacf88847b1100ce06a469606d8d9`  
		Last Modified: Mon, 16 Nov 2026 19:56:13 GMT  
		Size: 309.6 MB (309628268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5dcd213a5b2922054ba2114bf399dc7ad634ccc257f90b063a51acb09a9f32`  
		Last Modified: Mon, 16 Nov 2026 19:55:31 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:windowsservercore` - windows version 10.0.20348.5873; amd64

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
