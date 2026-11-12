## `docker:29-rc-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:d67d00a75b7f063e284031f5e9d3b8b86d89fb4a1424d7fca875121f1529704d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `docker:29-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull docker@sha256:5d1443d1a23f4d8f64999b977be3b16ad7fc29f63c433f54c83c57b01d513ea9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2491631542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7477910b97168c223fa77edab83335db7f2b293a0263d031dfe8dc1b071cffa5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:51:04 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 11 Nov 2026 21:51:06 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 21:51:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.10.0-rc.1.zip
# Wed, 11 Nov 2026 21:51:08 GMT
ENV DOCKER_SHA256=d3f21d8d1487ee8a0bc936cb65c5149b1f5bebe2d05499c6bcfdcd8b81030c7b
# Wed, 11 Nov 2026 21:51:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_SHA256); 	if ((Get-FileHash docker.zip -Algorithm sha256).Hash -ne $env:DOCKER_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 21:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 21:51:23 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Wed, 11 Nov 2026 21:51:24 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Wed, 11 Nov 2026 21:51:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 11 Nov 2026 21:51:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 21:51:33 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Wed, 11 Nov 2026 21:51:34 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Wed, 11 Nov 2026 21:51:46 GMT
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
	-	`sha256:54abae1dfdb0e2e7031693c0bf30fb0ee5524c67868273fc62b892b302a68b34`  
		Last Modified: Wed, 11 Nov 2026 21:51:56 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74b9306b5f644e4a59141a2a23464abd287b7457060f794492c51fae7951519`  
		Last Modified: Wed, 11 Nov 2026 21:51:56 GMT  
		Size: 364.8 KB (364836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ded61b5f05bf8d2fdc7ae2e7b73ac571f3a93c8a70c145b39abb5dfc22e226e`  
		Last Modified: Wed, 11 Nov 2026 21:51:55 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6be971b373d8df3c45075ef77bc15ec0c82505f324c1be8a79ff69beed5a6d2`  
		Last Modified: Wed, 11 Nov 2026 21:51:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb8aacc8859e17fc69103504b3cd50b64622493e5336e20417df3e4b4c31e32`  
		Last Modified: Wed, 11 Nov 2026 21:51:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea159d80db1839265344661739dfa00f48c487a02d14747fa06b2358af2e5b6e`  
		Last Modified: Wed, 11 Nov 2026 21:52:05 GMT  
		Size: 46.8 MB (46823130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f928595dc44a890fa3fbd4cdc616cd7bb0de2ea62fed8b046367eb6bff4b973`  
		Last Modified: Wed, 11 Nov 2026 21:51:53 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087b06f2005d55988a096882dd162826ad546f45ed2462eac755f68ab507fa12`  
		Last Modified: Wed, 11 Nov 2026 21:51:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf8a81ab1924fee300a27ad3fffa6e1145591bd138fc05f50eeabc6dbe89f29`  
		Last Modified: Wed, 11 Nov 2026 21:51:53 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92eecfaba10bc42648e5dc65db2441bf10b3398fbd358d21204e9dedd95bda94`  
		Last Modified: Wed, 11 Nov 2026 21:51:54 GMT  
		Size: 24.8 MB (24775984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f97416733b7a351c965d6a705e071e1e15b21ae92677a692e11e34ea52e92d3`  
		Last Modified: Wed, 11 Nov 2026 21:51:51 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7df78e3917c0db6a67e757d9c8bddb232587281cd9f1c246d45064e57046f4`  
		Last Modified: Wed, 11 Nov 2026 21:51:51 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4625d30a81469afdd1a4392ebbb45da5b4eb2980c40d53080877a51b96d6beab`  
		Last Modified: Wed, 11 Nov 2026 21:51:51 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090ed739e72006e3be0252cecb9e97b00b43c019bf90c70040de24a44a306f81`  
		Last Modified: Wed, 11 Nov 2026 21:51:53 GMT  
		Size: 12.3 MB (12323875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
