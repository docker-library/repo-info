## `eclipse-temurin:11-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:fcffed6ca5276f2b11b465cb96a38b43489a34d2602e6b51ef32ac3b67381d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:e1a60d3080016562b86dd80c9a3886b471d75241c41458e7a7575828eb20e3a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2482596500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dce029772cec805cdba34d8c19db6e0468cadfdbe702b5b8212816c79582d53`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:03:58 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 16 Nov 2026 20:04:10 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ;     Write-Host ('Verifying sha256 (09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 16 Nov 2026 20:04:16 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:134c57789c5f398943ecab62238a2e0ab641d515120736c294d7bd90e8846bbc`  
		Last Modified: Mon, 16 Nov 2026 20:04:20 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5df06b7b0e712003fca9e542852d1fb97269fa268060a3416fabbdfb1c756c8`  
		Last Modified: Mon, 16 Nov 2026 20:04:27 GMT  
		Size: 75.2 MB (75177853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b9b9619da58e57604c74c82b1357f61c86a9462126c9833249b15b7e52f9c3`  
		Last Modified: Mon, 16 Nov 2026 20:04:20 GMT  
		Size: 348.3 KB (348317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:700d24cc1d021ea44118f04e097a939f57826daa20ddf893ce24693fbcc7c4fb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2321606303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff37f61318c729655ea31c8edb7ff815150f36812676cdf50544b18e59894ad`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:05:15 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 16 Nov 2026 20:05:27 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ;     Write-Host ('Verifying sha256 (09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 16 Nov 2026 20:05:33 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a7f87c3cd13c4caf00cae2e3e8e47ddc69a0a123ad5dafceee008f2910d72a`  
		Last Modified: Mon, 16 Nov 2026 19:55:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d37120c8670aa1d444177af6e8a7b44a1f9313711bc0985290e9a5e2d3e5738`  
		Last Modified: Mon, 16 Nov 2026 20:05:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a414509cf68c6cc3bcd85d26974af5022584a407310d5dfa16b3f6b60b021de6`  
		Last Modified: Mon, 16 Nov 2026 20:05:43 GMT  
		Size: 75.2 MB (75172894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e598252cf43b618f264b315f629cc626e081e2a5f26b1878813ed4cb962e603e`  
		Last Modified: Mon, 16 Nov 2026 20:05:38 GMT  
		Size: 340.1 KB (340099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
