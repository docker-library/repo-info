## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:ba13322d4612e7a083d4dd7aa900c0c5e2f00ead53e6225df0dd7334780f0bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull docker@sha256:eb28dd140fb5108c96cb48c05e39d46c28bb605e12d3177eabb4d2840ebc271e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2470340254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9a2a0d69a476fc377a7bb0b05e685137350efa7e94c74991f0370e57d3ab80`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Wed, 25 Nov 2026 00:03:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 25 Nov 2026 00:04:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 25 Nov 2026 00:04:27 GMT
ENV DOCKER_VERSION=29.10.1
# Wed, 25 Nov 2026 00:04:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.10.1.zip
# Wed, 25 Nov 2026 00:04:29 GMT
ENV DOCKER_SHA256=cda7ca0c5d7f7373ffbeec50d811de64c22efc43d2cbd10a2e4c95fdea3f4a09
# Wed, 25 Nov 2026 00:04:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 25 Nov 2026 00:04:56 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Wed, 25 Nov 2026 00:04:57 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.windows-amd64.exe
# Wed, 25 Nov 2026 00:04:57 GMT
ENV DOCKER_BUILDX_SHA256=4a665d2c71f6f87a42313cb8847b8e834e2dfb1626a1b57fcdbaacf41a6c8387
# Wed, 25 Nov 2026 00:05:06 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 25 Nov 2026 00:05:07 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Wed, 25 Nov 2026 00:05:07 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-windows-x86_64.exe
# Wed, 25 Nov 2026 00:05:07 GMT
ENV DOCKER_COMPOSE_SHA256=0c2d9245a5f61e8e3cc85009b8b4888fa82fded08239d28bd6da5ca818eda2b2
# Wed, 25 Nov 2026 00:05:15 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897894a05ce4a4758af83d4cfe6cf9ee4d497a5bcca0ab490266c71ad49f3cd`  
		Last Modified: Wed, 25 Nov 2026 00:05:25 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a1f366b58fb4cbc100cf1d658c09b4de6eb0db73e381cfe202aa760957bac`  
		Last Modified: Wed, 25 Nov 2026 00:05:25 GMT  
		Size: 377.2 KB (377189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5732b80346eb2934d7065f985795a0df7627ba69a72d8621dff8ba583605f63`  
		Last Modified: Wed, 25 Nov 2026 00:05:23 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c79614110b7ccc0bbbe30819a46b457b68883ac547ad22396db94cf1bc25ac`  
		Last Modified: Wed, 25 Nov 2026 00:05:23 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aab3f533c4d6609dd1633373e35dc8cba3023abc502d85982359c709534869`  
		Last Modified: Wed, 25 Nov 2026 00:05:23 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355d3c75d7fd37af20630ea75e6d34c3fdaf0b7ae1e4f930165c78dfccfa90c6`  
		Last Modified: Wed, 25 Nov 2026 00:05:32 GMT  
		Size: 25.2 MB (25212540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3853410f826df63a9a2e416e32835de7d9ac27cab4dfc676d87736133ab5e2`  
		Last Modified: Wed, 25 Nov 2026 00:05:21 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8291a4a2604feab16a57823a37bc0d01feefe6ea3cc28e487ade5680c843644`  
		Last Modified: Wed, 25 Nov 2026 00:05:21 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8929d76e941c55b73701283b4024f391d5610289f0d00c45d7788457c6cc6`  
		Last Modified: Wed, 25 Nov 2026 00:05:21 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efaf0927eb350a93c0699942225b71e8adce3480552e8c49245a2fdff4dbe72d`  
		Last Modified: Wed, 25 Nov 2026 00:05:23 GMT  
		Size: 25.0 MB (25015506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72489a70e2d803f8d6b9469fb08e12c44f30fc6a63ef8edbbc8faecb01abead`  
		Last Modified: Wed, 25 Nov 2026 00:05:19 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cedafdee7e938f0c50d8ed18a6b42ef7508a19b9cecb5ea45e4d749a15e700`  
		Last Modified: Wed, 25 Nov 2026 00:05:19 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053ba58bd244c831df0cfce208571e6d7dacb882721c5d6b13bd27cc8a37fef8`  
		Last Modified: Wed, 25 Nov 2026 00:05:19 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272b380f658ffedea7621b460ef01ce9f8666a97192892670ed4f568f55951c5`  
		Last Modified: Wed, 25 Nov 2026 00:05:21 GMT  
		Size: 12.7 MB (12654398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5873; amd64

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
