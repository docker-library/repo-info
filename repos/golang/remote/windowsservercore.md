## `golang:windowsservercore`

```console
$ docker pull golang@sha256:22328d973262c4346be7f62a7bdadd1333e509dcd5caa494cbe372973cfefee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `golang:windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:6bcadd88222d9a9d7378ad231bf74e067f62e8b98698a801b7526a2a52444b75
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2562371999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd8450986b130980067a70f484ee162d98d7be05228d6013d6dcfffae596c04`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 19 Aug 2026 17:28:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 19 Aug 2026 17:49:51 GMT
ENV GIT_VERSION=2.48.1
# Wed, 19 Aug 2026 17:49:52 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 19 Aug 2026 17:49:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 19 Aug 2026 17:49:53 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 19 Aug 2026 17:50:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 19 Aug 2026 17:50:06 GMT
ENV GOPATH=C:\go
# Wed, 19 Aug 2026 17:50:11 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 19 Aug 2026 17:50:12 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:51:40 GMT
RUN $url = 'https://dl.google.com/go/go1.26.7.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f4f534a486e4bc3387fa18f08208f2f854b7aaea8a08f2a2d829a914a05abb11'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 19 Aug 2026 17:51:43 GMT
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
	-	`sha256:c24155187c66de7b94417b025bc49be47fb2c40d960a8f491e36ebd083944ad8`  
		Last Modified: Wed, 19 Aug 2026 17:29:53 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3026dc680eaa792e2bb98f35b3b9375c13e288ca612250b57cb5143b9e8c9dd`  
		Last Modified: Wed, 19 Aug 2026 17:51:52 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa97c22d62a7c97c9bd401b7bde89dd585d97c39328f6f762d0ce8ddeae4241`  
		Last Modified: Wed, 19 Aug 2026 17:51:50 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd56c4d3bafe4556a6fd7eda57edf5340b764ab082e81a0578176e211cc1f13`  
		Last Modified: Wed, 19 Aug 2026 17:51:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc97bc86cb8623f657d6220677ae4f9544588ea41afe33ab42800661e867c43d`  
		Last Modified: Wed, 19 Aug 2026 17:51:50 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ae9d6447c004fe564c239f8a24441b6f24adbd6b02de12e0d205a1d7b6b369`  
		Last Modified: Wed, 19 Aug 2026 17:51:56 GMT  
		Size: 51.2 MB (51239350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd81b06d5f6e343f8d8efb19c6a352ca23c5372b4e8c082edd2528cb080a72ad`  
		Last Modified: Wed, 19 Aug 2026 17:51:48 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec07a6b0d10b81232d8c4d4cb948c2101be406e1be8c99fb3d790ebfd5fb4a8`  
		Last Modified: Wed, 19 Aug 2026 17:51:49 GMT  
		Size: 374.9 KB (374884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb9b37e757531d6f2a03f4023b48a069a513720b9b0837e77a1657feae84cba`  
		Last Modified: Wed, 19 Aug 2026 17:51:48 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e718019412dc6549a5ee27780df9ff4c6448fcf949603aadb94bc9e4aed23104`  
		Last Modified: Wed, 19 Aug 2026 17:51:59 GMT  
		Size: 70.0 MB (69961881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942750221729043c0d5eec78c809e30b9f0e0e1a8c1a3bba48729783fbac6c7d`  
		Last Modified: Wed, 19 Aug 2026 17:51:48 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:495d7859d0a2224caecf39d7ca05a2d91ecc6cdfe2c4b1d7805a3cef83b5bfff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2305491859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb32b31b27da71b993e812bbb34355c2076833884ed488096085374e0a9319d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 19 Aug 2026 17:21:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 19 Aug 2026 17:50:18 GMT
ENV GIT_VERSION=2.48.1
# Wed, 19 Aug 2026 17:50:18 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 19 Aug 2026 17:50:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 19 Aug 2026 17:50:19 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 19 Aug 2026 17:50:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 19 Aug 2026 17:50:34 GMT
ENV GOPATH=C:\go
# Wed, 19 Aug 2026 17:50:39 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 19 Aug 2026 17:50:40 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:52:12 GMT
RUN $url = 'https://dl.google.com/go/go1.26.7.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f4f534a486e4bc3387fa18f08208f2f854b7aaea8a08f2a2d829a914a05abb11'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 19 Aug 2026 17:52:13 GMT
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
	-	`sha256:87d53ae31533fad250567964058785ae209aee5201f8ab9cb0913e444cde3af5`  
		Last Modified: Wed, 19 Aug 2026 17:22:48 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665574665b06e7bdb753f6f6b68a0f4486cc8875f02e2ba1515684c7db2b048b`  
		Last Modified: Wed, 19 Aug 2026 17:52:30 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c6610a860652c0c46b730abd955699343a9b5b42d8b8630c686ff1b545ea25`  
		Last Modified: Wed, 19 Aug 2026 17:52:29 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f91d0089952813166846002267a16d0fe784ac9af590f198a7416be5b9cb6b`  
		Last Modified: Wed, 19 Aug 2026 17:52:29 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14d4e9d5c61a188a8fa93a4c48e6da9f5ec3ab7412cbaeee7904ceeaf1b4dd`  
		Last Modified: Wed, 19 Aug 2026 17:52:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7200beee8bfbe004f6dbaf5efc8148fcc6e53089575bcc39d9ed48648e00eb7d`  
		Last Modified: Wed, 19 Aug 2026 17:52:34 GMT  
		Size: 51.2 MB (51212720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702ee5864ad7ab36de19b02f7d180daa4c8fcda7fa4e08d6c42e21b540e4d3f0`  
		Last Modified: Wed, 19 Aug 2026 17:52:28 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95553b6ebd91e66cd637cb269e5fbfcdf04a42f65c741942dbe8212d7787e4eb`  
		Last Modified: Wed, 19 Aug 2026 17:52:28 GMT  
		Size: 341.9 KB (341916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54c5b001c85ffb3d0b0d0fd8a33ab4bd4dd2efb2dd8e2fb548e9b9158834d58`  
		Last Modified: Wed, 19 Aug 2026 17:52:27 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4487f19316d4de25965dafcbc95448b5b1576dcf3b89e2b0865f0e8b229ea46`  
		Last Modified: Wed, 19 Aug 2026 17:52:38 GMT  
		Size: 69.9 MB (69929205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e36a2959f84fd27a8244e3adb1aad4094e89d5f429a5770ff9ac4079d1ace7`  
		Last Modified: Wed, 19 Aug 2026 17:52:27 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
