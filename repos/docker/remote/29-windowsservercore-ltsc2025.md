## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:794c5d6637872f7c02b454f14c7706b080cd427a42606f344732f91e4603c2e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:245953b07981718c60b7086179b45e9d56ef13097a7b0abc8c5f292d1ef63c7e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450015952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519b8dbd1dd0a52613591cd2ace90d1034cd4067688c28caf78037262bce125b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:31:21 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 16 Oct 2026 20:31:22 GMT
ENV DOCKER_VERSION=29.9.1
# Fri, 16 Oct 2026 20:31:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.1.zip
# Fri, 16 Oct 2026 20:31:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 16 Oct 2026 20:31:51 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 16 Oct 2026 20:31:52 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Fri, 16 Oct 2026 20:31:52 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Fri, 16 Oct 2026 20:32:04 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 16 Oct 2026 20:32:05 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 16 Oct 2026 20:32:05 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Fri, 16 Oct 2026 20:32:06 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Fri, 16 Oct 2026 20:32:15 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
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
	-	`sha256:261fa8a1477168d2d45a3af80df81e89b321a01877c9ef6df165c25517d40f1d`  
		Last Modified: Fri, 16 Oct 2026 20:32:24 GMT  
		Size: 355.4 KB (355373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d849a6335bf1b41cbc2a869cb6e0bad55c587f8f7543f2aa7f615765e6dcf1c5`  
		Last Modified: Fri, 16 Oct 2026 20:32:24 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577066384a6adb9b7bf513b99b69383000652da8571b600abd3134144679cb78`  
		Last Modified: Fri, 16 Oct 2026 20:32:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131e2e13f29348e007fd74bb51740d729c95728de5642d05b6cc0423866ca04b`  
		Last Modified: Fri, 16 Oct 2026 20:32:26 GMT  
		Size: 20.9 MB (20943930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7dc2b18432e7beabc749911289eb46e5ed4bae47a8448bb6243dbd17534f4c`  
		Last Modified: Fri, 16 Oct 2026 20:32:22 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c598113f1ffdc9a611c9465948438407e2084a5a42d876ee169c28e846298b4`  
		Last Modified: Fri, 16 Oct 2026 20:32:22 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0e7b11417fcd714359305f1f46f9f1b589b397883f56e161b20fffd7b8b626`  
		Last Modified: Fri, 16 Oct 2026 20:32:22 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4822e919f8efce5cbfcd07c6e4e5903e79d86d782e194ea059ac91bc9b53c`  
		Last Modified: Fri, 16 Oct 2026 20:32:37 GMT  
		Size: 24.8 MB (24755679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded3ef73d6f978d0a95c14750e3f54bf74e0b45ee84d4cf7dc54b55ff04e59c6`  
		Last Modified: Fri, 16 Oct 2026 20:32:20 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d3ad9727f53b10a0dae5226e44ff3c381aeb8fdbfed8c876968415edcbdb23`  
		Last Modified: Fri, 16 Oct 2026 20:32:20 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec47f7d9a7c53e07b04af56c3079b0d1af5fa02ecbed487ce5c2aab6dd69050f`  
		Last Modified: Fri, 16 Oct 2026 20:32:20 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3d9f0b4473cce6d8da3d78a60b3afd41e60bf7854adc91f55535779be7d56d`  
		Last Modified: Fri, 16 Oct 2026 20:32:22 GMT  
		Size: 12.0 MB (11954970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
