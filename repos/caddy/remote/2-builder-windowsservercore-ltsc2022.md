## `caddy:2-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:ec7acd4a703a769b3c7e4b8adc8aaf0cbbc92cfc67adcc2a776b241a76426f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `caddy:2-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull caddy@sha256:66d67cc209f6763d484fd460cb2e81909eb61b103387790c481635ddfd46b8b5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2353971688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ceebf0769d0f7556382e6e17cbf8398c2e285a3d6fb8e05688825578556bb28`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 20 Oct 2026 02:45:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 20 Oct 2026 02:45:40 GMT
ENV GIT_VERSION=2.48.1
# Tue, 20 Oct 2026 02:45:41 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 20 Oct 2026 02:45:42 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 20 Oct 2026 02:45:44 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 20 Oct 2026 02:47:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:47:01 GMT
ENV GOPATH=C:\go
# Tue, 20 Oct 2026 02:47:07 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 20 Oct 2026 02:47:08 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:49:29 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:49:30 GMT
WORKDIR C:\go
# Tue, 20 Oct 2026 03:11:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 20 Oct 2026 03:11:43 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 20 Oct 2026 03:11:44 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 20 Oct 2026 03:11:45 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 20 Oct 2026 03:11:51 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Tue, 20 Oct 2026 03:11:52 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fee8f9bf7eeac3899ec23d9e3ef0bc6b5d154297da198b1beaa2018208dc7c`  
		Last Modified: Tue, 20 Oct 2026 02:49:46 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9602ff7c39399b30fd5b28051ca33d0c163d4f993f6896557546714bb960a86`  
		Last Modified: Tue, 20 Oct 2026 02:49:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c677f360ca0b505b7641190ea33ab118c2929f6972641f77b50e60524927383`  
		Last Modified: Tue, 20 Oct 2026 02:49:44 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7347e4ffd71c191a651ed89a7a560c9f3eced45cd19a787a2a40b9a81f8b5ac5`  
		Last Modified: Tue, 20 Oct 2026 02:49:44 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dc9b647a97119cf4b32c70786d594c98c88d1e1e15bac994513dcd0c761491`  
		Last Modified: Tue, 20 Oct 2026 02:49:44 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69070e079c58b7bacf022ca9f26068f40fdaa388e3bead5b051bf6ff506cda27`  
		Last Modified: Tue, 20 Oct 2026 02:49:49 GMT  
		Size: 51.2 MB (51201255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88fb3df51795f4a9a3b5782d63d55ae6a35536a5091412cd959bf3aee9b58c0`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0d07fb2fa3bfff3b494b155de75328a4df1f98a4b514165bd3bcbdf5dde02c`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 294.0 KB (294048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f837be172635850655f9ca1491d23be5278566820e989f4b6229a88b7f578`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a2542e15fcd1f5fb853b960e5fbe544a16232518652e2643f234603d5ed6`  
		Last Modified: Tue, 20 Oct 2026 02:49:52 GMT  
		Size: 73.7 MB (73729899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d0662e7d6bee7b0856664dad1d1a90c40c58a090e841d249fcae87bda35fd`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b396b591570c3f657235f44f0c824b1ae4e0c7e243f42c633e3bc1cc90c7500b`  
		Last Modified: Tue, 20 Oct 2026 03:11:58 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a81dac9e19db4a813dc4d5b8056b6913ce62dde95e0ffc783536c84b590d934`  
		Last Modified: Tue, 20 Oct 2026 03:11:56 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbb0f191af73c0b09034cafc8e868fdbbcbd7bbac5319b72e4a7a22689996b1`  
		Last Modified: Tue, 20 Oct 2026 03:11:56 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536dc3a451a7e3b28fe0a1107e3389eccbb4f482e34ee1b8e7fd05b2ccd0e347`  
		Last Modified: Tue, 20 Oct 2026 03:11:56 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb136f73623f040cdf12ae6029df4d8d1f8d48100779fe49e413aac7992f701`  
		Last Modified: Tue, 20 Oct 2026 03:11:57 GMT  
		Size: 2.4 MB (2443757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dadf55723ac32e5a7694ea806ed9e1410f624beba8c5459c5c2e96c66554ca0`  
		Last Modified: Tue, 20 Oct 2026 03:11:56 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
