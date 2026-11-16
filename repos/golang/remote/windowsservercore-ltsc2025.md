## `golang:windowsservercore-ltsc2025`

```console
$ docker pull golang@sha256:4512651b5c7eb6f9ecbb1131964469407e534571ec77fed9156739244f9cf7f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `golang:windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull golang@sha256:08233431a13c2648e143a2e0396349aed2c4a9572f8caafd2cd743c0e2703195
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2524624285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbce99c410b331009ce9dea250d7089aa64927071de233a0a9a9914ec303b334`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:04:42 GMT
ENV GIT_VERSION=2.56.1
# Mon, 16 Nov 2026 20:04:42 GMT
ENV GIT_TAG=v2.56.1.windows.1
# Mon, 16 Nov 2026 20:04:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.1.windows.1/MinGit-2.56.1-64-bit.zip
# Mon, 16 Nov 2026 20:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=4a92850b6e917da4fd010669b614b55dccf5b0ec333a534cc4be4700dfefdafd
# Mon, 16 Nov 2026 20:04:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:04:55 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:05:00 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 16 Nov 2026 20:05:01 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:06:25 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:06:26 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b8ca421c56b5c9c99b175da794c28dc2695af7af6c8065e63deab793a98d2`  
		Last Modified: Mon, 16 Nov 2026 19:54:22 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82a3b19138c7a5ed94634d27faa41b97c9a927c624b1b78b31fae52b38406cf`  
		Last Modified: Mon, 16 Nov 2026 20:06:37 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bced516c679171da13f8235fc7f45ce09b6f39c106699b0e343ee910a07bf`  
		Last Modified: Mon, 16 Nov 2026 20:06:36 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90cd0fae423eddcddf168f2bc8155830ff2447331d8efaefd4d4397a556394`  
		Last Modified: Mon, 16 Nov 2026 20:06:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5347ca3d8acbd5547dc561fc1c0b74b47cb572474d8db7f0c6c005cec7898be`  
		Last Modified: Mon, 16 Nov 2026 20:06:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1921c4b4493838e0caa6b0cc9fc5e363fdc2d915c8a23fee127bae3f42c26c46`  
		Last Modified: Mon, 16 Nov 2026 20:06:41 GMT  
		Size: 43.3 MB (43343352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7195a5149e84ccec31b8a1c406b8c8b32707a22cbe4c63bfe7a79a767013e3f1`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096b236a6299327caf91aa47021cd4c6559aa2303cd53b88fc5ce90ff46b3365`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 337.8 KB (337828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3e6a8da0f4bfae63c85c6614b4b110d5742457b31434f90bafcde9b354a175`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3741dc8b65d58b0538d49590060b5572bad883401455c92eee6c5f4dbbfafa2a`  
		Last Modified: Mon, 16 Nov 2026 20:06:45 GMT  
		Size: 73.9 MB (73864875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc691753cb7f7656ffa5db49fc9c7864f0d5f5e2c506b91cf3d18a3ef12d4f`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
