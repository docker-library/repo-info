## `docker:windowsservercore`

```console
$ docker pull docker@sha256:987caf6f2e47c9f384fe19fd22b5617110581779665d40a170753b34695692f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
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
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
