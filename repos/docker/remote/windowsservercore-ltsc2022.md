## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:443eb989d0f5925a8679a396d15844701634577a327bde7055764c667e6e41cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:a2e39882209b0cb12c0c965868791cd64da83abf3e0c31231e04196ff315d8c4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285033232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6fde7b16bf5e6b2803923639f48be4cdccd8791a1b8aabfca0bb280245218c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:49:21 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 17:49:22 GMT
ENV DOCKER_VERSION=29.9.2
# Tue, 27 Oct 2026 17:49:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Tue, 27 Oct 2026 17:49:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 17:49:35 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Tue, 27 Oct 2026 17:49:35 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Tue, 27 Oct 2026 17:49:36 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Tue, 27 Oct 2026 17:49:46 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 17:49:46 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Tue, 27 Oct 2026 17:49:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Tue, 27 Oct 2026 17:49:47 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Tue, 27 Oct 2026 17:49:56 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181ee9f6ffd0723d844a7907cf31bb25142495506b6ec2308bfc26e848bbc440`  
		Last Modified: Tue, 27 Oct 2026 17:50:05 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f240d584fbfa2ef89ae58bfbd8c7922cfe7d0e8c216972d331d1458f85d70bf3`  
		Last Modified: Tue, 27 Oct 2026 17:50:04 GMT  
		Size: 339.0 KB (339027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c01d28a07d9a2b2952794d099745ccc3f326668e707477ce2554d20de629e8b`  
		Last Modified: Tue, 27 Oct 2026 17:50:03 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4797fd2d42a822b4b9a356a17eb7c453daeca062688e53328915030b9cb9f78d`  
		Last Modified: Tue, 27 Oct 2026 17:50:03 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d079d462ea5018c6a2dff6bd221d2bf53adee28029c1f6572e102da34981707`  
		Last Modified: Tue, 27 Oct 2026 17:50:05 GMT  
		Size: 20.9 MB (20925756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec9c8eac9cdb806bc1363b06ecb8b1ced39ef2bc131361fb0614ab5bf6dbfcf`  
		Last Modified: Tue, 27 Oct 2026 17:50:02 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb67c15fea8b430cb0c166683ad119aad984c573df08384f074a1f5ff6926c0`  
		Last Modified: Tue, 27 Oct 2026 17:50:02 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302b8635d4a04269008d0de5d8f9c084965156a85deb01e07a1f73fcbe096705`  
		Last Modified: Tue, 27 Oct 2026 17:50:02 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f0e3bd5418a49b4df58333084b8c4bd88e223906171b7577cbd19f26c29c57`  
		Last Modified: Tue, 27 Oct 2026 17:50:03 GMT  
		Size: 24.8 MB (24753485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577aa5e277b58170b67a7d9ca606777e71a7d222519fe0303a6ba3fbebddac4e`  
		Last Modified: Tue, 27 Oct 2026 17:50:00 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd535ddec561201cf754012b5f7d6eee56978a68e4f45c4cb09f75f4d621e91`  
		Last Modified: Tue, 27 Oct 2026 17:50:00 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be36f1c7093c14ec462fed60b916dd94b659b3f9a14474e7cfc0b5cd25864141`  
		Last Modified: Tue, 27 Oct 2026 17:50:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c3c2abbf06e1769641f9bd267788715f1701827fe185f7c4af63716403877f`  
		Last Modified: Tue, 27 Oct 2026 17:50:02 GMT  
		Size: 11.9 MB (11947071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
