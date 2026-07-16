## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:a29deb3372e442655c9e3913011579238eaca2953befe5ce6b9bd888d8ff5cdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

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
