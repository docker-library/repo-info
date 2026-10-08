## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:b4117fdd1bc2bbeb8b63da81403486512a8154125c6981baaf91ffd931381e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:f93673a23ae0960c0629e56fe3f54a9600eb05698917ffcc1960e386a19f4ba8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276690993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f7de2b96ba81b2fab0780fe3b31343334c84d99bd9cd2ac6a8ae1be5dbd125`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 00:30:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:31:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:31:42 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:31:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:32:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:32:17 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:32:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:32:55 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:33:17 GMT
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
	-	`sha256:216c16e7c5d894e77c76b09a10fa6e12cd5897d30b50cb61c9d04703fb352482`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d473d38daa3682aa2f1191f9ed8cfa71eede6ce835cba3dfb45bae10161dc4`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 360.0 KB (359979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25712663edd6488c0894471c2690d834b0332403809adce59cbb7904721167`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ace942363216506b8934ab036dc53dcac50079d47ad0635cc2004c3edc8ccd`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91852aef93e452065c5e3e3c207bef3496df64b69fd464abe1b78c060528fdc8`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 20.9 MB (20895779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411d61c19315ed1b557dfad6f8e52740c8d40f12efdc26fab38ac46bc56a2ccf`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f9f4fadda4becde747e6bd83fb3752e60fd27e612e18accf0eceaa82b17a2`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baec00c41bf0adb3b562e14a173217a58fd55b4442d13ca70d0267ab21723ceb`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6412ff4e349147d8398e25c0625ba89fe51f1343b4e14993b2dd04ce40e502`  
		Last Modified: Thu, 08 Oct 2026 00:33:41 GMT  
		Size: 24.0 MB (23991442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f0fd35a78791c35a3c1ff82804b86178496d9287a1ffd1919bba20b7431d`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fe36ba2be2ed7911344b98cf7211cedc22dc8eb17b8c06d1381db230cb2011`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd8f6bc5e2db1d533326538d8cb076026630e3be94cc9e8533c31967ffa23e2`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da688fdba56363b171aad5aff401e147b48c8ed0915cadb21aefe9d96dda2f`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 11.9 MB (11943282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
