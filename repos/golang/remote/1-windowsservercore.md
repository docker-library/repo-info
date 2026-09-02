## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:ef3e6b51598920c06c334dd0637a7cd3de598279668ee56fc54024b19f9cae05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `golang:1-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:bd9ef9770acb381ffb4cc9d43e5780f45ef66f48b16a4f778e544c1f8b140745
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2566070955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ca58b313635cdc6df073f9f6fd2d7f41aa1416b6321c4d6703c572645ba75e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 02 Sep 2026 01:25:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 01:25:16 GMT
ENV GIT_VERSION=2.48.1
# Wed, 02 Sep 2026 01:25:17 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 02 Sep 2026 01:25:18 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 02 Sep 2026 01:25:20 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 02 Sep 2026 01:26:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:26:38 GMT
ENV GOPATH=C:\go
# Wed, 02 Sep 2026 01:26:46 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 02 Sep 2026 01:26:47 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 01:28:25 GMT
RUN $url = 'https://dl.google.com/go/go1.27.1.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3911b5e0e1b1053f25ed0675f4c1c6aad1e2bfcf253df2b9be4caabd2edd95d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:28:27 GMT
WORKDIR C:\go
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
	-	`sha256:825410b1ec2374788ade23c249d5f11591c0db139a54dcd9a9ef8b8a17d1d313`  
		Last Modified: Wed, 02 Sep 2026 01:28:35 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac93c5ad9f71cc8f7ffa55bb5e8f99b38901a3139a81840e4c5eaeacd4e272a8`  
		Last Modified: Wed, 02 Sep 2026 01:28:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f57c0ceb05ad9eaa72b18173c912c2fe946d370ad7b8ca259a8c359cbc3974`  
		Last Modified: Wed, 02 Sep 2026 01:28:33 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c57c9464992e8fe7aa9b572c23b49920e57961be54a8cc286b68b8d03e45a69`  
		Last Modified: Wed, 02 Sep 2026 01:28:33 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa20eea56bc1b2654e6211440503c3f9931fed588949edac4526ff2215831ea`  
		Last Modified: Wed, 02 Sep 2026 01:28:33 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e7c8f4a73dd22e2160acd02289cd7eac3cb6ce1dd5ce018fdee46ad224f9a0`  
		Last Modified: Wed, 02 Sep 2026 01:28:39 GMT  
		Size: 51.2 MB (51241105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4fbde42b5f80f5f595ce9b94c0e4be34e259f719b7424fa515fe1dfdd40652`  
		Last Modified: Wed, 02 Sep 2026 01:28:31 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15df72b010e96905a4f61ee000724b80f37b0009b064ddb77213defe2b430cda`  
		Last Modified: Wed, 02 Sep 2026 01:28:32 GMT  
		Size: 334.6 KB (334603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5fe5129d85d2ed69a03aff5b9fee9542b15f3f365a1d8ef496606a69e7ae21`  
		Last Modified: Wed, 02 Sep 2026 01:28:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78bbfdea728568580d2c0f656211615acc1c4239bf8689d5ecd23a09242e24c`  
		Last Modified: Wed, 02 Sep 2026 01:28:42 GMT  
		Size: 73.7 MB (73699348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ac6d39916afab01dfcbaa4ce7afb54b2272437316dbb683ee4f41d267ad404`  
		Last Modified: Wed, 02 Sep 2026 01:28:31 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:18d01fec20f380132058c90df0ee13843510fd5a94694756e553cef6dace4cd0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2309279240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dfb3ac8d5ff5e85c9af8c84b372cb806bf82c3012ad592fbfe2a3b6d0859c9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 02 Sep 2026 01:07:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 01:21:28 GMT
ENV GIT_VERSION=2.48.1
# Wed, 02 Sep 2026 01:21:28 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 02 Sep 2026 01:21:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 02 Sep 2026 01:21:30 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 02 Sep 2026 01:21:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:21:44 GMT
ENV GOPATH=C:\go
# Wed, 02 Sep 2026 01:21:51 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 02 Sep 2026 01:21:51 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 01:24:04 GMT
RUN $url = 'https://dl.google.com/go/go1.27.1.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3911b5e0e1b1053f25ed0675f4c1c6aad1e2bfcf253df2b9be4caabd2edd95d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:24:06 GMT
WORKDIR C:\go
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
	-	`sha256:81d486db5913163eff0e8cd2c68b015097d3e8c3d6d32f1e3cbbefd0cd4958f4`  
		Last Modified: Wed, 02 Sep 2026 01:09:21 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ee4731b79bd665af7f0e442b23d76b8ed30485b796cb0fb8825f51cf5e4970`  
		Last Modified: Wed, 02 Sep 2026 01:24:19 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431ef50715f6a3046b3caf4e30a40f9122bd5202e4272b47fbbe8acf1af0b768`  
		Last Modified: Wed, 02 Sep 2026 01:24:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d838a9f5e4a203a98cd443c249a94314fb90624dddeb9479aaea62b51a6ca`  
		Last Modified: Wed, 02 Sep 2026 01:24:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9743f28c6ea9069421dfe1f190a274276cb4032e8ca71588a0ea987d5ae7658b`  
		Last Modified: Wed, 02 Sep 2026 01:24:17 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632338157afb25e86c24cef2219b38668772874556e2717c75b0176a01f43a6e`  
		Last Modified: Wed, 02 Sep 2026 01:24:23 GMT  
		Size: 51.2 MB (51212519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d118dc45720b71c89130886eea1c8eff81a2d3d14a6aae26798ec88637996d1a`  
		Last Modified: Wed, 02 Sep 2026 01:24:15 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac393a519700231f03c336a14dcc9276ff6696969f1350f02ea15d02e1a3cda5`  
		Last Modified: Wed, 02 Sep 2026 01:24:16 GMT  
		Size: 341.9 KB (341939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b252363b444ddee453f8face4e012a8cfad4e285077dd304c901342f940e4ae4`  
		Last Modified: Wed, 02 Sep 2026 01:24:15 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf688de73cb6a82e9295a4607de1302f6a1695094cf50c9e3a0d41f8c1187661`  
		Last Modified: Wed, 02 Sep 2026 01:24:27 GMT  
		Size: 73.7 MB (73716695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1668aa7a10163a058ccae8de244188375fc22e3f420c34fb2a0909477ed176ea`  
		Last Modified: Wed, 02 Sep 2026 01:24:15 GMT  
		Size: 1.5 KB (1474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
