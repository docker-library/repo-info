## `docker:windowsservercore`

```console
$ docker pull docker@sha256:381483bce27fba2118caf4d56677aa9f26dfbcfe439cf40a53d8b8d259cd95aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5499; amd64

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
