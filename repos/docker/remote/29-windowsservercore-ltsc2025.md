## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:367c577f1573eb97d1adf0d4e30378984b4df6bb70b935ef758af8d4a9090148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
