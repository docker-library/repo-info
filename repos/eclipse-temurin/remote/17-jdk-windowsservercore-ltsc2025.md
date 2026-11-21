## `eclipse-temurin:17-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:fb2c55baa22ca9b510259b36f552b14c3a4d4871afd6dfed5a35bd0761c57b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:17-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:35bb7ab79cd91e67621f59960f0f33ff5f88f35580cd8d8759571ecb8c46ba2c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764046592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9570754db7ae1f23f70a6d535c8d414df028a586dea0ba3d29dd7dc69a123a3b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Fri, 20 Nov 2026 17:47:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 18:05:53 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:06:21 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21.1_2.msi ;     Write-Host ('Verifying sha256 (28ef9ba7e252c9b16534694a070e0810fdcc7cdb26b72e7b1663c42f6453d45d) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '28ef9ba7e252c9b16534694a070e0810fdcc7cdb26b72e7b1663c42f6453d45d') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 18:06:27 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 20 Nov 2026 18:06:28 GMT
CMD ["jshell"]
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
	-	`sha256:aa2cbc5cd95952c1d464571a766699d1862f9610f72e8b98f676c6502ac6d945`  
		Last Modified: Fri, 20 Nov 2026 18:06:32 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116993fd8751a82cd830a2bfb9fb07c20d4f26290ed9f070a48491f309210963`  
		Last Modified: Fri, 20 Nov 2026 18:06:49 GMT  
		Size: 356.6 MB (356603053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3dfdac73b81dde4c13bcf5aec870477868781761001d87f5673e1479d2f3a2c`  
		Last Modified: Fri, 20 Nov 2026 18:06:32 GMT  
		Size: 372.0 KB (371987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaf21990a425c61f22a0b7ae74853f33ec4c9e575dada5528a5f188092de0b5`  
		Last Modified: Fri, 20 Nov 2026 18:06:32 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
