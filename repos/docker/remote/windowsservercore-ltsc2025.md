## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:edf4d961a3dbf52574e5898e0907cafd43dbd24b2241ca7d671cc67557139314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:2e11c64b7af91887f1dcd4030620941fe3cc970910eace22f4d614d49287dacc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2449989358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72f12b88d455fdb51865c6297944cd476304d36937543d861231423de6bc173`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:02:17 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 23:02:18 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 23:02:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 23:02:30 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 23:02:38 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 23:02:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfdfc8fa0457c3e438202d22e1bbfccf8a100721870a7fa13059134315e033`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 346.1 KB (346127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1b9341c673ff3b10108bf990e4d2491c703fdaac02664dfd7a63937756128`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392391eb2214ddc805b63aa76a5d5606dace54906bc18179f92fb4c7d252736`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac2f904d3e39a4e5f875d953168f32ca32670c498619dc7401d05f65878797`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 20.9 MB (20931035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a9998562ffcf4eed73695a60e9bad22b3b3006480279feaf3a1b847a3632d`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4aa3227a912e5ece2c50f4463e9f219b0a9a1ac31a688c3707abe92068be4f`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42807aeb1ffa49a985dd52158ff46188c9936987af910e7b2ed0db685635e1e`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb6f54acfc8974f8131c753b6cb2bf30d3fda7892a5efe87b14feb2cc0342f7`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 24.8 MB (24753551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3768d004b75ba0ba90d643a4ee55bc7343d28ee086d496df7219479bae37a49a`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863aadba34a2d5039db2e50a369ff8756010580b0e9f854b22165f6765fdaec`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a972ce18be8c6eb7320cb8c93be1c1018999b8fb1f172279af4a5a00437cc817`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b9abd1e59c6a32ed0275d11c604ef3b0300611f332714cbbc45fa19f8c6ded`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 12.0 MB (11952790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
