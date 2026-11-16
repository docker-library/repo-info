## `eclipse-temurin:25-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:d977cf2dc6bc223a8b266d19f94b5c922cbce2ec90bc1fe58f6d8217a961d5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:e857931b81d61f4912e03218a2dc03e69d5942902a62a7dc062c01796916c9f6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2661494595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ed7d109c779536b7c55da2008d7e2026eded6dccd6c4555e01b3799a145d83f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:04:04 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Mon, 16 Nov 2026 20:04:24 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ;     Write-Host ('Verifying sha256 (e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 16 Nov 2026 20:04:32 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:04:33 GMT
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
	-	`sha256:e776cf3634157b0b226086033d3c45b74007823330a75f232a4be3bccff8c8b0`  
		Last Modified: Mon, 16 Nov 2026 19:55:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3445c9455eeaeeb4e2340a2ffef77f0194d23f6176b4b07061e3a83e041c4088`  
		Last Modified: Mon, 16 Nov 2026 20:04:37 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c6a555df151f5c1039fc2cf6e477939671876331711f8a374b08330e8f470d`  
		Last Modified: Mon, 16 Nov 2026 20:04:51 GMT  
		Size: 254.1 MB (254074968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ebbdd173429bc55766e3d7f98daf68faba9cba53275dd2a4e95008391cc101`  
		Last Modified: Mon, 16 Nov 2026 20:04:37 GMT  
		Size: 348.1 KB (348071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db8b10071d9d8373eafdabcf913c762d2000d5274bb0e0a0296779525a1b9b6`  
		Last Modified: Mon, 16 Nov 2026 20:04:37 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:cd1f97265fb0392b5424b63874aec90d050fb056b592e79fc8de78109e4c3595
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2500515196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052e2e98a0f30b6aff47eecdb0c4a84f6edafdcb01fc3dccff104231c074d808`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:05:52 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Mon, 16 Nov 2026 20:06:12 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ;     Write-Host ('Verifying sha256 (e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 16 Nov 2026 20:06:20 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:06:20 GMT
CMD ["jshell"]
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
	-	`sha256:93bdc4b4629459846fc9c6d7b2672783825a6e836f828d40126be8bc3e0d85ac`  
		Last Modified: Mon, 16 Nov 2026 19:55:05 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7837cab00355e00b9c71ff788d1d4a36685f3e3ef2bac3bbbdf1758112394c`  
		Last Modified: Mon, 16 Nov 2026 20:06:24 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645662c5b2dfd48998e207c46e0a975fe87aba2f6e1ed6ab153597df6283db6a`  
		Last Modified: Mon, 16 Nov 2026 20:06:39 GMT  
		Size: 254.1 MB (254079884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0fa9b440342d63d13d6e4345afd4fe8a278b20b8e03c547f00d7652eb00e48`  
		Last Modified: Mon, 16 Nov 2026 20:06:24 GMT  
		Size: 340.7 KB (340692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0facc5b8eb0ab9b8d9624ecc5c61de6af99e950dce6d3c7e8ad28bd760a70ff4`  
		Last Modified: Mon, 16 Nov 2026 20:06:24 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
