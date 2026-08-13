## `golang:windowsservercore-ltsc2025`

```console
$ docker pull golang@sha256:385a06df319413a1bfd1fee493867e06ebf4d4f54c9b967c4ec9548e18ea71cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `golang:windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

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
