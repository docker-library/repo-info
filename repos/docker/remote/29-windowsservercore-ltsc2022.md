## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:170f51606a5d2d5e3e19c9d843c7e0dafffbeef30ce7af35dc5bf7132a51889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
