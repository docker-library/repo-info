## `eclipse-temurin:8u492-b09-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:b06608ae22f8b026dd9e8000e47165d2c8e4af0789b1950954dec02faaf3a17a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:8u492-b09-jdk-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:b0e3600f88bdcf722a12d23f4876afea1c3a67fe51cd353a6d26c2bf991c41e6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2631841402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5da4a80d87e4e9ae7581e99b6f71a443a9d6abe79413f3a2e4625466fc94c1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:37:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:37:33 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 17:38:51 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:39:00 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:ced9a03eae92e9718b89c9ca456d9c2da3765689b921390d3b25bba8111a232a`  
		Last Modified: Wed, 12 Aug 2026 17:39:05 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308d81125d6c81d4b7c9322b914ad3bf41122ac3cb5b71f0740cf7da8af2abc`  
		Last Modified: Wed, 12 Aug 2026 17:39:05 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5159ffaeddc32b12619d3e70606103d864c79e140dfdcc7e77f171a859efa6c6`  
		Last Modified: Wed, 12 Aug 2026 17:39:15 GMT  
		Size: 190.7 MB (190694362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2093172ea90f38d9d5a341deaae608662b0541b87f1b9d917b36b426efbfd32`  
		Last Modified: Wed, 12 Aug 2026 17:39:05 GMT  
		Size: 359.0 KB (359037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8u492-b09-jdk-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:8030dae3ffef5160d9c1b3cba9c4fbd7d2f9122f1474110cc119c325fd97131f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2375020985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0face42bd79d3484148075e5c773049a699565b8cd9616584946a9410c9642d7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:29:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:22:01 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 18:22:20 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:22:25 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:38e1b28ed0ae3810fc60b70ae721befaf7ae0262b232808d6fb32800f97198e9`  
		Last Modified: Wed, 12 Aug 2026 17:31:51 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fb6b557fb3dabffb82e597e3f87b4244687ecb1252b405a9d38d22e0295e29`  
		Last Modified: Wed, 12 Aug 2026 18:22:29 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb5a66f51a77b5cc49d06358dd996eb311d700288a2108b9744a99a5bbe8401`  
		Last Modified: Wed, 12 Aug 2026 18:22:39 GMT  
		Size: 190.7 MB (190679666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb0d74d6bf5987a8c7f39e84354a9bad0c0b4060d0c1834ab49ea1bfbe8703`  
		Last Modified: Wed, 12 Aug 2026 18:22:29 GMT  
		Size: 341.3 KB (341301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
