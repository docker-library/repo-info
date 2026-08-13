## `golang:windowsservercore`

```console
$ docker pull golang@sha256:1f7775a8f1b3b5238cbc9f86177734eeab2296d7b637b1569f17ae7a2fdb5460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `golang:windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:d8f5e76dd422ab5fbfb367ba0bcee15ae48cf49d23fada4af95b4c7b275a6e88
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2562294162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5d06c44e7e4e8defd1596cce3484e4d6da4e4234a0511c6f733a1477533093`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Thu, 13 Aug 2026 19:36:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Aug 2026 19:36:02 GMT
ENV GIT_VERSION=2.48.1
# Thu, 13 Aug 2026 19:36:03 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Thu, 13 Aug 2026 19:36:03 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Thu, 13 Aug 2026 19:36:04 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Thu, 13 Aug 2026 19:36:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 13 Aug 2026 19:36:37 GMT
ENV GOPATH=C:\go
# Thu, 13 Aug 2026 19:36:43 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 13 Aug 2026 19:36:43 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:38:24 GMT
RUN $url = 'https://dl.google.com/go/go1.26.6.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '5b6c5b556525810463b5c897b50dc7a82d6a3dc0bfaf55d990a7e9f31d6b2318'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 13 Aug 2026 19:38:25 GMT
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
	-	`sha256:3b93ce3c1a75aa2a9b1c86bdffb2f0d40754a952881d21f48349cb70dabe0b4c`  
		Last Modified: Thu, 13 Aug 2026 19:38:35 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e614f7a85c440e24f236a4f61dc5dd53d311c9cbbbc6c0e026e804d451343f1`  
		Last Modified: Thu, 13 Aug 2026 19:38:35 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff150b06c93ffb10c94133df24ee28a1fb0267d06b741f4d0629060912a05182`  
		Last Modified: Thu, 13 Aug 2026 19:38:33 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d7cc3088ca115ce6256a99ee34f6134c65d966a787e471c72b351eb1700cb6`  
		Last Modified: Thu, 13 Aug 2026 19:38:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06eb9dd6dd08d406d1b4ce784cb9efd817972803825780cfca03c3fbac2588e4`  
		Last Modified: Thu, 13 Aug 2026 19:38:33 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a9fe5d7695f2cb67471b32a906cb2ace9d7b2dc0f919df5ab28ae1c62298c2`  
		Last Modified: Thu, 13 Aug 2026 19:38:38 GMT  
		Size: 51.2 MB (51220467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41796dc3e6785aa7f24e72cc28fbe06476c0ef24e20d86e7ed9dc9dc720513c7`  
		Last Modified: Thu, 13 Aug 2026 19:38:32 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01827b7624cea20ed297f08e9c44d2985d563bffce2fdf2eceb25ac2328da708`  
		Last Modified: Thu, 13 Aug 2026 19:38:32 GMT  
		Size: 350.2 KB (350246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412b456d9914524ddebc1e960951337a9a90ce47f4d57502e86e42bbeb77b8d0`  
		Last Modified: Thu, 13 Aug 2026 19:38:32 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a108569ba0228b9362bf630db9c365f67e7982c439cd23c39f406a7e3f7c91e`  
		Last Modified: Thu, 13 Aug 2026 19:38:42 GMT  
		Size: 69.9 MB (69927588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19e38540cd9d948e869f07cf6ef1c7495ed0613c18035a453b68bded8062665`  
		Last Modified: Thu, 13 Aug 2026 19:38:31 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:f25b31daec8b849836442fe54c663d2287e9bd3dca36ba8fea178d3f4e2325be
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2305448386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95dac47f21fd0de15b7464092a5d39be4727e7567f8e52f07d82146c1435f548`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Thu, 13 Aug 2026 19:36:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Aug 2026 19:36:33 GMT
ENV GIT_VERSION=2.48.1
# Thu, 13 Aug 2026 19:36:34 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Thu, 13 Aug 2026 19:36:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Thu, 13 Aug 2026 19:36:36 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Thu, 13 Aug 2026 19:37:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 13 Aug 2026 19:37:18 GMT
ENV GOPATH=C:\go
# Thu, 13 Aug 2026 19:37:23 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 13 Aug 2026 19:46:20 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:47:52 GMT
RUN $url = 'https://dl.google.com/go/go1.26.6.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '5b6c5b556525810463b5c897b50dc7a82d6a3dc0bfaf55d990a7e9f31d6b2318'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 13 Aug 2026 19:47:53 GMT
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
	-	`sha256:b7ebadbcdbccb87f6eef8119ac3b765c73c6b89a9152ff4a4ce61ae64dc27137`  
		Last Modified: Thu, 13 Aug 2026 19:39:15 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f99e9d88f755621642d19d909d7c852800db4044805e0c97d56d2453d25cb1`  
		Last Modified: Thu, 13 Aug 2026 19:39:15 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043e3de4cbbe850fb4e595fc9cb1de14dee95110044133444ebca4a584f3f082`  
		Last Modified: Thu, 13 Aug 2026 19:39:14 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e1429755c0d9995ee0b83a378186a8d0c03a0105f555de4c210a793728a4fe`  
		Last Modified: Thu, 13 Aug 2026 19:39:13 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f988d549121a961be40d3309e9a80f7eef880f56d93ad77ff0d0e95a71b8c22f`  
		Last Modified: Thu, 13 Aug 2026 19:39:13 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6436ab4297d8e54eb857f32774828a0a7d64126252edf6098d3829fe3f59c4be`  
		Last Modified: Thu, 13 Aug 2026 19:39:19 GMT  
		Size: 51.2 MB (51203219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7fe6c29062a6e4942a1da6fd6b038f3ad74299766399df35b3a7f7a9987e0f`  
		Last Modified: Thu, 13 Aug 2026 19:39:12 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f65c898d4772b9d468e39d611864cfe48c193e74cdbf4f005097c4ac1e228a`  
		Last Modified: Thu, 13 Aug 2026 19:39:12 GMT  
		Size: 328.3 KB (328258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f09ee71a224338c4a9a7279bf7d6a1a606e015e7cd83085b74d3bd35896ff9`  
		Last Modified: Thu, 13 Aug 2026 19:47:57 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b91c309ccc1e592167fb19bf930961fd24173a100b5a0c000c22ce7d086d9c8`  
		Last Modified: Thu, 13 Aug 2026 19:48:07 GMT  
		Size: 69.9 MB (69908826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647170a487955c88cd49f59f4f9eb2c38fc73eec525a42e08ea38dd2c016a33`  
		Last Modified: Thu, 13 Aug 2026 19:47:57 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
