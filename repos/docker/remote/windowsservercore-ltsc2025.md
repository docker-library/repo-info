## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:b48155300d0aa775974107d5697c929c93f4ae9c2ed875744bc91a2b1e6a5fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:e6252807c88c86bf539f4c1f6cd1dca9c6052af8f343a61d302dda28717722c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514958736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47a41567b4d43e219b577ba31fd51462d81442d82b452aa2ef62c17ddba4400`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 08 Oct 2026 00:08:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:09:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:09:18 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:09:20 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:09:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:09:33 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:09:41 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:09:50 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea074ce10f89d837633416b3fcd99d9f1f649c6d59053c076a25b29a75abce2`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e95fa198cac6127677990bcfb04deb7c297a67943b2fd5ac86c9d86d45fb7`  
		Last Modified: Thu, 08 Oct 2026 00:09:58 GMT  
		Size: 386.3 KB (386349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea32217cb4134ec95a2b7d40d27451c9d408694d3ee56bb2e9e70633a541da54`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25d9041cfaabae20117ca86734d989a258af47ae8d4f27ba2318d7b4e7df3e9`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18be9a2c8236540539a6e434e0dc55fba0400c359c1821c644b6530b0493d0f6`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 20.9 MB (20929080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be060c58ab6d6737d1391b7623999e0312b5d83b4144e41616828dcdfd3d92`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88ac84b8d590e5d4ee80b7efd9945ce6619b2160436a8325a7d1a3fe850c88`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854f2217a052cf1531ae2d1d3433dd31b7c24f50b2759fbcf774078bf762d891`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a7676377ef81e53707d3cd10ea896d0fbec35bce1befc9a0e95d642a5ecac6`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 24.0 MB (24015314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68420612d1d3e893f30cf2ebdf30a317a630e67a231c9799698c992536df891b`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1221bf9d671520af2d94c6d183627bb6c22aa61962916db592817d6c841bdd`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f866ec8cfa08a40728af85991d6d4df898a698815650105c7629877801f7111d`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1411b01afa76166a705758cf99347a3c28abb56e9de2a7fb68c7f22464a0dc2`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 12.0 MB (11986785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
