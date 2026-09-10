## `eclipse-temurin:8u502-b07-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:73bac5f5b098f75ef4407124db8167204d77779d515c017d776d6ee56cd57928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8u502-b07-jre-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:8dc563ae4ac3eb5408d89eebf9a09093fc967f179b4e7073e96b84aa84d1da7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2529920878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5335216c7bc9ca8e25f8e557c961d8b715f12065c0a17d34bad1e82e9496d4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:36:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:36:01 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:36:56 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_windows_hotspot_8u502b07.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_windows_hotspot_8u502b07.msi ;     Write-Host ('Verifying sha256 (d10ea23f35e10be60775bdff2ea858f4d56fd59e2d7b2c75b61412465fea1fe6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'd10ea23f35e10be60775bdff2ea858f4d56fd59e2d7b2c75b61412465fea1fe6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 09 Sep 2026 22:37:05 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10168a5b915c41c4bd65cf1279b53e33fa3cc32e694a759db1ea2ba4ffc50b2`  
		Last Modified: Wed, 09 Sep 2026 22:37:10 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d84a0103990969b43324e5ebcbfe1c7f48f5781dcacdf139a16450ba1c7acfb`  
		Last Modified: Wed, 09 Sep 2026 22:37:10 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a07386e9592e82d01efd97be94ceb495a03869f32af37724978b88d60ccefa3`  
		Last Modified: Wed, 09 Sep 2026 22:37:15 GMT  
		Size: 71.9 MB (71928726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084df0f7c27d9437f2c4469608d920d2f5cd1fc50dab075fafb9bc95572cd6b4`  
		Last Modified: Wed, 09 Sep 2026 22:37:10 GMT  
		Size: 359.9 KB (359913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8u502-b07-jre-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:ea826ea4d885eae16d6b1d49697c02c3eeb1757284c043586951294f3471e1c0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2291739177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff05c07f312c281d99fa7243d89084dcf5f44c96371998a4bd8ae37258795c1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:45:26 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:45:37 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_windows_hotspot_8u502b07.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_windows_hotspot_8u502b07.msi ;     Write-Host ('Verifying sha256 (d10ea23f35e10be60775bdff2ea858f4d56fd59e2d7b2c75b61412465fea1fe6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'd10ea23f35e10be60775bdff2ea858f4d56fd59e2d7b2c75b61412465fea1fe6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 09 Sep 2026 22:45:44 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb36326a4e986b5e7ed3fd205237f394d9a2010ffa93cad75dc842869f221b50`  
		Last Modified: Wed, 09 Sep 2026 22:35:41 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61976232cacb1d1f863e570b911d2fbe485af24c280fc021b4aee344a2875782`  
		Last Modified: Wed, 09 Sep 2026 22:45:48 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31388a27e510e7fe53679d5cd39b7cbcee37ff3bfafe5f8ba8d7b2240cee920f`  
		Last Modified: Wed, 09 Sep 2026 22:45:53 GMT  
		Size: 71.9 MB (71907075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f5071d8e9b30f29a3808f5f855bf5e32c81179f4ecd50c355c8bd2a4d0b6f8`  
		Last Modified: Wed, 09 Sep 2026 22:45:48 GMT  
		Size: 340.8 KB (340756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
