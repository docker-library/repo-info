## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:d34d97b562c97b2253167abff8576d7b92d7da34c251958309c66e2f33863ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull docker@sha256:54a9d6e37dc1b1e5722a015ffd3c5764af0de4eded79a31902816286a5cb0bbb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2304971608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870e1df1c9d4f9a888ca3a21fc0611a2ac118f06c3ba07ab82cdec031088b34`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 00:39:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 00:41:25 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 13 Nov 2026 00:41:27 GMT
ENV DOCKER_VERSION=29.9.3
# Fri, 13 Nov 2026 00:41:29 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Fri, 13 Nov 2026 00:42:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:08 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Fri, 13 Nov 2026 00:42:10 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.windows-amd64.exe
# Fri, 13 Nov 2026 00:42:12 GMT
ENV DOCKER_BUILDX_SHA256=b51a432f9013fe9b506e34df9eb4e3d2464350ddf792d579ce07f36cc57cb743
# Fri, 13 Nov 2026 00:42:51 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 13 Nov 2026 00:42:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Fri, 13 Nov 2026 00:42:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-windows-x86_64.exe
# Fri, 13 Nov 2026 00:42:56 GMT
ENV DOCKER_COMPOSE_SHA256=e4316597452650ae92fe9719a2a7c2fce8f56c5ceafed88d2aed6e39b2b2b2d0
# Fri, 13 Nov 2026 00:43:18 GMT
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
	-	`sha256:b9791a4deac2d4fc5a57091fdd10f6f34cb9e26776785130dcf1878b05ac8c94`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458970e571a66a3f4e2276abc2a1124674809db8642e2ee5c762316786fe2e27`  
		Last Modified: Fri, 13 Nov 2026 00:43:29 GMT  
		Size: 345.6 KB (345625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a257809a4dad6fcd6333da68b74dbe88f0396b9ca74a9f0c1f08d7f8735151e0`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7dbeb66c7dc15575c7535538b779f6fb50624e25e683696553fb7903864eff`  
		Last Modified: Fri, 13 Nov 2026 00:43:28 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39517584f51f08c69a66c8e9e36c28614b696a690adfb33fd44d8696387a3f69`  
		Last Modified: Fri, 13 Nov 2026 00:43:30 GMT  
		Size: 20.9 MB (20878292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cf9845cd84893d1b9950bd9826337abff8b4dec3b99e6c6709b8c25e02ee3`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b210e190d3ce36f53809d2d3139725c8ec10a7c6e957ca5b0553079ba595a6be`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e52004c58f19f972fb6720fde83aa4574729921ad6a02ea9aca968b35f66ae`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe6529878ee00df3e29d8cbbb704f65810ce89b0ed08808a77658f1ee61bafd`  
		Last Modified: Fri, 13 Nov 2026 00:43:44 GMT  
		Size: 25.0 MB (24954306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7dad5d7b27e44b17f33f6c36f3f28acbbdd75799a54d518318a6d177338253`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fc33515a5de65bef0382584ce4153d4c13cd67f2dc2325ce1f5785e974122`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fb9082e0d149b1506ab89d2a708bf0a2fd08f7d1f36b0f5f0f2ed89946bcf4`  
		Last Modified: Fri, 13 Nov 2026 00:43:25 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67029b172c37e639905c04999029aa112b0cb29a82cc9cd36a3310d57527f1d`  
		Last Modified: Fri, 13 Nov 2026 00:43:27 GMT  
		Size: 12.4 MB (12433820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
