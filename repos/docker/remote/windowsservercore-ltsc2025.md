## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:3612ca9fe580db1b066836fe1743667ab2e0086725512f9308e132d769c9f783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:7bb2b1e66fed799fbd53539a10f923db118409156a372ab46f15ad4e060352da
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450083850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a418dd93988be004d3716fb7a20ccc5a13aa36f9b32fc0fcbadfa6ef7364f8fd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:49:14 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 17:49:15 GMT
ENV DOCKER_VERSION=29.9.2
# Tue, 27 Oct 2026 17:49:16 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Tue, 27 Oct 2026 17:49:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 17:49:26 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Tue, 27 Oct 2026 17:49:27 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Tue, 27 Oct 2026 17:49:27 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Tue, 27 Oct 2026 17:49:37 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 17:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Tue, 27 Oct 2026 17:49:38 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Tue, 27 Oct 2026 17:49:39 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Tue, 27 Oct 2026 17:49:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38cdcd43f415097a73cb15237acd7b7db2b52d75c4951d04a5833a6dba19073`  
		Last Modified: Tue, 27 Oct 2026 17:49:56 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071f80fe429053e08e7dcfa4d52794f80a3ef08a57c15f37a98a01c1e41d999e`  
		Last Modified: Tue, 27 Oct 2026 17:49:56 GMT  
		Size: 354.5 KB (354462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc79a8b0204c8adb504c30ca815365e961c88ff3f0e542474aaa1a9ed58d49b`  
		Last Modified: Tue, 27 Oct 2026 17:49:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8164dd9b494d8bbf24d972b58e080ca9d3688acb7de35e2ea6a86f9f50a30`  
		Last Modified: Tue, 27 Oct 2026 17:49:55 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce298f7efc3d6223dbe0a95e62e57df0c50221b9ce44ddaa5aceaceb7a785d67`  
		Last Modified: Tue, 27 Oct 2026 17:49:57 GMT  
		Size: 20.9 MB (20944600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4993c16b45c34f8a2ab9f2358c4a69860c3a76624c180c8048a6455cb2f88f36`  
		Last Modified: Tue, 27 Oct 2026 17:49:53 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97ae29a49a746e555e187d1cc8c01899cdad4bdff0182298fa5d98422af1146`  
		Last Modified: Tue, 27 Oct 2026 17:49:53 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e88133d000e4997fe48c6e2eec8f20a2c3f0884c4da511aa0c4ee4d7f33c813`  
		Last Modified: Tue, 27 Oct 2026 17:49:53 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6c839949ceea1a528f50f09d66cd3b0c68b8443a56254da8820dc58bae771e`  
		Last Modified: Tue, 27 Oct 2026 17:49:55 GMT  
		Size: 24.8 MB (24761353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f0aa2c90ef9626f314988edde69e671f784f0fc69c85dbf36736d24ab2d666`  
		Last Modified: Tue, 27 Oct 2026 17:49:52 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ffa54fb70859ab6fea65c8f9eb24aeacd81b88d531fde472529332e5830847`  
		Last Modified: Tue, 27 Oct 2026 17:49:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a48d99d0f68eb32118c389f4cef98dd7dfdbbda49df6746bcb03fcc811241`  
		Last Modified: Tue, 27 Oct 2026 17:49:52 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9932e159dde8c2bad25264d19ee0b7864fe888db223e118e55b3933a8587a6`  
		Last Modified: Tue, 27 Oct 2026 17:49:53 GMT  
		Size: 12.0 MB (11962704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
