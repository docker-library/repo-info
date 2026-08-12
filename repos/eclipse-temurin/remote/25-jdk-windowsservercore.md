## `eclipse-temurin:25-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:ba80c6032171e90a6fc85220bf425ee87c68b5d08a7ba4ef77c9c710a3071a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:25-jdk-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:624860de78d65e28eb33da3db4d2e194a0d10db15c2a2810934647949b931562
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2694902851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d3ab6873e7e0a7a34dc8d5bce4057a3359f7e85fe4aa21e754f3832e370edc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:45:45 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 12 Aug 2026 17:46:28 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ;     Write-Host ('Verifying sha256 (4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:46:34 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:46:35 GMT
CMD ["jshell"]
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
	-	`sha256:61cb816025875130e64ea01cbc95b7845e2d5e93252b4b6645636df5506f622f`  
		Last Modified: Wed, 12 Aug 2026 17:37:09 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40f94257e87f40f0ea90e5431f369ff8c156c82cc593dbc32b45ffef4c840fe`  
		Last Modified: Wed, 12 Aug 2026 17:46:39 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d5107bd70bc4fa25b544be72c67ce51868a31118eceeb25dd93e9978aacfbe`  
		Last Modified: Wed, 12 Aug 2026 17:46:52 GMT  
		Size: 253.8 MB (253754274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233373cae3f3dd5fcb7f0a3046a235b1d53a43cc3f4616d3d438edaa944aca5f`  
		Last Modified: Wed, 12 Aug 2026 17:46:39 GMT  
		Size: 359.2 KB (359212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e9db1d0fb8b572570b7497192ab777cb83a345051bc7c8bd6917e30e3f4f49`  
		Last Modified: Wed, 12 Aug 2026 17:46:39 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jdk-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:0968a8a82b2d354e7463121129e42ff6fa0849f7810d1a632d4f21d645b4ef4c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2438071930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f326d264043583fddf5949ee50d3e618d8b99be23ae3224998753cd80429b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:29:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:23:38 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 12 Aug 2026 18:23:57 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ;     Write-Host ('Verifying sha256 (4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:24:02 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:24:03 GMT
CMD ["jshell"]
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
	-	`sha256:442743b68210bdbca7c9aae95cdde8763285a6a8629ce6ec0439391ffd9c2ab8`  
		Last Modified: Wed, 12 Aug 2026 18:24:07 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb58e8477e207f5f030f63eb6d843f0122fc706bac63eeb7ed2f36bd43c2b91`  
		Last Modified: Wed, 12 Aug 2026 18:24:21 GMT  
		Size: 253.7 MB (253729649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9b8012fddc1a74ea2176341d143e538bd822e1521a7b987623916621539949`  
		Last Modified: Wed, 12 Aug 2026 18:24:07 GMT  
		Size: 340.9 KB (340948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae588f45093a5103e6a6aec209ec079cb08ead716c16daa2a2961a2a65bf12a`  
		Last Modified: Wed, 12 Aug 2026 18:24:07 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
