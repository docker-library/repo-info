## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:9b74ba7b68f7fc08d10428badb954d32b079750de23c307b50aa5fa4453ee145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:0a273d728d547cec3b003cec6f64e6f0a0760410c162f2039a00dda57493537e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2501759906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42de6f3da9161070947955501761217de4f827cd25419caa851534620051a7e0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:34:57 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 17:34:58 GMT
ENV DOCKER_VERSION=29.7.2
# Wed, 12 Aug 2026 17:35:00 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Wed, 12 Aug 2026 17:35:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:35:30 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Wed, 12 Aug 2026 17:35:31 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Wed, 12 Aug 2026 17:35:32 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Wed, 12 Aug 2026 17:35:51 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:35:52 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Wed, 12 Aug 2026 17:35:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Wed, 12 Aug 2026 17:35:53 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Wed, 12 Aug 2026 17:36:04 GMT
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
	-	`sha256:ec60430df3f0a33f1554cb12017e0d893a2300d06c078a92a6b03f3951bcf4ff`  
		Last Modified: Wed, 12 Aug 2026 17:36:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b835403e194c7aea72c5008a97f5ecbda11a1794588a7d5b2b10295bfc0cf3e`  
		Last Modified: Wed, 12 Aug 2026 17:36:12 GMT  
		Size: 362.1 KB (362073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7553839e3d69cf286e24ed80b838059d3f1dce5738b3a8d6921552b3b3865a7`  
		Last Modified: Wed, 12 Aug 2026 17:36:11 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aef34ed13e837f7a24dbe6224a4153b673ae0cf09580084276d78bbe388a8e0`  
		Last Modified: Wed, 12 Aug 2026 17:36:11 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d450bb3d2c1bb3f0b15ec200d1d31837e5ca469bd1ce7cec1212efe234b859a`  
		Last Modified: Wed, 12 Aug 2026 17:36:13 GMT  
		Size: 20.3 MB (20281405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894f914ef99587573d201da30ee376347e4bca854f19c6c4a8d91739a503926`  
		Last Modified: Wed, 12 Aug 2026 17:36:09 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ac78bd174525927db81454f733bd783c521cc9aae175bc7071f3add2064216`  
		Last Modified: Wed, 12 Aug 2026 17:36:09 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446a577f5cc956c7ca33bd957e5783f6b8991375db81c80efc6c3e5c2eb58237`  
		Last Modified: Wed, 12 Aug 2026 17:36:09 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca77bc9b191e4861fe6d1e1dbd7eaf25af3c50e54852e35647086f8b36e8f05b`  
		Last Modified: Wed, 12 Aug 2026 17:36:15 GMT  
		Size: 23.8 MB (23804907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9870f4a7d20f67cbdb5f7a579b6a59c5af24ca8d324db9ef918bdec605d9723`  
		Last Modified: Wed, 12 Aug 2026 17:36:08 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ee10d17df23c08fd234a9af47dc4f75d47ba1d2fb951e61853c7466b9ebe96`  
		Last Modified: Wed, 12 Aug 2026 17:36:08 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d56df15d6b041f46e90399e2199a54469067c6fa7f8ba0ac2cc1fc0ba077cf`  
		Last Modified: Wed, 12 Aug 2026 17:36:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fad3cb15e1b3396dfcf4ea1917864aa352071e26a45f263d53034ea51325f8`  
		Last Modified: Wed, 12 Aug 2026 17:36:10 GMT  
		Size: 16.5 MB (16514493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
