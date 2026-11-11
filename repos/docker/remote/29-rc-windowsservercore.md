## `docker:29-rc-windowsservercore`

```console
$ docker pull docker@sha256:65b5209299c24848a5065ce3e026e0606fc747ef930fa0aadb91e4b2ffddcd15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:29-rc-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:61526ac6435e7cc9a31878fdfd8eb2fcce8e6a9c4ac3dfd819cc00f11a8ba0e0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2476406134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c613ee95452f4cad92cb672bbd43baa262a5ae8e51711d7a1d32b9c328e55147`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Wed, 11 Nov 2026 00:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 00:41:44 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Nov 2026 00:41:44 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:41:45 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.10.0-rc.1.zip
# Wed, 11 Nov 2026 00:41:46 GMT
ENV DOCKER_SHA256=d3f21d8d1487ee8a0bc936cb65c5149b1f5bebe2d05499c6bcfdcd8b81030c7b
# Wed, 11 Nov 2026 00:41:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 00:42:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:42:01 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Wed, 11 Nov 2026 00:42:01 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Wed, 11 Nov 2026 00:42:11 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 00:42:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:42:13 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Wed, 11 Nov 2026 00:42:13 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Wed, 11 Nov 2026 00:42:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9c0002decb0af80c5df47def14cc3509d9c1505b111db1cc56345c066c36ec`  
		Last Modified: Wed, 11 Nov 2026 00:42:30 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68874af92298ee7a0f25a6dffffbe84240732426406793936ffa01701707467`  
		Last Modified: Wed, 11 Nov 2026 00:42:31 GMT  
		Size: 374.4 KB (374398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f071185cd7e9af088c8194325c0b2b8bf22e84067dedabd4d57c8d9620ac806b`  
		Last Modified: Wed, 11 Nov 2026 00:42:29 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cf53e879b73889411a1ecd43e73ae711422e70912ffc80fc1f4f0adf60b2b0`  
		Last Modified: Wed, 11 Nov 2026 00:42:29 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec944cf83c79fd3e0519c2f987202b36ccd7a28df7731d293111b1470319440`  
		Last Modified: Wed, 11 Nov 2026 00:42:29 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4df5e074bc3d38062ecaeacc6baccd565909cd611065f96109f5d1c8b89020a`  
		Last Modified: Wed, 11 Nov 2026 00:42:43 GMT  
		Size: 46.8 MB (46839083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da7e08df8cbe6d668cf45cbc8cd486729eef173d076938a9b5ef713268358e6`  
		Last Modified: Wed, 11 Nov 2026 00:42:27 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5442cda1cfbcfc60dc03da7571544697516be2c927d5d0c36941c69d1231605d`  
		Last Modified: Wed, 11 Nov 2026 00:42:27 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bcc9c599c3258f9c857b7df430bc32b51ba42f74e6ee5a619b731d4f38940b`  
		Last Modified: Wed, 11 Nov 2026 00:42:27 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0698c10457ff8d1ec370ca7b7b5d512210a9479f3d3db1de17d5bafc0b208f08`  
		Last Modified: Wed, 11 Nov 2026 00:42:28 GMT  
		Size: 24.8 MB (24790749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42ff20dec193409d267226b262b102cf3321a1426e5a3844ab2ea1d3aef4de6`  
		Last Modified: Wed, 11 Nov 2026 00:42:25 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3cfcf1005414350412d29a7ec3f204d075a4df78c2488b70632ddeecd05f82`  
		Last Modified: Wed, 11 Nov 2026 00:42:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613161fc48f4f0f7824ae6eed91d160caa707c27e10c7b62a70eb3d659051cf5`  
		Last Modified: Wed, 11 Nov 2026 00:42:25 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053b93f8196ba6d2049bb4bbbf1bbf83e1eb21017e1e61e5c608687c7fd38541`  
		Last Modified: Wed, 11 Nov 2026 00:42:27 GMT  
		Size: 12.3 MB (12339970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-rc-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:0f98b3ac6ad4f8517b6fa2af6b96db2d610689494806075c60b64656e1ec7680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2311327354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8e5eb9f2dead35dcd043f15a88abd50def290651a392b6e307d47412169a9d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Wed, 11 Nov 2026 00:40:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 00:41:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Nov 2026 00:41:38 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:41:39 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.10.0-rc.1.zip
# Wed, 11 Nov 2026 00:41:41 GMT
ENV DOCKER_SHA256=d3f21d8d1487ee8a0bc936cb65c5149b1f5bebe2d05499c6bcfdcd8b81030c7b
# Wed, 11 Nov 2026 00:42:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 00:42:27 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:42:28 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Wed, 11 Nov 2026 00:42:29 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Wed, 11 Nov 2026 00:42:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 00:42:57 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:42:58 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Wed, 11 Nov 2026 00:42:59 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Wed, 11 Nov 2026 00:43:12 GMT
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
	-	`sha256:429e31bffb97882430d118a908ccefda9d1f10710ac7ca2ecc3b991d3cc4c127`  
		Last Modified: Wed, 11 Nov 2026 00:43:21 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a0fd64001a6b9d6d771cfd856c86e5d49627563076c9916681f7295d46be86`  
		Last Modified: Wed, 11 Nov 2026 00:43:22 GMT  
		Size: 358.2 KB (358167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf2b7b600991ec5f387346e9f1b2941f14f52925d39f8d533151729b50c7042`  
		Last Modified: Wed, 11 Nov 2026 00:43:20 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c970aa46f31ce27503646f3caa3ef4decb52cfe7b3814d099536f93f5bf200`  
		Last Modified: Wed, 11 Nov 2026 00:43:20 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2747740da852318acb3f29d29c9a1d0460f08d98e137dad9fcf908ac436f36`  
		Last Modified: Wed, 11 Nov 2026 00:43:20 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1090147f40140a9deb577bd3096238819e44abecdfdb2a4852480b84be6a7`  
		Last Modified: Wed, 11 Nov 2026 00:43:38 GMT  
		Size: 46.8 MB (46811330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e4e96b36277cc521a148431e3ced22e374b647d9d10eb2d72afab94b3ce2fe`  
		Last Modified: Wed, 11 Nov 2026 00:43:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c30a215a078daffd44ea574a482189c645154cfb34dac582ab41b368135d6f9`  
		Last Modified: Wed, 11 Nov 2026 00:43:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b845357c2e11e8d281c0e71569e1f3032d5db5f580882bfbd793f7779994bacf`  
		Last Modified: Wed, 11 Nov 2026 00:43:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d44b70dbab6f68d42acedd51e0f7721493d8793a36ad27182c1a1f7abed9a0`  
		Last Modified: Wed, 11 Nov 2026 00:43:27 GMT  
		Size: 24.8 MB (24773671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5296dadc830082510db2e2327f3fff82e5aba3fbe3b7588c07e4ea34931369b`  
		Last Modified: Wed, 11 Nov 2026 00:43:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96efe4b475084a145883fcf2e381c4ddbd8321c184f36a90f7adb72e38f65cb0`  
		Last Modified: Wed, 11 Nov 2026 00:43:16 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfafbbb92174668fba987896e771a35ec653bf638895b68a323b460a25fab9bc`  
		Last Modified: Wed, 11 Nov 2026 00:43:16 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35654dcdb49f4a88eb3a668b33352b32678d83f33b6c9b927249a76978842896`  
		Last Modified: Wed, 11 Nov 2026 00:43:18 GMT  
		Size: 12.3 MB (12314916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
