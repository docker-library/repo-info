## `caddy:2-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:fef540575d1a1123c77ba9f60d13f83494f267d5066a54c8a2f95bbd496f0041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `caddy:2-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull caddy@sha256:687fd1fc2d37d01046d1852b03633136b937ac638f0e685a3d286c1a0cf2a0bc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2564691595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede6f4f861aefed39a738310d0ad0badd3c3f5d0dd7b146c7c795277472282fa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 02 Sep 2026 01:26:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 01:26:34 GMT
ENV GIT_VERSION=2.48.1
# Wed, 02 Sep 2026 01:26:35 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 02 Sep 2026 01:26:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 02 Sep 2026 01:26:36 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 02 Sep 2026 01:27:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:27:38 GMT
ENV GOPATH=C:\go
# Wed, 02 Sep 2026 01:27:43 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 02 Sep 2026 01:27:43 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 02 Sep 2026 01:29:08 GMT
RUN $url = 'https://dl.google.com/go/go1.26.8.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'b92c3b2adae85a11ba71fe7216daf0d84e82af4c8ab6c5625807f28622043a59'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:29:11 GMT
WORKDIR C:\go
# Wed, 02 Sep 2026 02:16:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 02:16:35 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 02 Sep 2026 02:16:35 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 02 Sep 2026 02:16:37 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 02 Sep 2026 02:17:18 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 02 Sep 2026 02:17:19 GMT
WORKDIR C:\
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
	-	`sha256:89ec1bd63073e3ea0b26edf62f6b1bc8a7c33c746e56bfa1077808b60f539c7d`  
		Last Modified: Wed, 02 Sep 2026 01:29:23 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a989421a0582111dd4aaee29fcd655626fadae8667de5284861a7f424860550`  
		Last Modified: Wed, 02 Sep 2026 01:29:23 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca78ed99075672c371166d34388bc2ab7f93fafb6e032bf01785d31a482373f`  
		Last Modified: Wed, 02 Sep 2026 01:29:22 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a720697ed3a56ac4e0fdd5f3319e59b0c7e592ad028dd9b3a1280e3b5c4db31`  
		Last Modified: Wed, 02 Sep 2026 01:29:22 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9153eba8d1843c666f24de3d1ec0580cc012dfa190d4a4daa000976d0c1e6aa3`  
		Last Modified: Wed, 02 Sep 2026 01:29:22 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7662e1948f8a43aabd328fe9f171ccf350b7c9fed4645c26c2ca537292136d`  
		Last Modified: Wed, 02 Sep 2026 01:29:28 GMT  
		Size: 51.2 MB (51240387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea2769a6e8010fc3d1d7e61cdb60091dd2b18cca506bb7eedb86f88302fe6c5`  
		Last Modified: Wed, 02 Sep 2026 01:29:20 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c48879426af998a25a84d3c3de9dc773012baec910f55aa7231a1f2885548da`  
		Last Modified: Wed, 02 Sep 2026 01:29:21 GMT  
		Size: 374.8 KB (374757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55691f1918bf6f388b7660800fecdb87dfc9796cc3d61f24d46af26401533f8`  
		Last Modified: Wed, 02 Sep 2026 01:29:20 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35281696fee9b04db6a2c0afdb00123da7d3c5ccc1ef6f69a35a872e1a2a39c7`  
		Last Modified: Wed, 02 Sep 2026 01:29:31 GMT  
		Size: 70.0 MB (69956742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb193ebd081f0cfde8e5f47760335b7954f13f8cac2a3bb53835ce561ee52d7`  
		Last Modified: Wed, 02 Sep 2026 01:29:20 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72db6d11aee05c0d5d4c0ce7646a4f30a6d23904d7987001d8685bccbe8c56cc`  
		Last Modified: Wed, 02 Sep 2026 02:17:30 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea16d70ecfcb5a0c1c4f4072cd48a6cfa42fe470df11048f385bcefffad4db7`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732fb24d2fed19cfb21a04ffe532f841529f049043e8c5497d3171a21194969b`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981a27acad41a8cd35bab3c658ef2075e59b82c362814a2de2ffd419880ab924`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8e220fa4f4de51142c0e44eefc6d1dd1c786cdaa3769b374d7914766ea1b73`  
		Last Modified: Wed, 02 Sep 2026 02:17:29 GMT  
		Size: 2.3 MB (2317441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e253b6dc179e79aae431177dd3d0e16754d630de253f056666747a7af1b7b08`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
