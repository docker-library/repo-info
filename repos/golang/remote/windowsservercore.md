## `golang:windowsservercore`

```console
$ docker pull golang@sha256:928e53ff790fca6538e87dee9e75833d01b3e0652bb67a7c20f62044df26ec6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `golang:windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull golang@sha256:8b292aeb071fbb7576f953d5276553d5691c5b2f2ba48f878210e811931cf9b3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2517355019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e5893af8620cc1f4e1036bec1b85c73368490bb339b7ab263dfe1e9de9b65d`
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

### `golang:windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull golang@sha256:7ef303374777013adb29d37959af7412e41440bfe196332ec784910ac436cf80
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2351521328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbccd14a31b8e939df77e3490e6ed11ff2bc924597bbf96bf4526b00b5204047`
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
