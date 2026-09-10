## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:0b3f3db66c3761a1c3ba972f18577e20a028a760b95a355b0c4e1f8c06cf8b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:8b73f85188e1f23efcb1ed6303574e385ab483e32401bf626d5dc9b09cedd32a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276529627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52383842fe40ae2ac9377430ed89fbad5888a33447bf41bd04adf68bfb227833`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:53 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:32:53 GMT
ENV DOCKER_VERSION=29.8.0
# Wed, 09 Sep 2026 22:32:55 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Wed, 09 Sep 2026 22:33:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:33:19 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Wed, 09 Sep 2026 22:33:20 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Wed, 09 Sep 2026 22:33:21 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Wed, 09 Sep 2026 22:33:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:33:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 09 Sep 2026 22:33:48 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 09 Sep 2026 22:33:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 09 Sep 2026 22:33:59 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2b454245496d177f49bf752d1b43585fa7e5486969ff0620b6d71bd6f0a77e`  
		Last Modified: Wed, 09 Sep 2026 22:34:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4337abe4e6c4596a63756b851c36b621482fb4ce90199cf02782f39e1d08ca`  
		Last Modified: Wed, 09 Sep 2026 22:34:09 GMT  
		Size: 346.8 KB (346839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13190ee3e967fc1732494b0fc3b6065806460d9e3c5dffff44a887d7af9e06b`  
		Last Modified: Wed, 09 Sep 2026 22:34:08 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3503b977360ad8b027a474a800fccf887ac20a26cf69c18cf3deb2562d9a027a`  
		Last Modified: Wed, 09 Sep 2026 22:34:07 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105712aaae11295b6e218e5feb184166a1fd7b59ad0f060c13e91e668976fe9b`  
		Last Modified: Wed, 09 Sep 2026 22:34:10 GMT  
		Size: 20.9 MB (20874806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f68f9ab8917e091372e2db66c384f2ff887cd2e80234bed96860b8d0503c4e`  
		Last Modified: Wed, 09 Sep 2026 22:34:06 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56c321ffce703cf64934a663f31d5297cf81783216ff12c1d42f6e021bf1021`  
		Last Modified: Wed, 09 Sep 2026 22:34:07 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863b4058feb7cd0c86cf88019f181f97a153cfdbe35b588eca2f83bb2a90b9b`  
		Last Modified: Wed, 09 Sep 2026 22:34:06 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3365ddf460d9a5782c9cc028cb8736b25c7c9b40cf3fa84529288803ec3e216`  
		Last Modified: Wed, 09 Sep 2026 22:34:12 GMT  
		Size: 24.0 MB (23969259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afbd1246634089684c5c3c197138e30ddf37239b35c69831d963fcd98288618`  
		Last Modified: Wed, 09 Sep 2026 22:34:04 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdc37bd3d8423a83a3726e1c8af0df20ae62f86e6bbd3d4033a28c34d5e16de`  
		Last Modified: Wed, 09 Sep 2026 22:34:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae7a38aa3465fc4999f229f35460dde0aecd1362a5dcac00ca3a353277980f`  
		Last Modified: Wed, 09 Sep 2026 22:34:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5c0ee0f04c261785f6d1a1f67424e57fe5497cd7ab97fc13e1c5bcfa872825`  
		Last Modified: Wed, 09 Sep 2026 22:34:06 GMT  
		Size: 11.8 MB (11838138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
