## `eclipse-temurin:25-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:42948cdcaafe533ef4149025e1ac40855ac91170eb9f42c0a902347b2991a488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:25-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:586ec8c4a5342c6367b6454dcfcbd84d47cc6ff6ef9c0d73567c17d8828f8088
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2609106703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfb168f4e3c78e3ad250ddc4163c6509c375c3cd8448f292a788270dfd1e69c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:59:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:59:21 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 15 Jul 2026 23:59:56 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ;     Write-Host ('Verifying sha256 (4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Thu, 16 Jul 2026 00:00:02 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Thu, 16 Jul 2026 00:00:03 GMT
CMD ["jshell"]
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
	-	`sha256:2e885520631f2105a6945e02a4797072727b40a8fd0b971790697be1d20384d7`  
		Last Modified: Thu, 16 Jul 2026 00:00:09 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04574ff12f2208bdad156c6afacbfb1210a9159cd05e81fd881c0a34982efb0`  
		Last Modified: Thu, 16 Jul 2026 00:00:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baa2f67fba1b5ee258badd4907b0f8007579f30ad2b243d8f5dfe437163dd7d`  
		Last Modified: Thu, 16 Jul 2026 00:00:26 GMT  
		Size: 253.7 MB (253722425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e10162f1865635283b5106b7ab63ef336ac9c1d99f74835fef70c1f704b2269`  
		Last Modified: Thu, 16 Jul 2026 00:00:09 GMT  
		Size: 372.2 KB (372245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976e79ea1fb68d021e210e5843ae7885d3fde683a37bc5802bbc5953cdde0063`  
		Last Modified: Thu, 16 Jul 2026 00:00:09 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
