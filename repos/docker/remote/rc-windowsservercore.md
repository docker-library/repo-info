## `docker:rc-windowsservercore`

```console
$ docker pull docker@sha256:5f0332b868a6709ac27c3ac68c170584699651364e62cff53edefb0ea2b205c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `docker:rc-windowsservercore` - windows version 10.0.26100.33822; amd64

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

### `docker:rc-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull docker@sha256:26f234d8f7577971e602f54eabeaba260d6f1e232e95b19e18524d5904b3b317
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2330873819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7ec6ef995eabc7248645efd53ef9eb29ad2f17bc27b28428f465cc621a89e6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 00:35:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:37:18 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:37:20 GMT
ENV DOCKER_VERSION=29.10.0-rc.2
# Fri, 13 Nov 2026 00:37:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.10.0-rc.2.zip
# Fri, 13 Nov 2026 00:37:25 GMT
ENV DOCKER_SHA256=1c9067b9ff433a94ff85507e5ba822936cfac615861684f76bc8cae6edc72451
# Fri, 13 Nov 2026 00:38:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:38:29 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:38:31 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:38:33 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:38:59 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:39:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:39:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:39:03 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:39:11 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34d314a15c4d405c54778466182b9fe4b98f8f86b9ea43e3fe418f69b7640f`  
		Last Modified: Fri, 13 Nov 2026 00:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a1a5d8239589b5b31f1485c0be03221d58e604bc5fd6bec71da36f26f3e77a`  
		Last Modified: Fri, 13 Nov 2026 00:39:22 GMT  
		Size: 345.8 KB (345836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a007794d3053979882de5cc113e4e00123266c6701affac1c8219d1ef094c5b`  
		Last Modified: Fri, 13 Nov 2026 00:39:20 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192a9250ee64846721a9dd1ad3209e362240ae4db0f2eced11a3cf4280fb29ee`  
		Last Modified: Fri, 13 Nov 2026 00:39:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19100852a2b25401482bfcb78da48789ae4b5efaacf09f5241e9abd3b04e095`  
		Last Modified: Fri, 13 Nov 2026 00:39:20 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4bc323f9cd2aa84b6fffa915a61fd82e31de822ae7221e604cc95ba6e71eeb`  
		Last Modified: Fri, 13 Nov 2026 00:39:53 GMT  
		Size: 46.8 MB (46766020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2971d7dad05c06d544707714de84330bdd9b1c27891bff437ff1e9947b539fe8`  
		Last Modified: Fri, 13 Nov 2026 00:39:18 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605af822abecc21881aeb52b961ec3851c60381fb935e1831d1e6bdff2cefc4d`  
		Last Modified: Fri, 13 Nov 2026 00:39:18 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17cd705334532d2581b95f5e142e8091b87385ca4cf1520a7859b38ee5585a9`  
		Last Modified: Fri, 13 Nov 2026 00:39:18 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d549b5847f44cc50181a77b93ccddb59530a59ea46dcc6e35601e61fb937aa`  
		Last Modified: Fri, 13 Nov 2026 00:39:41 GMT  
		Size: 25.0 MB (24954556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43810002deb17e54be5d3ca1f32369498d37820e5a6f41874cf31ac7c23dd85`  
		Last Modified: Fri, 13 Nov 2026 00:39:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56cc681219b9f2cee61f68c8f37165bc51b99da1becef9d2a67d2410bfeac9f9`  
		Last Modified: Fri, 13 Nov 2026 00:39:17 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee62ccbf027635ffd117b9f902ff1cec099bab22415e0eae8499d22657f2118d`  
		Last Modified: Fri, 13 Nov 2026 00:39:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737e600deaca518a5ef46646a788644c66bf7519aa6ea80dec6072d292dcc67a`  
		Last Modified: Fri, 13 Nov 2026 00:39:18 GMT  
		Size: 12.4 MB (12446552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
