## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:56cb830d5214a985bf883c5c20bce067e352e5bfccfb2a87c44ab6202931374d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
