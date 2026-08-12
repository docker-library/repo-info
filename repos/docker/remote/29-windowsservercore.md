## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:bb34b1afc0ed25e720e0d14ee19959f1ba5c177be3a85f1731182efee684567b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33296; amd64

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

### `docker:29-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:1a5048cce06107600d3814e5292423e970551bcca306ba1297cc2e0f67c981e8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2244807740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ff2c277a918bce4c0387eccf67f3eb3d8b4047687f8530ec07c42775ebeb93`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:29:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:30:31 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 17:30:32 GMT
ENV DOCKER_VERSION=29.7.2
# Wed, 12 Aug 2026 17:30:34 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Wed, 12 Aug 2026 17:30:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:30:59 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Wed, 12 Aug 2026 17:31:00 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Wed, 12 Aug 2026 17:31:01 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Wed, 12 Aug 2026 17:31:24 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:31:24 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Wed, 12 Aug 2026 17:31:24 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Wed, 12 Aug 2026 17:31:25 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Wed, 12 Aug 2026 17:31:41 GMT
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
	-	`sha256:38e1b28ed0ae3810fc60b70ae721befaf7ae0262b232808d6fb32800f97198e9`  
		Last Modified: Wed, 12 Aug 2026 17:31:51 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b506d83b3d0e3ee046e68dd13fea60edd01d408226549f7a8e54b0b5fa5a16c`  
		Last Modified: Wed, 12 Aug 2026 17:31:51 GMT  
		Size: 346.6 KB (346632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0841e451043835f03b7c23bd4dbb73e074becf80483ce8f42e287d215d78e8fe`  
		Last Modified: Wed, 12 Aug 2026 17:31:50 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f083671c609909f20e89775a6ef1f636fc62b096d9e1b46590929e076051af`  
		Last Modified: Wed, 12 Aug 2026 17:31:50 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829694f716ab3664becf04fc86749271b070d263b41346798591dd9b37d215f3`  
		Last Modified: Wed, 12 Aug 2026 17:31:53 GMT  
		Size: 20.2 MB (20169640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0f61129d96985256766e9b600eb39345eb7c902caa1368e0c8335066196745`  
		Last Modified: Wed, 12 Aug 2026 17:31:48 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f820c83a1566ef2e87f9b1236695e8b4000fd25e99b62ef0f18bbd1d6b820ca`  
		Last Modified: Wed, 12 Aug 2026 17:31:48 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792ad8c22831e4dbb12b5425cc1efa9475b0cb0a083cee5cb3868f2c5114a56a`  
		Last Modified: Wed, 12 Aug 2026 17:31:48 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d2b7ae2bd685276aebf405009ed61fe97a72aba291ed35310d1eb7e5b55068`  
		Last Modified: Wed, 12 Aug 2026 17:32:02 GMT  
		Size: 23.8 MB (23790475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c943a135a85f5e14d2fd796b07bc9ffa93632324aa7d6d0ed15999ae00b49e9`  
		Last Modified: Wed, 12 Aug 2026 17:31:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001db621d98d96919636a29676a7013e88a71d189101742a92d1fb8cf71ed570`  
		Last Modified: Wed, 12 Aug 2026 17:31:46 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd849f2bb079b684a510f56d320beb72c50283710244f2a7a60894596adb077a`  
		Last Modified: Wed, 12 Aug 2026 17:31:46 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8039dc8ee55dc73bad1181d26af6140145b670175639da008d69403d17b061d`  
		Last Modified: Wed, 12 Aug 2026 17:31:49 GMT  
		Size: 16.5 MB (16491822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
