## `golang:windowsservercore-ltsc2025`

```console
$ docker pull golang@sha256:acb2bd32b1d5a072e5e4e5a6f87b8185ff1a60279354748950bb10ec5a1c8b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `golang:windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:77a30c171405c90ae3d573a784dae4b2133795527584741320ac7acf1b3f1aa2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2562279901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9722ae042fe7978f1a800fd5ba177b099c19cc1bfe7088efd135eb100ab2cd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:46:47 GMT
ENV GIT_VERSION=2.48.1
# Wed, 12 Aug 2026 17:46:47 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 12 Aug 2026 17:46:48 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 12 Aug 2026 17:46:48 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 12 Aug 2026 17:47:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:47:04 GMT
ENV GOPATH=C:\go
# Wed, 12 Aug 2026 17:47:09 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 17:47:09 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 12 Aug 2026 17:48:43 GMT
RUN $url = 'https://dl.google.com/go/go1.26.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '97e6b2a833b6d89f9ff17d25419ac0a7e3b482a044e9ab18cdef834bd834fd38'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:48:45 GMT
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
	-	`sha256:c3bf9629e3b114b952c8857ccb303d4df4a5bcdeb86edb8a93fcb5278560c99d`  
		Last Modified: Wed, 12 Aug 2026 17:37:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3279166f4740fba68c0d3fbd71e211fd10718a0ed428eec76919a569fd576bbd`  
		Last Modified: Wed, 12 Aug 2026 17:49:01 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d60c4f424122acf9006682de2a82d759f010db1503c044bab5fe224c77372`  
		Last Modified: Wed, 12 Aug 2026 17:49:00 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620ee4523bb03266a0790de51f3cdfedfd229eb2e180d64ab0872ad737bd5072`  
		Last Modified: Wed, 12 Aug 2026 17:49:00 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c0251ceecc40c0a2af46bbe2820f6319155cd7797014c5cf88e9f55b12b320`  
		Last Modified: Wed, 12 Aug 2026 17:48:59 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f85d8e591eb3b83a558827d8296f7d6e268127e5d4795611337aebee5d4760`  
		Last Modified: Wed, 12 Aug 2026 17:49:05 GMT  
		Size: 51.2 MB (51221036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84507f87ceebe8ea253746e80a3d7c14aceb6bec5ea8458ded23774bec5dfb38`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07d5f6b3fd1fbec2d29fc24bfd5d0d74f55aa4b4f03585b9f652a3b0f94d9d0`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 351.1 KB (351083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb808facf29d139e652776bc63a91e5dc194526a67b2707eb0acafb8732c6cb7`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ac86dc66b9749ee4d169f4cbc67ebefbff5a595b78e7b8de75ac9c88c7744`  
		Last Modified: Wed, 12 Aug 2026 17:49:09 GMT  
		Size: 69.9 MB (69911894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716670c0e50cf885e48a8edcea0f005477ad98effb9ee47ed31c3ba6a2e7c028`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
