## `eclipse-temurin:8-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:a2844cfad08347cb85946d7313c2a073ce5d6cc1a82fb5746d391c0044dc498e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:8-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:72fbd73e5da96d3c52951304c8a7ea78593d7cd61344048817cd4da90c24b8da
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2545986803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cdc2319edafd196621654b18da88c6ce24e81ad6f8e0ab1dc7d728d62cbfce`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:01 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 15 Jul 2026 23:06:26 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:06:37 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49429e1dc770c1694ee6f0486cb3444a1a9026b0e383e0626e5a7744dc98d2b9`  
		Last Modified: Wed, 15 Jul 2026 23:06:42 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac884acb514f9114109d1a3899ad5b716e8f209b7daf83f5ba9c6589048567c`  
		Last Modified: Wed, 15 Jul 2026 23:06:42 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9559b5be2bcb9c92fae62c677cb62543240c9a5376d48cf1fd4c1d38aac9189`  
		Last Modified: Wed, 15 Jul 2026 23:06:53 GMT  
		Size: 190.7 MB (190656593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe88d3f0327b51281225614f78cbd0495591adc19a617c6fac472edee18dcc65`  
		Last Modified: Wed, 15 Jul 2026 23:06:42 GMT  
		Size: 319.4 KB (319402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
