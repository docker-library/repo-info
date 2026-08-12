## `eclipse-temurin:17-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:3bb3e2dd41461c3130b594e0b15d3fdcdf4e0199bad41ed794a7bb475dc3afe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:453527aeb1f406e7f47593c918d7d07165e7dba33243ae9610b79ee91029b3b9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2521726937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7dd7bb58680f952233703fb4ac7791b4d3013287a4b4732dc908ab59ed3de3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:45:47 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 12 Aug 2026 17:46:12 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ;     Write-Host ('Verifying sha256 (ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:46:20 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:f45c3fa4e19fb5e29c4ec3f18616552d3f4d5c6452158d23ed3c31746089abe4`  
		Last Modified: Wed, 12 Aug 2026 17:35:38 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb37a3474cdbafdd5a3e11bf75614acbc202a503b783c37969fe37a3941ea84`  
		Last Modified: Wed, 12 Aug 2026 17:46:25 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6f6e8739136b9c61d90393ec63be0380fe3cd0453b723840a50720ad51f910`  
		Last Modified: Wed, 12 Aug 2026 17:46:32 GMT  
		Size: 80.6 MB (80579573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8acc9b921f74a6d601b4b5cca370bf968d2b0e9c7c172ec1547c1abe4cf979f`  
		Last Modified: Wed, 12 Aug 2026 17:46:25 GMT  
		Size: 359.3 KB (359319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:a0c839568f0b25e77e06a91c3b7626d7f3237afe370992e58cf0f89a84f56d17
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2259589921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9023537532d52038447c6b1d489fb15b3a2542dba1569d083a5de4c1ad10263f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:29:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:22:54 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 12 Aug 2026 18:23:07 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.19_10.msi ;     Write-Host ('Verifying sha256 (ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'ead2ed434bee9493b08ba68c8778775e18fa050bb9a8a2ae72498e4efb75e95f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:23:12 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:7d3ae8372c7dc940da677be196f9176509b1a8cde99fbaa08997903f5b2b9446`  
		Last Modified: Wed, 12 Aug 2026 18:23:15 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec5f82ba35551309be746d0d0abbf7492afa49f58b7a898b087eda7aec7ee5f`  
		Last Modified: Wed, 12 Aug 2026 18:23:22 GMT  
		Size: 75.2 MB (75248963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e6637b7a17bbcf44c74a4b07676d6a57b49e695b3871460dc6fc5a374e3a1b`  
		Last Modified: Wed, 12 Aug 2026 18:23:16 GMT  
		Size: 340.9 KB (340935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
