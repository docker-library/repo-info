## `eclipse-temurin:8u504-b01-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:16ca6193ed692c9d67f226785b5bd8ec228228b496b708e523edab2b15e14b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:8u504-b01-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:9654ea8c883621bdbf5a08f7554225769bfb6de2876436c3a9411f3d484db444
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2583120112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3376874ccd831f73b55826d01ae1235e68c102dcd86db8df828476390d6f89b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:49:13 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 17:49:38 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:49:47 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:a09a3850914a10792f151aa63f7277b1d6bbb4dc55384746d126fecb192803c2`  
		Last Modified: Tue, 27 Oct 2026 17:49:51 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13111ef8cbfb8335e202b1512e419d8d8519036471bc465ad441b54b7272247d`  
		Last Modified: Tue, 27 Oct 2026 17:49:51 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2b6f3404a96c4e41c7c443df2b56f1e102e1dbe8c957a99ea354d46b92a209`  
		Last Modified: Tue, 27 Oct 2026 17:50:01 GMT  
		Size: 190.7 MB (190715310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2bbbdba3bd161cbf18c050c91fb36ed4fa2a436570070a367bf2cd5812f57a`  
		Last Modified: Tue, 27 Oct 2026 17:49:51 GMT  
		Size: 353.2 KB (353164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
