## `docker:rc-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:37cf35c66a69d076ce77e95c0eb5868ff5e64cf34e29e040e5fe311fbe287632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:rc-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:6c6428b7ed53723d5219bda785a33cc6935359ef7bb772d387e66e3d11f4c565
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214193034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f03decb032c4874f13b2f82f83030ed106d98da00f680b2395bc8df057c9059`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 29 Jul 2026 18:11:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 29 Jul 2026 18:12:24 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 29 Jul 2026 18:12:25 GMT
ENV DOCKER_VERSION=29.7.0-rc.1
# Wed, 29 Jul 2026 18:12:27 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.7.0-rc.1.zip
# Wed, 29 Jul 2026 18:12:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 29 Jul 2026 18:12:43 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 29 Jul 2026 18:12:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 29 Jul 2026 18:12:44 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 29 Jul 2026 18:12:55 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 29 Jul 2026 18:12:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Wed, 29 Jul 2026 18:12:56 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-windows-x86_64.exe
# Wed, 29 Jul 2026 18:12:57 GMT
ENV DOCKER_COMPOSE_SHA256=6d36cc701393c066d67ebc77773b718d8c738bc4ccb350fbf1dc0e6a09f44cb9
# Wed, 29 Jul 2026 18:13:07 GMT
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
	-	`sha256:aa0b97a8967b246759282dba3cdb8d6ddad8e1f393ce3e9a02bf0d8bfced7d8e`  
		Last Modified: Wed, 29 Jul 2026 18:13:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9785ff68cea7f20319451b28771df56e9eb5450602238db473e75462317efb61`  
		Last Modified: Wed, 29 Jul 2026 18:13:15 GMT  
		Size: 501.4 KB (501420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63f31fc3757c057dcf4da8598067e49bacae5e4073cbfb7035e130d6d4b1103`  
		Last Modified: Wed, 29 Jul 2026 18:13:15 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3b56756e99b8f35f1cdf869317ec729f073b013b85fe3296e646b0122513eb`  
		Last Modified: Wed, 29 Jul 2026 18:13:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297b10929aac534c563790fa72f12a0b343372a57afa1dcfd0150df46d01db46`  
		Last Modified: Wed, 29 Jul 2026 18:13:16 GMT  
		Size: 20.2 MB (20184072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3ef1be8e1c68c69e3c142301cf1a8147f1802ed1db36b87093088d0cc139fe`  
		Last Modified: Wed, 29 Jul 2026 18:13:13 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0d1853a1193e980abb18d57e6da89b377edcf5c916c0ef181df0c1ee1945f5`  
		Last Modified: Wed, 29 Jul 2026 18:13:13 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd1f4e2edb22bebef8f7a3e175b68a020843c221ed4e1a40eff687039d2fe76`  
		Last Modified: Wed, 29 Jul 2026 18:13:13 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abf0e7b86e8cdac77f7ca03987bdc6906a2bb869110c50bb37130946550b727`  
		Last Modified: Wed, 29 Jul 2026 18:13:14 GMT  
		Size: 23.9 MB (23937040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d0dcdf066205c85606d2110a9e544e77a84068c5439243a73f7827554f0689`  
		Last Modified: Wed, 29 Jul 2026 18:13:11 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abba045341cd5add3c06703c8a8a877a49f87ad38d0ea0891220817c5d938ee`  
		Last Modified: Wed, 29 Jul 2026 18:13:11 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f0cbb16942b176ac7ec43edea6e6a3d5c5e2620c268febca89d792bc3e2711`  
		Last Modified: Wed, 29 Jul 2026 18:13:11 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a12aa13531096cbf820ee14568996125303e9dbdc0b96dcd158879b9f0fc5b3`  
		Last Modified: Wed, 29 Jul 2026 18:13:13 GMT  
		Size: 12.0 MB (12005630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
