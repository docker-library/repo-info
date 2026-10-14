## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:f00fc296444a6a04bbb3a23cc1d4cb31766ca2908e578301d32b3be741be3473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `golang:1-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull golang@sha256:efc040fe8d112bed4f220d81a35184150cffebf33f17d6b97a3704703b89faf0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2517370715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03004c90e7c0e7aa2e900c6b8c9267fb4c0154249abb4632befb3241f54f0dc7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:10:38 GMT
ENV GIT_VERSION=2.48.1
# Tue, 13 Oct 2026 23:10:38 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 13 Oct 2026 23:10:39 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 13 Oct 2026 23:10:39 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 13 Oct 2026 23:10:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:10:53 GMT
ENV GOPATH=C:\go
# Tue, 13 Oct 2026 23:10:58 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:10:59 GMT
ENV GOLANG_VERSION=1.27.2
# Tue, 13 Oct 2026 23:12:26 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:12:28 GMT
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf78fd3e595c016f3adfca519625aef8e5d067b22a8e867df5c1d505ca74e754`  
		Last Modified: Tue, 13 Oct 2026 23:12:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264257167343af0855f19275177b6a130491116f36fc106d988039c67e6253f`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4c6ea6c38241cf21d6dc96c6eb9182945c86a1d1609e20c28970f477794ebe`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36af73c87a01ed573cfc75566e0cfefacb29a5679b6e83ac8f5e2f9425c3ee`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fe211638a9358f8f95a52413703316fe01941e728d119b618ad55557bdc5a`  
		Last Modified: Tue, 13 Oct 2026 23:12:40 GMT  
		Size: 51.2 MB (51215302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969ba2e1ee74e58c3c7deab117de5df4b52b59a2325a0344b22cde1b0f08b007`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47a8a4143d28d7a5ec621a73765ebe9ca09109a0af2ad441a610c0226baf67d`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 342.1 KB (342083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b002f71ff1787c9cbee5b86b21fb64e1da07f5a92371b4cd32462ccb0ed83`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcd948332eb566fde086623ca4c250654fed601a9dfcf565088b8043b85468e`  
		Last Modified: Tue, 13 Oct 2026 23:12:43 GMT  
		Size: 73.8 MB (73808511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950d190b5d7ae3f0a606bb00e3deb2487eaa1fb17a95789afa1ff85bf4aa7ca5`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull golang@sha256:bb679c8f2ef14af8d32dbb5898a2197bebf3bd949277dcea319735f7e7021108
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2351601275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb73258fa58e1f468bd86a4e98baa6d3dd9d3dc5d031abc86f195fad8acded6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:11:46 GMT
ENV GIT_VERSION=2.48.1
# Tue, 13 Oct 2026 23:11:47 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 13 Oct 2026 23:11:47 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 13 Oct 2026 23:11:48 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 13 Oct 2026 23:12:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:12:01 GMT
ENV GOPATH=C:\go
# Tue, 13 Oct 2026 23:12:06 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:12:07 GMT
ENV GOLANG_VERSION=1.27.2
# Tue, 13 Oct 2026 23:13:29 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:13:30 GMT
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
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fef6792ba41565f1ba2f1d8f0f25b651f5abcf8bb86402986509bc1fd7946d`  
		Last Modified: Tue, 13 Oct 2026 23:13:37 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce115e471633fb4949a94b54867bfa673824a42945328ee69dd207ba83485302`  
		Last Modified: Tue, 13 Oct 2026 23:13:36 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b402823b35c6ec10faa6e501f80765c2fbb351754b12dbca16ef84a09d69be3b`  
		Last Modified: Tue, 13 Oct 2026 23:13:36 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4b1e6fc53356413f5ba9b94a41193109f586aebb63fc28cd1405af8ca0b747`  
		Last Modified: Tue, 13 Oct 2026 23:13:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66c1cd1af3889a0d08ee5bf3c2d855aec296c8ca1c42fca159dfbfafa6a9ae3`  
		Last Modified: Tue, 13 Oct 2026 23:13:42 GMT  
		Size: 51.2 MB (51199832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab672483e5b37f8f1fb1e3f7951ecd7d08c0a70ac3dc01489e02cf50c3d95ebe`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670f5a0cc2969bbcc16aa9cc82cafc0109fbb95555f72e2ababaf44fd7469c2`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 328.6 KB (328573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e7a11d41d3cbc01b7db6fe4667d8b0891d59d73e7fd4e27e2d60d9a4cf4212`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6326bf07b411d5c41d10d1aa802d0f590474b42f145975ecd4c75bea2f5ae5`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 73.8 MB (73776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a9b874b052305313f6482f1979b2273e8edc572406d1e47a52f2776d48c0c0`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 1.5 KB (1478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
