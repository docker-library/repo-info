## `julia:1-windowsservercore`

```console
$ docker pull julia@sha256:4cd3345c7d3b4bbcb1fdb86ecc030894b9f92dc41392acc3b2315b96a4515ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:1-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:4ca23aba162ddc0f3748ad695d096151b6f7c61c011786fe1e8afc5678f0c1f4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700853039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384471d80a6a72485150d71258d83127b7e8f81e340e88eb728df66d7f19f16c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:46:55 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:46:56 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:46:57 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:48:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad518e260a77dffb99a4d5a3caf97ebc98e8041eda44a03846c95375a71fed0b`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23768f172a520477ec018d4abe48cdcb8fffc2f8bb17e1d2c3df781546a334e8`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ebc390116de35d8fe362f8349c81ce08c7ba60f4aef2e382c3a2466e529d73`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b97598c1d71a517ccf3650bfa5d8e1b0f13e4adb903f1e3f4f3d42d3c4c8e9`  
		Last Modified: Fri, 16 Oct 2026 20:48:59 GMT  
		Size: 308.9 MB (308852308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03797a51205c787c36ef206d6c1362717c6865435763ee69da40486bc6d198f`  
		Last Modified: Fri, 16 Oct 2026 20:48:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:1-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:3182ed87a0f6d4a7445e471036deed13915a545665408567fb4a5a3d7fa48a47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535123625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413009c92e57b811e9d22134f588a879400658fd41021d7ee24c22c365352a6e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_VERSION=1.13.2
# Fri, 16 Oct 2026 20:47:02 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.2-win64.exe
# Fri, 16 Oct 2026 20:47:03 GMT
ENV JULIA_SHA256=9de7f1e34839e053cc1c8f44c89c1235506e5fbd4adcdcce88b88bf1647d8f50
# Fri, 16 Oct 2026 20:49:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:45 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157e9ed2e9d7cdb997941c379ba741360fb077d98de0fa5a730b71584018c2a9`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef9a95ea9b30b624a12f9c4c592d3533aa9a89c840cd9361fcc1ce42835ae3`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464625ecd46addeae25d21a47edad65cbdb9c3f1ccbd359d4b2ffe6727160d92`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9801d74d4f3791626b71a7b91cbb897aca8eaa34bee68573f8582702f33e8`  
		Last Modified: Fri, 16 Oct 2026 20:50:32 GMT  
		Size: 308.8 MB (308831575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74bc1ba10945cb1464b4160801225a45d3c7daac4b7cb9dcd52dd53172e01`  
		Last Modified: Fri, 16 Oct 2026 20:49:51 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
