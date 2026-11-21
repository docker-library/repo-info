## `eclipse-temurin:25-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:acd1521bbb1221d2745f8161b97e11cdb39ec0be6c307611dc9e9de4d3dff392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-jre-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:fd65e35990479510239645067e2ba1b12997675be459d5a26410a95bf32894e3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2508814797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85373bf794ac73f5c66e3ae69e83ac63b2aab1355248ec11c2a7932d61e7ada`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Fri, 20 Nov 2026 17:47:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 17:47:17 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:48:52 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_windows_hotspot_25.0.5.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_windows_hotspot_25.0.5.1_2.msi ;     Write-Host ('Verifying sha256 (914d00e351269a6f252cc12d938a7c1ce57352e856f7170f13a60145f5914fc6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '914d00e351269a6f252cc12d938a7c1ce57352e856f7170f13a60145f5914fc6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 17:48:59 GMT
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
	-	`sha256:db086638f6f91244687f5b84d15d8afb613d43d605bba629586e81087b2ed0e3`  
		Last Modified: Fri, 20 Nov 2026 17:49:03 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd405f1245e9a46ad137d11af0d0e0b709be61bd00973748ab32711977267076`  
		Last Modified: Fri, 20 Nov 2026 17:49:03 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ce046097a7de807d2fbd7f6725d1a69987a4e9dc7df40ce496330dc6a7a514`  
		Last Modified: Fri, 20 Nov 2026 17:49:11 GMT  
		Size: 101.4 MB (101412751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85db690b078ac42cf5db073d6fbd1a248c650d4160b44a9e1b9cf59efa122917`  
		Last Modified: Fri, 20 Nov 2026 17:49:03 GMT  
		Size: 331.8 KB (331756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jre-windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:cb39f62e0a7c7752e0ac9b4cfbb7eee1467d7baddc201e13b43ee9540aee9e8a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2347799154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89547840745b77e96d3f626cdc73ac73192eeda3673109d47e27755d2caf97f4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 17:48:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 17:48:09 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:50:13 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_windows_hotspot_25.0.5.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_windows_hotspot_25.0.5.1_2.msi ;     Write-Host ('Verifying sha256 (914d00e351269a6f252cc12d938a7c1ce57352e856f7170f13a60145f5914fc6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '914d00e351269a6f252cc12d938a7c1ce57352e856f7170f13a60145f5914fc6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 17:50:23 GMT
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
	-	`sha256:ab7ffdefcf1ac6238a70f537cfdd348176752d591268681123770d9ce33baf46`  
		Last Modified: Fri, 20 Nov 2026 17:50:28 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb74a2125290fb813c59c2eead4945851314168f2922e81075d68dfb3e648d5`  
		Last Modified: Fri, 20 Nov 2026 17:50:37 GMT  
		Size: 101.4 MB (101385187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee3e40e111b95f333fdbd2a15c39df976e143851f33dfcd575c1d26e682ab19`  
		Last Modified: Fri, 20 Nov 2026 17:50:28 GMT  
		Size: 320.7 KB (320669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
