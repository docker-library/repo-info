## `caddy:2-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:8cf864597909048e91145b6cec45e17623f473605ded299c3476d9f78c610552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `caddy:2-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull caddy@sha256:105120f65fad97fae09fb1b4d6f159d2b779f0cfb5bc09664054a1a1e25b3cc6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2519836901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4dfbaeb151f70f121409da96ce4edda38459c111210371457f41e5db512daab`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 20 Oct 2026 02:45:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 20 Oct 2026 02:45:25 GMT
ENV GIT_VERSION=2.48.1
# Tue, 20 Oct 2026 02:45:27 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 20 Oct 2026 02:45:28 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 20 Oct 2026 02:45:29 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 20 Oct 2026 02:46:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:46:40 GMT
ENV GOPATH=C:\go
# Tue, 20 Oct 2026 02:46:47 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 20 Oct 2026 02:46:48 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:48:32 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:48:34 GMT
WORKDIR C:\go
# Tue, 20 Oct 2026 03:13:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 20 Oct 2026 03:13:12 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 20 Oct 2026 03:13:13 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 20 Oct 2026 03:13:14 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 20 Oct 2026 03:13:20 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Tue, 20 Oct 2026 03:13:20 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93f5b5fbf54a9a53db96fc574bf58ab76da0727b15b3a02df070f49bdaffe99`  
		Last Modified: Tue, 20 Oct 2026 02:48:53 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6819a74b31dc041e9d3439a787880be8b21c09e04776450796af3c0c78e113b`  
		Last Modified: Tue, 20 Oct 2026 02:48:53 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c10ff1326f5673b88e2eaf65b59bb2ed17d90546d955f80070e89644938ab7`  
		Last Modified: Tue, 20 Oct 2026 02:48:51 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d68f40ec1c6f663e3d44affbc3aa88f77c75add4ce8e74543106ae86f7d63f5`  
		Last Modified: Tue, 20 Oct 2026 02:48:51 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d922ed2d128a26b3d34863ebfc9391bda02f28e63da0ca98c548d578e3f754`  
		Last Modified: Tue, 20 Oct 2026 02:48:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9b54d88a1e2f1754ffc9e0155394363409fe910f4b18e5d24571c4c83aba0`  
		Last Modified: Tue, 20 Oct 2026 02:48:56 GMT  
		Size: 51.2 MB (51246494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53870688e7d3e2d3ecb943c9e77c0bfd385df35f696a8d3e3b94411a27dd08e`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e35b24b722e268923ddc98d2d50af67782a25dd4c5b6d2598c5180d0e1fb650`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 327.5 KB (327518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4e0f6e1e0e0ed5b8e11d460a09232d7b2c11653af8f97b2159e974be0d4ee5`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd53cb07926255a01abcf02981b6f1e5519b4000cc9d717b01c034a3fb935258`  
		Last Modified: Tue, 20 Oct 2026 02:48:59 GMT  
		Size: 73.8 MB (73776246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debdac51b4fe4ab67e591451005e2808c7b2177297e2c76c2c2712c76abad463`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ab08d2a3aa759e704fed6ece5ad44d437d9466a3a64d443a8d74ae8f7aab32`  
		Last Modified: Tue, 20 Oct 2026 03:13:26 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8217e89e977efc9fd190ec66589b7bb8c872f80bbc577b04802b6b612cfee90`  
		Last Modified: Tue, 20 Oct 2026 03:13:25 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28298c434f2b0156827098f5459996d138e676b21ea4eaa66f7458a6f610f95`  
		Last Modified: Tue, 20 Oct 2026 03:13:25 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f69d94b4327cabf789058f0ddd90bbb98beeee62385a6e134dcc90c748d3e0f`  
		Last Modified: Tue, 20 Oct 2026 03:13:25 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f801c2d68c38f7ddc61dce46e145baa20cea72840c6d4bd49986fc9dee401c`  
		Last Modified: Tue, 20 Oct 2026 03:13:26 GMT  
		Size: 2.5 MB (2475442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9cd248f6a83878cbe5335b1aac32ab259eaba23e05b004e3c44e01c853fddf6`  
		Last Modified: Tue, 20 Oct 2026 03:13:25 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
