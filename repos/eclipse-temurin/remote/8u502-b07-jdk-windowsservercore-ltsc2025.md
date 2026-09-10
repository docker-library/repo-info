## `eclipse-temurin:8u502-b07-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:88b6d9193b05d296be0e33cd52a5c35814cc0e2566a7a1d1fbdd922e8cf556a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:8u502-b07-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:2b95340f5616ad8358da393f1a2642374ba285ea7c5a94e4dda05f696a524034
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2648713359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ca01f5feee422f64e4c95c22ae593cd66c931866a3362e45863a3e5e643b56`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:36 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:34:08 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_windows_hotspot_8u502b07.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_windows_hotspot_8u502b07.msi ;     Write-Host ('Verifying sha256 (3888c5a2c851587c06262fb225f4c8098c6096f30aff1808b171c1c8f184e358) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '3888c5a2c851587c06262fb225f4c8098c6096f30aff1808b171c1c8f184e358') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 09 Sep 2026 22:34:18 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:004d914ab6833353e14ffe1eb09303d6d528a2cf497409ce27852810def45f79`  
		Last Modified: Wed, 09 Sep 2026 22:34:24 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b60c0c7ca0a871f7500acc4b469ba693efe4a30d20fcd796c247cdd84f869b`  
		Last Modified: Wed, 09 Sep 2026 22:34:23 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f121177fc3206b2ff8f251d10f8f6c1c78282175e10e061aa577c70264080e`  
		Last Modified: Wed, 09 Sep 2026 22:34:34 GMT  
		Size: 190.7 MB (190721990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9ac47670581f6c7375404a15b1bb0318edc004d1aa1c0a6710f23c553deb3e`  
		Last Modified: Wed, 09 Sep 2026 22:34:23 GMT  
		Size: 359.2 KB (359152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
