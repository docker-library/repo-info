## `docker:rc-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:87c19e887e85c3a7f0318a2e754cfffbd0683ff46a97a44e63ce118e9355eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:2ea04d1c1f7915fc059a93d3bc018927d406691ba8812f96b74238cbbdd9f640
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411626668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e04261f5ce04f6881b77ba2b50ecfcf27fc7050fca5603d7387228949a7476`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 29 Jul 2026 18:12:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 29 Jul 2026 18:13:57 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 29 Jul 2026 18:13:57 GMT
ENV DOCKER_VERSION=29.7.0-rc.1
# Wed, 29 Jul 2026 18:13:58 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.7.0-rc.1.zip
# Wed, 29 Jul 2026 18:14:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 29 Jul 2026 18:14:16 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 29 Jul 2026 18:14:17 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 29 Jul 2026 18:14:17 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 29 Jul 2026 18:14:26 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 29 Jul 2026 18:14:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Wed, 29 Jul 2026 18:14:27 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Wed, 29 Jul 2026 18:14:28 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Wed, 29 Jul 2026 18:14:37 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
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
	-	`sha256:223ef361c3a08c236cd027a487456868f79581bb93e3e0a700ff6ca31d558fba`  
		Last Modified: Wed, 29 Jul 2026 18:14:46 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbc9a871d8d0cbad15c25b1f35f9a6926c0317f38c82bc651fcbe190833f5dc`  
		Last Modified: Wed, 29 Jul 2026 18:14:45 GMT  
		Size: 392.6 KB (392563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4640ac88eadda527086d3ad9f00638865f54fcbfd36141f73ccaa34913d15fca`  
		Last Modified: Wed, 29 Jul 2026 18:14:45 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff4b6c48bc9525d0055f4bf56d788e377b3026841aa7188462b1ed343ffec62`  
		Last Modified: Wed, 29 Jul 2026 18:14:44 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380323fde57266d1350e793a069dd80f685177ecb7e0528fee908495da732876`  
		Last Modified: Wed, 29 Jul 2026 18:14:46 GMT  
		Size: 20.2 MB (20216450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79d8ab6bd4fec26b8b89de0bb9150cc737039f92e7486e669eafbe5cac403d`  
		Last Modified: Wed, 29 Jul 2026 18:14:43 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17d1300daeb3a72be12b25d5661c889a9ad7192ab5856bd2564fa0a46ab6955`  
		Last Modified: Wed, 29 Jul 2026 18:14:43 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b627abec8b470b130b98983438ca0bfb25e6e7539c55886ba6c8256550372bfa`  
		Last Modified: Wed, 29 Jul 2026 18:14:43 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21011db4d2a4ca9bb7f4f90ec9c190680dc1aaeee56a7a26f4e96bc4972d45f5`  
		Last Modified: Wed, 29 Jul 2026 18:14:44 GMT  
		Size: 24.0 MB (23961689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f286b47ac31a5249cdf3294745ef1ca240276c97554c13030c01d8f2252c3092`  
		Last Modified: Wed, 29 Jul 2026 18:14:41 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bc519eb3a989cfa5106aae1d98de793b1e400c0f4464834c86d6ac114824db`  
		Last Modified: Wed, 29 Jul 2026 18:14:41 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf987b85e67eba2c4633efaa60c26511bb3cc64b28767702d38c8c514b86739`  
		Last Modified: Wed, 29 Jul 2026 18:14:41 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37fc0bf14233719492700bd748c2962af8e318b295e353107c8423759420865`  
		Last Modified: Wed, 29 Jul 2026 18:14:43 GMT  
		Size: 12.0 MB (12036197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
