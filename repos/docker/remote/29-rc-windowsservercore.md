## `docker:29-rc-windowsservercore`

```console
$ docker pull docker@sha256:169003e4bde420e7eea1a5edd16339faecd06616484464f184a8e7a2750bccf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `docker:29-rc-windowsservercore` - windows version 10.0.26100.32995; amd64

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

### `docker:29-rc-windowsservercore` - windows version 10.0.20348.5256; amd64

```console
$ docker pull docker@sha256:dfe6b2e7650e6e8312709f93e596084de43b1ef92b65a74f147a48d66b6c2bf5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2188683843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e43c831b0a87e38b5b73aa5733f6851a9810af67780eb67ecb27a56c8cebfa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Sat, 13 Jun 2026 00:35:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 13 Jun 2026 00:36:04 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 13 Jun 2026 00:36:05 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Sat, 13 Jun 2026 00:36:05 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.6.0-rc.1.zip
# Sat, 13 Jun 2026 00:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Sat, 13 Jun 2026 00:36:18 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Sat, 13 Jun 2026 00:36:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.windows-amd64.exe
# Sat, 13 Jun 2026 00:36:19 GMT
ENV DOCKER_BUILDX_SHA256=41e1b3fff6541d5f5febb18ff4c9108bec30afd7bf9133b82783735c2078eac1
# Sat, 13 Jun 2026 00:36:29 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Sat, 13 Jun 2026 00:36:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Sat, 13 Jun 2026 00:36:31 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-windows-x86_64.exe
# Sat, 13 Jun 2026 00:36:32 GMT
ENV DOCKER_COMPOSE_SHA256=e1a8faff28c7433635201a2222171b727f33ecdb0ed367e54d162d00432f39aa
# Sat, 13 Jun 2026 00:36:40 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2376a8c911322c78bcf916eaa438a921236970f0a0dc6d6db31dc992b1da9a`  
		Last Modified: Sat, 13 Jun 2026 00:36:50 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcbfa6f255848efe4e14d1b5d655ee763b3c251152da49eb846429bca60d640`  
		Last Modified: Sat, 13 Jun 2026 00:36:49 GMT  
		Size: 487.9 KB (487857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b18accefc69b03055e496517c559944e65e234970ff2d753eccfea308ce4e5`  
		Last Modified: Sat, 13 Jun 2026 00:36:48 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f525b6086a1c34d348112292c52b1bdc93cd28e2b1d30e107034d63c134ade1d`  
		Last Modified: Sat, 13 Jun 2026 00:36:48 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2969dea9902bd04b9e71978830582d9ef0fb4768b3ec2b77d2f37352cda8aaf`  
		Last Modified: Sat, 13 Jun 2026 00:36:50 GMT  
		Size: 20.1 MB (20103118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbd76753e2c2652e1b81cbc3f0970f24e30ce560169e051212303abde91edff`  
		Last Modified: Sat, 13 Jun 2026 00:36:46 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ebc8a0e7c931698f62d4de98f1778a5bcb3d40d723b72e3140c2d47c266a3`  
		Last Modified: Sat, 13 Jun 2026 00:36:46 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a453596cc075e6b45c0ac0827e7dae14b18d3ee36c429473abe156b601312d`  
		Last Modified: Sat, 13 Jun 2026 00:36:46 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ca835f1bca2a88f66322ebb025304eebf12e54a9e8032f5df8968804edbe17`  
		Last Modified: Sat, 13 Jun 2026 00:36:53 GMT  
		Size: 23.9 MB (23888643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3d046f34000d632aac90b57137ab02c1b8ca7e2f479e9d77b3bf14a0f70bb4`  
		Last Modified: Sat, 13 Jun 2026 00:36:44 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2b9caee2eda901f562e29a0e7251c858ffd8cc6706186a3c0293fe0f1e3191`  
		Last Modified: Sat, 13 Jun 2026 00:36:44 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c4844cb0ab56f8941422edcdc05659892d09a9da12d1d39cc77696310949b`  
		Last Modified: Sat, 13 Jun 2026 00:36:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ab679192c4e0a683180871430ada19f65f941c788272222c16fd0b4c9ffc97`  
		Last Modified: Sat, 13 Jun 2026 00:36:46 GMT  
		Size: 12.1 MB (12066882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
