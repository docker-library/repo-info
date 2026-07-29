## `docker:29-rc-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:fe49d10a75b07416878c6037bcb7c9ebe0d3242c1d1f5ded06b055f37a721f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `docker:29-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull docker@sha256:7c378046a7bf94ab7c43515eff0eb7348b40eec3a491f234f72d57638bb32991
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2335639154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fa38b61f8933243ac60ff3691109234ddb35528b764338a99d789636856daa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Fri, 12 Jun 2026 23:53:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Jun 2026 23:54:09 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 12 Jun 2026 23:54:10 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Fri, 12 Jun 2026 23:54:12 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.6.0-rc.1.zip
# Fri, 12 Jun 2026 23:54:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 12 Jun 2026 23:54:29 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Fri, 12 Jun 2026 23:54:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.windows-amd64.exe
# Fri, 12 Jun 2026 23:54:30 GMT
ENV DOCKER_BUILDX_SHA256=41e1b3fff6541d5f5febb18ff4c9108bec30afd7bf9133b82783735c2078eac1
# Fri, 12 Jun 2026 23:54:39 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 12 Jun 2026 23:54:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Fri, 12 Jun 2026 23:54:40 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-windows-x86_64.exe
# Fri, 12 Jun 2026 23:54:41 GMT
ENV DOCKER_COMPOSE_SHA256=e1a8faff28c7433635201a2222171b727f33ecdb0ed367e54d162d00432f39aa
# Fri, 12 Jun 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559b45efde69fb0246836108c132834daa312442c83228c1d674faada626adfb`  
		Last Modified: Fri, 12 Jun 2026 23:55:05 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d7c2528d4c344009109c23397bae1b3c9c9fef25e12c6bc1d2312d4b0fa33d`  
		Last Modified: Fri, 12 Jun 2026 23:55:04 GMT  
		Size: 374.3 KB (374330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e500b257acab66de69d2cb5cfc6f332ac33e6b6a2f1ecac7b2cfcdd07f8f60`  
		Last Modified: Fri, 12 Jun 2026 23:55:03 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b443fb23caf4c5563d598ec42b778c4421539f7330b68fa0eec721b26d0398`  
		Last Modified: Fri, 12 Jun 2026 23:55:03 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722c8bba11fe64a5dc4332db548c29c6fa7d7ffac80d166b89a89366a821835`  
		Last Modified: Fri, 12 Jun 2026 23:55:06 GMT  
		Size: 20.1 MB (20126125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a04e45edd1924d0dda70a30d8f89450f78f3ae4154515f6ede92d140e97845`  
		Last Modified: Fri, 12 Jun 2026 23:55:02 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a43b3c6d593452003e98c4b5efbb00c21bbd45fa5f6a000ec37e9611b06ab05`  
		Last Modified: Fri, 12 Jun 2026 23:55:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb865e5f1f89fcb37c17fc62d90eaa67e0bee5a61c6c1bcecabe8b116ccdd363`  
		Last Modified: Fri, 12 Jun 2026 23:55:01 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46125ccae64983f8d08445e8383f830d2488be6db3f9e27d66ff66267d03e895`  
		Last Modified: Fri, 12 Jun 2026 23:55:04 GMT  
		Size: 23.9 MB (23900723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86cadb2501761bea10aae4a7a85b2e1f8e680adf54433bd7e3a2aebd06b7b913`  
		Last Modified: Fri, 12 Jun 2026 23:55:00 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a84abe09730f3cbc952e044134c9d2dfa8e29ccce25becf0fc003a695be80a4`  
		Last Modified: Fri, 12 Jun 2026 23:55:00 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a89d24969de47b342de5f866d3d71e9e172105de0900c5b4cd5bccea1c2019d`  
		Last Modified: Fri, 12 Jun 2026 23:55:00 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733f0dac64d68efd983bcc2ed79d5ae683695f9d5a170c087fd2b96399faa105`  
		Last Modified: Fri, 12 Jun 2026 23:55:02 GMT  
		Size: 12.1 MB (12083427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
