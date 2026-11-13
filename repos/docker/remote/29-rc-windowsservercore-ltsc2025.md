## `docker:29-rc-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:f799df772c2ba1b460296192357fa638695a13008bbbbdf519eaa60fb9fd1fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `docker:29-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull docker@sha256:8cfa934bdb23d6a8e7027a9c4f9454cd50155e04c15bd9637bdce86727228b3c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2492133664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed779d5e3d3339db7d8275750b2924ad39a0431841ce7ae0b7eb27098d28800`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Fri, 13 Nov 2026 00:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:36:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:36:50 GMT
ENV DOCKER_VERSION=29.10.0-rc.2
# Fri, 13 Nov 2026 00:36:53 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.10.0-rc.2.zip
# Fri, 13 Nov 2026 00:36:55 GMT
ENV DOCKER_SHA256=1c9067b9ff433a94ff85507e5ba822936cfac615861684f76bc8cae6edc72451
# Fri, 13 Nov 2026 00:38:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:38:05 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:38:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:38:06 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:38:16 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:38:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:38:17 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:38:18 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:38:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a50f93619e4d3535d9a33816d9eed15cc5721b8082f72fc3f856608dbb91f8`  
		Last Modified: Fri, 13 Nov 2026 00:38:35 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdba9aa3584b875820e2a45df8ee73698cf9437f19b2d44e4d466618860353e`  
		Last Modified: Fri, 13 Nov 2026 00:38:36 GMT  
		Size: 365.1 KB (365148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da8d69c8bf9196fc3ed0d1216ea46da85bddf98702e1cb6dfda10614e2ef68`  
		Last Modified: Fri, 13 Nov 2026 00:38:34 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46341bcfeb13577fa94696ba1880d0a96c3ec69e8015b07bddd4ccdce9e00bf8`  
		Last Modified: Fri, 13 Nov 2026 00:38:34 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b9072f60cee45a276298bea22edce3ab3d06e5cce9855cc4c8661b892126ed`  
		Last Modified: Fri, 13 Nov 2026 00:38:34 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719a08598c98d4c143a17c0244d20f6da259df23049a04693c4bc99fe849027c`  
		Last Modified: Fri, 13 Nov 2026 00:39:05 GMT  
		Size: 46.9 MB (46913747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b1955a7eb5fc1a624ad6b85600efe9f8b130b6abb46b111969f7140a3c6ffd`  
		Last Modified: Fri, 13 Nov 2026 00:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3eb11941e359e030227e32b3a4b70c3999dae2c42921d7d1d95b55a17684ce`  
		Last Modified: Fri, 13 Nov 2026 00:38:32 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30cd0cac063625143b25f0efcc542a73adf7e03b041098a6bb6316be14ee52c`  
		Last Modified: Fri, 13 Nov 2026 00:38:32 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0afdac2cda032eaad1f344e47d7ad3de93a2031a63733a5ff60beacf3a5a67`  
		Last Modified: Fri, 13 Nov 2026 00:38:51 GMT  
		Size: 25.0 MB (25006891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e403ad610e6f1ed47b0009ad85d5f3d7c1e649e3117f773246091235db6feb`  
		Last Modified: Fri, 13 Nov 2026 00:38:30 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddadd3977543549db18301e1ac150e7bf86908a14be62a16896fdc3da6571fc3`  
		Last Modified: Fri, 13 Nov 2026 00:38:30 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3e2a60bdd76bb1577a0ab0a45a9096c1ab320be11e3e85dfa91955eab99355`  
		Last Modified: Fri, 13 Nov 2026 00:38:30 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c2dbde4ebde883e349b4a563775229374b7bc8518a556bb5e7f20a16079e4b`  
		Last Modified: Fri, 13 Nov 2026 00:38:32 GMT  
		Size: 12.5 MB (12504129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
