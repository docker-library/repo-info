## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:871e6ed53eca533649112880b86dd0dc33bcc2ddf5caef6cd40242561f8cf0e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull docker@sha256:9791ba306607c3a7b8ea19cb50e5104530a9fb5f948ce2c5b6e01661ec466b22
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2309084508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b862e4df3597052e17241de45dbeb78746aa4c62c30ff2467504b0b9a38910`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 20:05:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:33:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 16 Nov 2026 20:33:39 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 20:33:39 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.10.0.zip
# Mon, 16 Nov 2026 20:33:40 GMT
ENV DOCKER_SHA256=bb894f67d85155e635ce71980fb2cf587e71dad8c41cc145c42a0de5160b6561
# Mon, 16 Nov 2026 20:33:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:33:52 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 20:33:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Mon, 16 Nov 2026 20:33:55 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Mon, 16 Nov 2026 20:34:02 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:34:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 20:34:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Mon, 16 Nov 2026 20:34:05 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Mon, 16 Nov 2026 20:34:16 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
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
	-	`sha256:95e0928c1f77a57505ab4972b35ccca914dd5836abc85303f44116eb88c248b3`  
		Last Modified: Mon, 16 Nov 2026 20:05:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d86240b73b2097c8e8348dcbe3200a52eefcb2eb73a000eee5915179a34422`  
		Last Modified: Mon, 16 Nov 2026 20:34:26 GMT  
		Size: 340.6 KB (340610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d7f336b8b3aede61317460bfe7e73b18fec5101a62201973da52f04fc67f6b`  
		Last Modified: Mon, 16 Nov 2026 20:34:24 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc44fc3cb4ad7c73c6f7b450f6dbd7de8036ea937a2bd12bb5b658068665c303`  
		Last Modified: Mon, 16 Nov 2026 20:34:24 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8532c387545feb455bc90a061ef7d37305bed64ee652808e81d9e37e4eb6244f`  
		Last Modified: Mon, 16 Nov 2026 20:34:24 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce55697a5bffc84c740a47b1f8d6d290b755822af49b8980ffc7f8a3d917e9f`  
		Last Modified: Mon, 16 Nov 2026 20:34:27 GMT  
		Size: 25.2 MB (25171107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2810904a05cbcd3af6a5dd4e3a0ed5ec0a894879d5d6e6b380cfa1437535ec54`  
		Last Modified: Mon, 16 Nov 2026 20:34:22 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa16f4fe46a2841de4808092eafe76d97e5c6bc68ef38a6bc20b248539a7f22`  
		Last Modified: Mon, 16 Nov 2026 20:34:22 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c3fd64471f7d77593e80494f5b51e4d4d516b9da6a2e9a947186dd6a0db52b`  
		Last Modified: Mon, 16 Nov 2026 20:34:22 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ed08983bd63728ffb6bef1fddbfbdf8cbc01925297fb5c0650369e80aaac08`  
		Last Modified: Mon, 16 Nov 2026 20:34:24 GMT  
		Size: 25.0 MB (24988425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1da7df50e26c0313db4bb5272bdd7ce9ef34d9336b8aee3fcd11f27608cbd`  
		Last Modified: Mon, 16 Nov 2026 20:34:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281afb0519237d177ca5a04b1cb8bfb58fb1c05573a1a1deefea1e3a0bea5657`  
		Last Modified: Mon, 16 Nov 2026 20:34:21 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379c4b4a104ced59c9c996e3144f408e19e784526285b5714ff2134fe41ed29b`  
		Last Modified: Mon, 16 Nov 2026 20:34:21 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc243b6ec96ee09236ba6c9ee50c7c5bdb268f2518a27774c7d5d5ee95369`  
		Last Modified: Mon, 16 Nov 2026 20:34:22 GMT  
		Size: 12.5 MB (12480634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
