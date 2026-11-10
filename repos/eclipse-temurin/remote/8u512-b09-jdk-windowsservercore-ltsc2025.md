## `eclipse-temurin:8u512-b09-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:14b7b62b63751b11b0067bf54ed9580794d7f42418c8f3ec76ce086932892275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:8u512-b09-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:5b10e5810f9e6fc743a60ee71e52ab5049a2ccbc8482d7d8556a83c2e20276bc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2583200084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d754a76215fcf59001e112a024f3755b9a3f89cd5bbb80d6c8dfa0ba5338d95`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Mon, 09 Nov 2026 23:19:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 09 Nov 2026 23:19:14 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:20:54 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u512b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u512b09.msi ;     Write-Host ('Verifying sha256 (77a730e65149c4cc426209672c7bd1b996ba6423e04c563c381ba083278cf165) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '77a730e65149c4cc426209672c7bd1b996ba6423e04c563c381ba083278cf165') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 09 Nov 2026 23:21:06 GMT
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
	-	`sha256:9da93ff0a83b5e969a581d44bb157d1926bc8d7716b076b958a31ab7dcdad2db`  
		Last Modified: Mon, 09 Nov 2026 23:21:11 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ba7ae50d6435fc2abe011a163c152cacfe28797a2a0c1c0a7303902f801a1`  
		Last Modified: Mon, 09 Nov 2026 23:21:11 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da0333bc2b0cac5d67451163a0bc2aed6c3b1400c6d0332fc36b2dc69031d37`  
		Last Modified: Mon, 09 Nov 2026 23:21:21 GMT  
		Size: 190.8 MB (190811672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee96856dd424da6f70d0b8f6abf79cf6ff6f2bacd187b2b0e141725105c292`  
		Last Modified: Mon, 09 Nov 2026 23:21:11 GMT  
		Size: 336.7 KB (336719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
