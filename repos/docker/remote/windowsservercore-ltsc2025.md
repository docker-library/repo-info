## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:4192126891aa4b2eab1243b07f9a72f5f75cc13a53b9478ee9d8bc0f84d487b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull docker@sha256:b5d69d1e0106a997df27cca116eb8d210509561f7694636c59401687f0ee5cb4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2465744175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b04e4ab6749c05487587b9f009fcb9f32da987b48037b23ae92f3b7f3e891f1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:51:07 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Nov 2026 21:51:08 GMT
ENV DOCKER_VERSION=29.9.3
# Wed, 11 Nov 2026 21:51:09 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Wed, 11 Nov 2026 21:51:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 21:51:30 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 21:51:30 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Wed, 11 Nov 2026 21:51:31 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Wed, 11 Nov 2026 21:51:40 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 21:51:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 21:51:41 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Wed, 11 Nov 2026 21:51:42 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Wed, 11 Nov 2026 21:51:50 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128c6ce62eb80a0881ffc531fecb0f2f2ef37f7e576f7f2141355c9711bc9371`  
		Last Modified: Wed, 11 Nov 2026 21:51:59 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce9047184f0419d303cac8135c13542ead8ac141d9000b622bd293059fbb659`  
		Last Modified: Wed, 11 Nov 2026 21:51:58 GMT  
		Size: 365.7 KB (365660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a51e10d1c685cbe46046578986337bc7101371153f7b25d108bbb849485f88`  
		Last Modified: Wed, 11 Nov 2026 21:51:58 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075515a989b3230fb1110a89375c912cfccbbc009c92b00506a6cde2e4ae2dd5`  
		Last Modified: Wed, 11 Nov 2026 21:51:58 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f9c1582ef972be047d577771169344da9fca1140ce7e9689f793d4f0ad2c3`  
		Last Modified: Wed, 11 Nov 2026 21:52:00 GMT  
		Size: 20.9 MB (20936160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31fce77affff995280e9c152b72db9170e54803ba7307577970423bac3c687b`  
		Last Modified: Wed, 11 Nov 2026 21:51:56 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7128ff235072310a83286f1e59555c873f4fe6095fb759445580975108ae19`  
		Last Modified: Wed, 11 Nov 2026 21:51:56 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318a2ef21b9c6ebb16d1b042934d92dd95e3933b482a64c72fa4a50dbae2783d`  
		Last Modified: Wed, 11 Nov 2026 21:51:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37408c0fed41b7f098c21b61e33bb6ce013bd743e62ad5a8898d0bad2aa204db`  
		Last Modified: Wed, 11 Nov 2026 21:52:04 GMT  
		Size: 24.8 MB (24775870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda1c0e4f2ed7cb41f277cc2453b3127f1e659353059ab68b2ba3f0889bdcb8b`  
		Last Modified: Wed, 11 Nov 2026 21:51:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bfd290f2b81dce0d1898560d307b911e88bb74418da4d94758b60c283c4be3`  
		Last Modified: Wed, 11 Nov 2026 21:51:55 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa74b8048ab3f8261f436fd845d95bbd8b564eda6c3e7ffea4a299516901a3`  
		Last Modified: Wed, 11 Nov 2026 21:51:54 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd4cbe87f1e8b9f7b5649e8a8c76467e4318d47bc324b12f18c205fbd4404ee`  
		Last Modified: Wed, 11 Nov 2026 21:51:56 GMT  
		Size: 12.3 MB (12324116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
