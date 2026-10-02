## `caddy:2-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:8832d0fe07a9a40e61a4e77dc1e0ab623c466b2b0bb67f266dfb21cd3f35ccc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `caddy:2-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:cce295a195b3c73b672a06b7e7f554aff658c814fd303163b3b40f84b1ff403c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2347201944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506a9a932ff5d391fd9fb9fed9d760a45cd5b834fcd8a79ceda768bb2d2f7b63`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:46:44 GMT
ENV GIT_VERSION=2.48.1
# Wed, 09 Sep 2026 22:46:45 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 09 Sep 2026 22:46:45 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 09 Sep 2026 22:46:46 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 09 Sep 2026 22:47:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:47:14 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 22:47:19 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:47:20 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 09 Sep 2026 22:49:07 GMT
RUN $url = 'https://dl.google.com/go/go1.27.1.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3911b5e0e1b1053f25ed0675f4c1c6aad1e2bfcf253df2b9be4caabd2edd95d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:49:09 GMT
WORKDIR C:\go
# Fri, 02 Oct 2026 18:48:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 02 Oct 2026 18:48:39 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:48:40 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:48:41 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:49:42 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Fri, 02 Oct 2026 18:49:42 GMT
WORKDIR C:\
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
	-	`sha256:9c2b454245496d177f49bf752d1b43585fa7e5486969ff0620b6d71bd6f0a77e`  
		Last Modified: Wed, 09 Sep 2026 22:34:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8297fb68555244bf18978faf7197346aef34f153574ce7f2385325ee107d85eb`  
		Last Modified: Wed, 09 Sep 2026 22:49:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01db828cdd91d42542fcd0b712bb26cd293cdb99551313eac881837ece7d631`  
		Last Modified: Wed, 09 Sep 2026 22:49:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32943754430b7730923055db5e5b18c319af9b0568eb0c41d9cf671f421a61db`  
		Last Modified: Wed, 09 Sep 2026 22:49:24 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b1c5d72ba18be6e2a0550c30e24ca37bc4f15da9aa948d6e63930b7e6579ed`  
		Last Modified: Wed, 09 Sep 2026 22:49:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d866abcb3ad135b6712d98e24fa9f3fe04297407ab6536a6892dad74846d7318`  
		Last Modified: Wed, 09 Sep 2026 22:49:30 GMT  
		Size: 51.2 MB (51203328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f852f1a889873994fa7338f1c454b32fdef75787d64a34c2695042d52ad59413`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5627f21ecc3559c50659c9faf1012cb0b9d491446763eee7ce15c10074b6f756`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 328.5 KB (328451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d8306a6173a8a6c63387c43aeefe83176fff2de6dce93fda0012ca437cb09b`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7b492f11df4bfb8b78853a600a8c6c065fbea367ebd870909490615b24bde0`  
		Last Modified: Wed, 09 Sep 2026 22:49:33 GMT  
		Size: 73.7 MB (73702770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d34e1e0ec3a9ef0a184daf04b1bedadf3667ecd6092d69c553efee173bdfb39`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3e37a6bbadcd3716a741ca2a8838f4379e2acecb873523b8c9a40b426bfe64`  
		Last Modified: Fri, 02 Oct 2026 18:49:55 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a57478851f4057ee174a0bed52819e83d829cf09edb84f6c70a90288398976`  
		Last Modified: Fri, 02 Oct 2026 18:49:53 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41543a98ac3183ec6b93d76c42b15738839692c478b5bf266ccbfb5ae8590af`  
		Last Modified: Fri, 02 Oct 2026 18:49:53 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d4e672e6f40f7b014583c2ffd0d32f9df641763b2e4a176790836734ed531a`  
		Last Modified: Fri, 02 Oct 2026 18:49:54 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826e07ba46a55bf8d2c099d6554bc9e20935fd3dc96c950797b4cf85580732b9`  
		Last Modified: Fri, 02 Oct 2026 18:49:55 GMT  
		Size: 2.5 MB (2461514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e27151ec25da0814aac3fa58e707677b1798f9219159f6816061f3535231d`  
		Last Modified: Fri, 02 Oct 2026 18:49:53 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
