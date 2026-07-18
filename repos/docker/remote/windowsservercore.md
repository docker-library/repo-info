## `docker:windowsservercore`

```console
$ docker pull docker@sha256:7bbec17d16c3c03a6b0835624c4846a906de91ae937eb2a6a7660f23eed18799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:9fc8ab5229888ab14e755640f18e518b2952fb5c900fc239bc41a2bc94b1eaee
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411473994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d69e2ca7c47c407c88d4c5d261504e90d828e97f325302e1514e8455ab20e6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 17 Jul 2026 17:56:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 Jul 2026 17:57:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 17 Jul 2026 17:57:24 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 17:57:26 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.2.zip
# Fri, 17 Jul 2026 17:57:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 17 Jul 2026 17:57:58 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 17:58:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Fri, 17 Jul 2026 17:58:01 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Fri, 17 Jul 2026 17:58:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 17 Jul 2026 17:58:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 17:58:27 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 17 Jul 2026 17:58:27 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 17 Jul 2026 17:58:37 GMT
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
	-	`sha256:36a5eb613b286d1778ced1899f2972a1b6bedff96e221d4620d107a35843b2a0`  
		Last Modified: Fri, 17 Jul 2026 17:58:47 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520d52debd54c222525ba4b74805bfc3c259a94c90d7358a391ce0afdd1d159`  
		Last Modified: Fri, 17 Jul 2026 17:58:46 GMT  
		Size: 374.2 KB (374164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158364f75778e2d90546250dc8bbb661c581c8eb230eb73190a1a70c6703d560`  
		Last Modified: Fri, 17 Jul 2026 17:58:46 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e5db0b2564b94b5ac4bcf01811509b715f62a4ba4b37e1558db8a6b5d8f9e6`  
		Last Modified: Fri, 17 Jul 2026 17:58:45 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37db314b794b3b3fb01381fbf611d926f696e6fa7897f5c62d8599297d8def5`  
		Last Modified: Fri, 17 Jul 2026 17:58:48 GMT  
		Size: 20.1 MB (20127261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09b5530a24e0af883ea65b11c0ec08a2a5aed786b43264a4720d6b51a4418f8`  
		Last Modified: Fri, 17 Jul 2026 17:58:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b0cc4fb6e06afb5feb22b5f8a376395943d5ed652925d2db70261b1066f8f9`  
		Last Modified: Fri, 17 Jul 2026 17:58:44 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855ffceb9546d972f2361bd0d5edf4698c7812cd704e1c7a8565954578ccb2a2`  
		Last Modified: Fri, 17 Jul 2026 17:58:44 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369073cb79aa3996a6a0010609cd4729610996344781262b019219a9cda9a5a8`  
		Last Modified: Fri, 17 Jul 2026 17:58:57 GMT  
		Size: 23.9 MB (23939575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4855387ed8566fe34db1cd84c415859ab84fe94efe8a1156cfe54588e7099a21`  
		Last Modified: Fri, 17 Jul 2026 17:58:42 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b6eba55aa859b02797a8072a81e96dabf515579c56de20ba14704239453091`  
		Last Modified: Fri, 17 Jul 2026 17:58:42 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d031d07c859cfd3229981263040db8fca8b004ef9a740b9aba97d7ab42d56b14`  
		Last Modified: Fri, 17 Jul 2026 17:58:42 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d305a608a448d4a4f09827b8938cbae663c1f8d1bd18cb78a9b2aaca3aefc53c`  
		Last Modified: Fri, 17 Jul 2026 17:58:44 GMT  
		Size: 12.0 MB (12013193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:2517265440b3718d41f441c5300865c5a2c2b78e75e14b9f5cbacff2f05b6a34
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214078487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d90c2a014353600ddcbf2770453d8c0cd46aac12a3fe912bb658875ba3948d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 17 Jul 2026 17:59:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 17 Jul 2026 18:00:50 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 17 Jul 2026 18:00:51 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 18:00:53 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.2.zip
# Fri, 17 Jul 2026 18:01:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 17 Jul 2026 18:01:22 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 18:01:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Fri, 17 Jul 2026 18:01:25 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Fri, 17 Jul 2026 18:01:55 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 17 Jul 2026 18:01:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 18:01:57 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 17 Jul 2026 18:01:59 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 17 Jul 2026 18:02:20 GMT
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
	-	`sha256:259c6990d628d9e82ede5b93d37ad7c79320c73b8c081acb9bd1f2aca7fec03f`  
		Last Modified: Fri, 17 Jul 2026 18:02:32 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c384286088e6f5f52190a4705fb67de96385fa19a25065c274164cb0b5877418`  
		Last Modified: Fri, 17 Jul 2026 18:02:31 GMT  
		Size: 489.3 KB (489268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680c7e4c06720045f36d57ff45a3bdee2181e51ce1fd5f1558b9404394fdc489`  
		Last Modified: Fri, 17 Jul 2026 18:02:30 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e8b47090424105e7cc62e2c32c3de39fd6a459c044c508544d3bb3e7a38831`  
		Last Modified: Fri, 17 Jul 2026 18:02:30 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c80667b77e9d45ab8d2ed5874b1ed695b3b10913993dd91186e6ae0210aba3`  
		Last Modified: Fri, 17 Jul 2026 18:02:32 GMT  
		Size: 20.1 MB (20105383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ecc9cf273b36a578dbfafe8b9d65ef4fdc44106eb551e570e015120e8f131`  
		Last Modified: Fri, 17 Jul 2026 18:02:28 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d902fe6f3f3db411362b79346fa2ff2a5d984b2c6d4b9fdbab822f30d94dc15f`  
		Last Modified: Fri, 17 Jul 2026 18:02:28 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975cd2e9817f78e29789f7919eae46d0bbdd85f4063a3f3f0b0cd5dffd99ac7a`  
		Last Modified: Fri, 17 Jul 2026 18:02:28 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3fdff237eefc57b688600a507171f1add7f6f5c247e8582cc221feac7f578a`  
		Last Modified: Fri, 17 Jul 2026 18:02:44 GMT  
		Size: 23.9 MB (23924996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a925143ed68ffe3381be7cb23061d15340a6dfe8d27f2c4e2273a03764c8e3`  
		Last Modified: Fri, 17 Jul 2026 18:02:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2de9209d53d5a2b0c8ddd90bf14183c440d9c02e8352107a5279b4346735`  
		Last Modified: Fri, 17 Jul 2026 18:02:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3450f1fa58c2ffb8064bb57b2f1980295d23d3e8521d789d640209fbf83589fa`  
		Last Modified: Fri, 17 Jul 2026 18:02:27 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8f938240612fc7af2148d1d439711a2b30b36351becdfa3f378a1b7ca021e7`  
		Last Modified: Fri, 17 Jul 2026 18:02:29 GMT  
		Size: 12.0 MB (11993970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
