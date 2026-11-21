## `eclipse-temurin:17-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:1d5b8c0c391614f2b142594bfb167082d2cfce596b746100ddd8f401b9cb1b4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:08f8ec9386f80ee5b7e784067eb0600648147cabba7c6bc6fe2705e389a3c116
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2482944078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca345d8b865f3c5aa131e00cfa9935159c46b7b3ff6f8634b9d5aba2c946590`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Fri, 20 Nov 2026 17:44:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 18:05:58 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:06:19 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_windows_hotspot_17.0.21.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_windows_hotspot_17.0.21.1_2.msi ;     Write-Host ('Verifying sha256 (89a157f3e24fc4ef1e0783460a54d24669e2d779c6dc0f3b12b6ea1c7662dc9c) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '89a157f3e24fc4ef1e0783460a54d24669e2d779c6dc0f3b12b6ea1c7662dc9c') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 18:06:25 GMT
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
	-	`sha256:ab4df5040081268bf6af727b2f0372bddc3cbda55e18b352267aa4b18ad83998`  
		Last Modified: Fri, 20 Nov 2026 17:46:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17c061392732a932a7749c771ec8e73fc02e4056d0a57b4f4c47ee83c119135`  
		Last Modified: Fri, 20 Nov 2026 18:06:30 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edf6c2a07d421eaa888e2ebc322da8822a3bfd530bc8f3f0db959df637023f6`  
		Last Modified: Fri, 20 Nov 2026 18:06:37 GMT  
		Size: 75.5 MB (75501397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0371e403460528d4c46c49f25d494c5087cdb237ba95c42caa8f48d4321aad47`  
		Last Modified: Fri, 20 Nov 2026 18:06:30 GMT  
		Size: 372.4 KB (372379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:f895aee4fc61a112c9bd8ca0a1d6acd57a5e14f9e54b9a45ddc84410fa0e2532
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2321936026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3d59be1665465242562aafa097396c1029828052f68b713d5bfc6b321f0318`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 17:48:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 18:05:57 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:06:30 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_windows_hotspot_17.0.21.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_windows_hotspot_17.0.21.1_2.msi ;     Write-Host ('Verifying sha256 (89a157f3e24fc4ef1e0783460a54d24669e2d779c6dc0f3b12b6ea1c7662dc9c) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '89a157f3e24fc4ef1e0783460a54d24669e2d779c6dc0f3b12b6ea1c7662dc9c') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 18:06:39 GMT
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
	-	`sha256:c9edde7b0f89f2e291c4c0ffd329ea23e002427588c06a2d5ea91c07f3e3bcfe`  
		Last Modified: Fri, 20 Nov 2026 17:50:28 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c92a759fade3e9857b2a77ec3a93e8db3d987d0d332c3be8e5b1041b7a344a0`  
		Last Modified: Fri, 20 Nov 2026 18:06:44 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9637a3f427e0f9db73937d73611b7dce794aa524194a038f9050fa33ae1d2b`  
		Last Modified: Fri, 20 Nov 2026 18:06:50 GMT  
		Size: 75.5 MB (75486530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da44a8cbc3019e30a93051fe209102536cbb003537c762ae863296da13bbed`  
		Last Modified: Fri, 20 Nov 2026 18:06:44 GMT  
		Size: 356.2 KB (356195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
