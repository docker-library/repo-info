## `eclipse-temurin:11-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:1118a464f5ca11deb9296fda0ee56babe04d71c511701b484e095e56ccef0a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:f3b4da62d7013d821e37ee85172cceea74a00b259587edaa9c00468365b2ea0b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2516270958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcd89f32c8bbb3235ae8536c2bcf6b751ff93f79b446fc54c78cb5ce2264c54`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:45:16 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 12 Aug 2026 17:45:38 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_windows_hotspot_11.0.31_11.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_windows_hotspot_11.0.31_11.msi ;     Write-Host ('Verifying sha256 (a047f90b4520cbd53cc74647aff1f23844299e85e3c469159735801e097208ff) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'a047f90b4520cbd53cc74647aff1f23844299e85e3c469159735801e097208ff') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:45:43 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec60430df3f0a33f1554cb12017e0d893a2300d06c078a92a6b03f3951bcf4ff`  
		Last Modified: Wed, 12 Aug 2026 17:36:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3549580f6f48def9e30c4815c9e9a3dd8168854c197e4ba2d4fa775ca1207d04`  
		Last Modified: Wed, 12 Aug 2026 17:45:47 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e52798723958e45db801678979449ea838d13f97ee1014ce9548f82415872e3`  
		Last Modified: Wed, 12 Aug 2026 17:45:54 GMT  
		Size: 75.1 MB (75124211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1757b43560c58cec165f7f0643b23af2bbc050c397209ab29026106672a5b4dd`  
		Last Modified: Wed, 12 Aug 2026 17:45:48 GMT  
		Size: 358.7 KB (358712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:8d9aeff3dba64e1595242117a47cb56058bf12deb5a2dd79b8d2204a67dc2235
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2259449150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e560e09af494b5465e3e459f060970bbf3b0d86b34492e931a3a5319b9a8ad54`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:34:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:22:45 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 12 Aug 2026 18:22:57 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_windows_hotspot_11.0.31_11.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_windows_hotspot_11.0.31_11.msi ;     Write-Host ('Verifying sha256 (a047f90b4520cbd53cc74647aff1f23844299e85e3c469159735801e097208ff) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'a047f90b4520cbd53cc74647aff1f23844299e85e3c469159735801e097208ff') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:23:02 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd161e481f0c5e7537aa95c6789122ee31dcd6ce57e3c0f949c47a9e1dddb43`  
		Last Modified: Wed, 12 Aug 2026 17:38:25 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f708edbb6d69ccb9d35b2ab9da694efd5a5f430bce23ecab4211f3f768fcb8`  
		Last Modified: Wed, 12 Aug 2026 18:23:06 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02be10448e04a6cf18f0800ea859e447652ff2a46b6ec4e96fa3aaee83fd916c`  
		Last Modified: Wed, 12 Aug 2026 18:23:12 GMT  
		Size: 75.1 MB (75108322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdafc2b4298b64487e553cbf78b3c432121b59952b0d424a0a675fd7170e09a`  
		Last Modified: Wed, 12 Aug 2026 18:23:06 GMT  
		Size: 340.8 KB (340820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
