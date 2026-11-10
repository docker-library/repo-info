## `eclipse-temurin:11-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:4a2b3d633066d4f73bee927e2e751f9ec05b4f906f6cb2e398fb0c1999951303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:f2aa1c33afd593034c0125aebfd98702f9910e04f023cdc5dbbb068ddb960547
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2467617698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a81288d05f98e2d59821f96fea4fc88877b8989c971e118eb699a79995442b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Mon, 09 Nov 2026 23:19:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 09 Nov 2026 23:45:30 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:45:44 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ;     Write-Host ('Verifying sha256 (09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 09 Nov 2026 23:45:50 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da93ff0a83b5e969a581d44bb157d1926bc8d7716b076b958a31ab7dcdad2db`  
		Last Modified: Mon, 09 Nov 2026 23:21:11 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab29679d64c533d7d4c6d0576aa9a67102dbcdc13ddd880e014469fb83945df4`  
		Last Modified: Mon, 09 Nov 2026 23:45:54 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17fed9d84d2027082ce4e3382fca7bd5c64e5b75333b27f0dc4a4816dbfa3f6`  
		Last Modified: Mon, 09 Nov 2026 23:46:00 GMT  
		Size: 75.2 MB (75192044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3d1f61f7ad6407e3508ffc3022f4d7f23ef0dd094507973c676f7859f02da`  
		Last Modified: Mon, 09 Nov 2026 23:45:54 GMT  
		Size: 374.0 KB (373990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:61f75d854d459318c3af6e6b461ffcd175a55bd3a38587a422cad05ecb1668b5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2302597053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf3d90c3a2536bf968b8ee0e6a0200d3b8d951de0fdcf90f9fa3f7e7dbc4bc4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Mon, 09 Nov 2026 23:25:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 09 Nov 2026 23:45:31 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:45:58 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_windows_hotspot_11.0.33_10.msi ;     Write-Host ('Verifying sha256 (09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '09542d212951bfcd1fa66978fba3c9c3a27fac01501b8887ddea89f56051a702') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 09 Nov 2026 23:46:08 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b2d7331ea15d2dc2b49c7af28d0a3bffd84f72755a279f20c845b52eb82c84`  
		Last Modified: Mon, 09 Nov 2026 23:28:06 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4928640a603f0069f8f4b825b7c22de98cda3899059d1d8ed51fffd29fb0a7c`  
		Last Modified: Mon, 09 Nov 2026 23:46:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1774fe8b90ae37261ac40963bc4fc85199333bf5339779f0a9cfa27b2984a5`  
		Last Modified: Mon, 09 Nov 2026 23:46:18 GMT  
		Size: 75.2 MB (75182265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24638aad1a47a12144cd7af086944fc5c97c8efcb1c2656d1358f37d986e2d1`  
		Last Modified: Mon, 09 Nov 2026 23:46:12 GMT  
		Size: 356.0 KB (356008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
