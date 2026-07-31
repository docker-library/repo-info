## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:acff7e7ef34c79e30ae6653f05d15b433ba86f8c3cdd3e08f33cd7908ee96e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:090e28f4f3850cd09f645331beac4c60b8e5378556616eee7c41b24c4867deae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214076410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6237b6f355e24ebebc5acb0ac60491596d3783165f3611de0470043a1bc8ce7f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 31 Jul 2026 16:26:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 16:27:32 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:27:33 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.0.zip
# Fri, 31 Jul 2026 16:27:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:27:48 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.windows-amd64.exe
# Fri, 31 Jul 2026 16:27:49 GMT
ENV DOCKER_BUILDX_SHA256=ce84699d1d93a67d25888b9e6a717862a71b20305602f96d44770b1c12dfcdd8
# Fri, 31 Jul 2026 16:28:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:28:01 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Fri, 31 Jul 2026 16:28:02 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Fri, 31 Jul 2026 16:28:11 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3949d5037d85ed25e2592337dea28af51df68a24fe596393d2b746a27832f5e1`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8270df439bc0c4cf008f9e0d426d0ff03203082e8633778f3970c9633e102b`  
		Last Modified: Fri, 31 Jul 2026 16:28:19 GMT  
		Size: 501.5 KB (501459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dd846187a5b616ac51fe42a291ac5a46dd8849b81b1789f96e62e345ab3ce`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb69bd0a312dcad7d73b9ad1d2aaceb4974d44a6f164a9d070aff7aae1a0e34`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df572355dd514a529520e292122794d0b70c996694e35dde9f9255acd111a3`  
		Last Modified: Fri, 31 Jul 2026 16:28:20 GMT  
		Size: 20.2 MB (20191170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf459ac7b73503ae0ca15bca0af785b7cd2140c20682b558eeb9634550a9c66`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727b3c45927f20377d5b0875f8cfe69f6ecdba5c101c8c5ad4bdc9d9bfffe978`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e07ccfec77e7a9cdaac5d0cd5a5282a6bc2afa9b6fae14a3ddca3e562b4873c`  
		Last Modified: Fri, 31 Jul 2026 16:28:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ea14478bfdf1de3f30f8eecb9bbb997a724abc2c02e76b62c08d91202211`  
		Last Modified: Fri, 31 Jul 2026 16:28:18 GMT  
		Size: 23.8 MB (23813556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161012daa97202cf507456bfdd57e3c7ff149c5c0cda6d4a5aadcc39f57aec1`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9fe7b155e3826f1805f23fc6f8e8a7cd9f765aac735b56bc9411eb9deeb73`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49cf75206fae800172cb7b18758a069486114c1269c098b6b84cd7f5dc64a3b`  
		Last Modified: Fri, 31 Jul 2026 16:28:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65271118fc598d1bc81060ed852e20e33f9dd750db7e39cb69cb8d7fd1a64381`  
		Last Modified: Fri, 31 Jul 2026 16:28:16 GMT  
		Size: 12.0 MB (12005342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
