## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:7a1c9e80500e86d7c6e91d8873e0c76ecf4400c79f8d399d7b4bff7b6ebd5687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `golang:1-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull golang@sha256:f0946e897c1663837e13c5c1a4c40ca598fa8a470b4576fd476c5f4abaae6fb1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2582932510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2241981bb7bbfa3616fb2fb3e03cb95a06a96640691deba9139183681e8d9b8a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:44:52 GMT
ENV GIT_VERSION=2.48.1
# Wed, 09 Sep 2026 22:44:54 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 09 Sep 2026 22:44:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 09 Sep 2026 22:44:56 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 09 Sep 2026 22:45:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:45:11 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 22:45:16 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:45:17 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 09 Sep 2026 22:46:50 GMT
RUN $url = 'https://dl.google.com/go/go1.27.1.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3911b5e0e1b1053f25ed0675f4c1c6aad1e2bfcf253df2b9be4caabd2edd95d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:46:51 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e206e5ef6c9ea47ae76aa238c88ae473589445768eb35598cd339a775532d1d0`  
		Last Modified: Wed, 09 Sep 2026 22:47:04 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3fc1fdb5659fac3ea2b286c66f9a8d749c813041677e7248f30e7b66ae77bb`  
		Last Modified: Wed, 09 Sep 2026 22:47:02 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b51dca2b33e974a49ae7f2cdba38347668f13f49bf012ff01c714f63f4adec`  
		Last Modified: Wed, 09 Sep 2026 22:47:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f6deb4a192d6cd59a2c5cceae29ba720ecaf9d1d805d683731b77db63048a1`  
		Last Modified: Wed, 09 Sep 2026 22:47:02 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aee00c2406e641f6aa9b8200ce7e28b49955acf6326bd3f62760ba21c240ec9`  
		Last Modified: Wed, 09 Sep 2026 22:47:08 GMT  
		Size: 51.2 MB (51221034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d1f55a4d187401b75d29c5429388523eeeca83a5eef7fdc2bbe7761d372946`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596bf7fb501fdfe749ea365e25a52a8d34a631aba93e5ea78be45e5bb800d126`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 351.7 KB (351689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdca3fae9289d22e96550825cb37bbce5861b29d32d458e44a0c0fad9cca11d2`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7046da004909ba9c5a378829b876f4229a573c02059a96be9f2a18a6e270c6e2`  
		Last Modified: Wed, 09 Sep 2026 22:47:12 GMT  
		Size: 73.7 MB (73719596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9390a67416af03b0078d31360bd3ac0bf960175a16d6d84be59842d16a98cde`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull golang@sha256:80410868363be4c7cd6b93e6c63346d9d49aa4685d593f48b729245dc445412c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2344733887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a8d218747500ca7a25de0da3b9c5ff502cf11ff023079864ec04e83b08d459`
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
