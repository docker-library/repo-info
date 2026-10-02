## `docker:rc-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:3475600491172503cbbce56a928cb0688a539966efb166cb3dbbbe10113b02c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:rc-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:1a7e0a4262039495c78d7a9788c181d162db24a03f9ef274c690c964505005b3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276613485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a3887ee05114e434b2c3e6eb3698915c44e69ff420f0a31a1203a002d2a6b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 01 Oct 2026 21:38:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 01 Oct 2026 22:11:47 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 01 Oct 2026 22:11:48 GMT
ENV DOCKER_VERSION=29.9.0-rc.1
# Thu, 01 Oct 2026 22:11:49 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.9.0-rc.1.zip
# Thu, 01 Oct 2026 22:11:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 01 Oct 2026 22:11:59 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 01 Oct 2026 22:12:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 01 Oct 2026 22:12:01 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 01 Oct 2026 22:12:15 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 01 Oct 2026 22:12:16 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 01 Oct 2026 22:12:16 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Thu, 01 Oct 2026 22:12:17 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Thu, 01 Oct 2026 22:12:28 GMT
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
	-	`sha256:fd6f927574def3603c5f3cdf988055ee30356b04f875f2f22d93b3e5b5fbb83d`  
		Last Modified: Thu, 01 Oct 2026 21:40:46 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42ef82f6ffca2904cfff973da557dd9a53b7f5f7e94b22640a1d10b6312c3c2`  
		Last Modified: Thu, 01 Oct 2026 22:12:37 GMT  
		Size: 354.4 KB (354408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3380425ae1602679282088b0cf11a9edb9802944ba4c16d4d62f1175de2c639c`  
		Last Modified: Thu, 01 Oct 2026 22:12:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb8f858694aae196c9fbf63947f5e1e61e357dc5c8e9392366efb154c0efa6`  
		Last Modified: Thu, 01 Oct 2026 22:12:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1215ccbb059478b181f9930a84f8908e921f0b8a9580b5bbb4fbc676c8467129`  
		Last Modified: Thu, 01 Oct 2026 22:12:38 GMT  
		Size: 20.9 MB (20915153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b280c7d92f38e773c1e26efc95df9d28aecbacf62e2545f7aae70d60004ce`  
		Last Modified: Thu, 01 Oct 2026 22:12:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e7ba1d042f1c19d88b467fbefe1c7bde6c794904b114b6dd97d304c2d2904`  
		Last Modified: Thu, 01 Oct 2026 22:12:34 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f2cef1a13abe7fd7338ff6a5b41b43e3655b3acc79e76f257919d709165f06`  
		Last Modified: Thu, 01 Oct 2026 22:12:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017200b9bb657f6fcec75eb22fe3f678a71b2c0b61735742f2f0a92521c15786`  
		Last Modified: Thu, 01 Oct 2026 22:12:47 GMT  
		Size: 24.0 MB (23990366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c58a648e3c5b26125e880192203e0852eb142d967a6fd6f607a67469e9df9`  
		Last Modified: Thu, 01 Oct 2026 22:12:33 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a28f0a59afe615a020a263b431ac7c09c946439993592654a91f6f559bee894`  
		Last Modified: Thu, 01 Oct 2026 22:12:33 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73af273e26c7c05a61936086f7154eb5288ebda54097ddc9c247c19fe56e3ce7`  
		Last Modified: Thu, 01 Oct 2026 22:12:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05008543ecfbf292203666f8b9080845b885986f47215efd85073baeacee254`  
		Last Modified: Thu, 01 Oct 2026 22:12:35 GMT  
		Size: 11.9 MB (11853056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
