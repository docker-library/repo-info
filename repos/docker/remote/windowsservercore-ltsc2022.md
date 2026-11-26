## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:ea4424669dd7a195daacd5c80d290cc15fdbc57fe597b134caaeae9aa608cb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull docker@sha256:77120dd4ac4ccca26ab0bedf03fd3978127271a18a85322523a54409cc657c35
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2309189229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b68c066c58016fc3bf64f31c532401011ce09550f676d145ee8afde0ed7a03`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Wed, 25 Nov 2026 00:02:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 25 Nov 2026 00:03:53 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 25 Nov 2026 00:03:53 GMT
ENV DOCKER_VERSION=29.10.1
# Wed, 25 Nov 2026 00:03:55 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.10.1.zip
# Wed, 25 Nov 2026 00:03:56 GMT
ENV DOCKER_SHA256=cda7ca0c5d7f7373ffbeec50d811de64c22efc43d2cbd10a2e4c95fdea3f4a09
# Wed, 25 Nov 2026 00:04:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 25 Nov 2026 00:04:28 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Wed, 25 Nov 2026 00:04:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.windows-amd64.exe
# Wed, 25 Nov 2026 00:04:29 GMT
ENV DOCKER_BUILDX_SHA256=4a665d2c71f6f87a42313cb8847b8e834e2dfb1626a1b57fcdbaacf41a6c8387
# Wed, 25 Nov 2026 00:04:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 25 Nov 2026 00:04:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Wed, 25 Nov 2026 00:04:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-windows-x86_64.exe
# Wed, 25 Nov 2026 00:05:00 GMT
ENV DOCKER_COMPOSE_SHA256=0c2d9245a5f61e8e3cc85009b8b4888fa82fded08239d28bd6da5ca818eda2b2
# Wed, 25 Nov 2026 00:05:18 GMT
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
	-	`sha256:5ff58902e4503715d88f5efcd8e85d70fa0368601821e8e5a3e026020914f960`  
		Last Modified: Wed, 25 Nov 2026 00:05:30 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae8109207f7f07cad2f4e5dc5e864e4b0a2435177ce2cc21825237dc399c69d`  
		Last Modified: Wed, 25 Nov 2026 00:05:30 GMT  
		Size: 360.1 KB (360095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9865614babe29e1f961040866d85f31f81a7c82e6281ddd51d86deadedbde0dc`  
		Last Modified: Wed, 25 Nov 2026 00:05:28 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f035a5251ed022d3f20bd52aef9429c6d3a762862460cd9f8d1abb75cb8a4a`  
		Last Modified: Wed, 25 Nov 2026 00:05:28 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47924bf20ea1e71642ac16de811f73733154383b1be0e838c1605855ffe2edb4`  
		Last Modified: Wed, 25 Nov 2026 00:05:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126b61a23ca2a149511a27c250df05da14b2ef1efbf38bc3bec2475481bbbe2d`  
		Last Modified: Wed, 25 Nov 2026 00:05:38 GMT  
		Size: 25.2 MB (25156797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c94c9695d569cff05ca5ab893146eb2d937c35010660dc5881ff4804495ea`  
		Last Modified: Wed, 25 Nov 2026 00:05:27 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6808d3f9af6079a1d877b74c08765c06a91b64a4bf040bc9ba97cd326f4afc`  
		Last Modified: Wed, 25 Nov 2026 00:05:27 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13f43e30146da8262ad868feeb14f8e02a090218bbe49b1ad5f9661a472dfbf`  
		Last Modified: Wed, 25 Nov 2026 00:05:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9112d64b9b2e18230082f94e7f4c0bd6955c22a7cd30246c18206190ccd6227c`  
		Last Modified: Wed, 25 Nov 2026 00:05:39 GMT  
		Size: 25.0 MB (24968095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6270dcee0cca46c1b45aeb774a26e77c605bc4b7c9441f653ac11d7ce6ecf7d`  
		Last Modified: Wed, 25 Nov 2026 00:05:25 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb645a7514ca46a538498096baa121728a0af64e40345282b09dde5775d5b6bf`  
		Last Modified: Wed, 25 Nov 2026 00:05:25 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5f989ab82aa4dbf189d3c164d61af14326ac60b556458f8f112df6194a5200`  
		Last Modified: Wed, 25 Nov 2026 00:05:25 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b72d9b68c133451ab5d93981a3d02a3eb34ad2d7023410a587567a37cab1`  
		Last Modified: Wed, 25 Nov 2026 00:05:27 GMT  
		Size: 12.6 MB (12600381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
