## `eclipse-temurin:17-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:f85dd1cb9159429928586e087a45ecac4d27eda8497e8c13bf8607be91969f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:1ca84173b2bb500cb9e576ddd1b3ab842e3d08701b51380a6a7bcc1402c39ea1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2430579053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebe8dc5830ef40ab3a25f7c8ac74ab842b253e52e966058b579a95357861360`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:58:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:58:57 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 15 Jul 2026 23:59:25 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ;     Write-Host ('Verifying sha256 (ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:59:31 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:a8b9effc930fd32965dfdb1424d441758d8cb6c1555d737da0cd8f080a6874e5`  
		Last Modified: Wed, 15 Jul 2026 23:59:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea5d6651df940920f5ddc6c423e5ca86f35dd2775319e26ba752749b2117627`  
		Last Modified: Wed, 15 Jul 2026 23:59:35 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ed56f2111a71511ef516aea84c1a64b15e42ada57e1511745cce8087a1254d`  
		Last Modified: Wed, 15 Jul 2026 23:59:41 GMT  
		Size: 75.2 MB (75217930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575247632a5ccceeb40ed1fcd4a2fd9aad5935aee24335f1bb87520b118cb47c`  
		Last Modified: Wed, 15 Jul 2026 23:59:36 GMT  
		Size: 350.4 KB (350357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:511d535fb1d8ed535e59e6412d5339278ccba697d5caa7e97e6eabe7e122e73d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2233267969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7f1d0dea0e05f9e3a96d0f1d9331fc6eebc997918cc0ca471136653e5eee9d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:03:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:21:53 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 15 Jul 2026 23:22:07 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ;     Write-Host ('Verifying sha256 (ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:22:13 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd99cda305ab1db9d8da0e66cf144dcebbcf0c3a5325391dc82055197d387130`  
		Last Modified: Wed, 15 Jul 2026 23:07:15 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe56e13db27c401b6f61fbe8e1b0eda2a8fd32926880a22ab7663c80f8e5a4aa`  
		Last Modified: Wed, 15 Jul 2026 23:22:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf631cf4f83a2d5ffdd278181e5cad6f9abee591a4d0b719c34319d2ee58a47d`  
		Last Modified: Wed, 15 Jul 2026 23:22:24 GMT  
		Size: 75.4 MB (75359793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b16c8ea0ca4becee3ce70f7d08fe701ca495ba1bf0b795f81f7da6cda85d3c0`  
		Last Modified: Wed, 15 Jul 2026 23:22:19 GMT  
		Size: 352.4 KB (352427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
