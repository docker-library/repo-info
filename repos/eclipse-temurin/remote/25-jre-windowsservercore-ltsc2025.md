## `eclipse-temurin:25-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:a9cf9759a85e5c05edd2b60f7ee29344d20337c717fdd94d7ab23b6f07feff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:0e03897d2bbb04c7b0ec2e263c683b39f5617053090bdd3671b25d689828c780
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2493554865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9846eac4298e562c5e5d1f3acfec91947c63b17618087fd5424aa511fe887e5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:57:23 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 17:57:38 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:57:43 GMT
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
	-	`sha256:93fc49c91a9b34eddf6e910887f61b03f27e96364c9e77c2c33c5bf8914f1b60`  
		Last Modified: Tue, 27 Oct 2026 17:50:26 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8759be61d97d8867c8c6501ec7f4626cc41b88258f0f37e52c37e4036ff91bda`  
		Last Modified: Tue, 27 Oct 2026 17:57:47 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9306fa5a8ec4f408e0339af0deffea9d4bfec22ca302acc0e5f218e47395396`  
		Last Modified: Tue, 27 Oct 2026 17:57:56 GMT  
		Size: 101.2 MB (101150644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c3a519ebe37233e48399f8bc0fafb071f512686cde1ce5dabe365256666c5d`  
		Last Modified: Tue, 27 Oct 2026 17:57:47 GMT  
		Size: 352.6 KB (352571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
