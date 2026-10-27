## `eclipse-temurin:25-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:668f6ede9bdeb0f6a4251bedac9882999989b99070622be92151df06927843df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:25-jdk-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:d5e2caa34d9189d24c4594e5787adf984375e47dadeb322069bb39d85dc5b478
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2651568964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66581923fa4708026d673e83642194a7f8e93fd6a75c8055a50848c39143795`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:48:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:57:23 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 17:57:49 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:57:56 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:57:56 GMT
CMD ["jshell"]
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
	-	`sha256:c80ed5c001546c8ba77b5502c91e1c6c1d3895b6c480fa92fbab4a6d7004983e`  
		Last Modified: Tue, 27 Oct 2026 17:49:50 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad97fc38640f3dac7d4586abb7c40f5931ee7c21664d4e85dd3329570cbf163`  
		Last Modified: Tue, 27 Oct 2026 17:58:00 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57d0251787161d16c0fadccb0ee673755680a568d24ccd89a09ba68fbf886b3`  
		Last Modified: Tue, 27 Oct 2026 17:58:16 GMT  
		Size: 259.2 MB (259163183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3d0ddf22038b28afc399061b143697a34a45b79b87c1e06a9c0c3b7df0c985`  
		Last Modified: Tue, 27 Oct 2026 17:58:01 GMT  
		Size: 352.8 KB (352840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364421bb95dc33ffdd46304d8f8a576dfbd23c792183e2c198fb022c89367de1`  
		Last Modified: Tue, 27 Oct 2026 17:58:00 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jdk-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:8857d3eaa71a665406c1fbe2896f56de90b326a6b0ecf09bb6376b399bccf149
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2481229131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52853bf65bcf835dfd026dc6fd609d6276ea00127985877ded566e7936a708a6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:02:18 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 18:02:35 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 18:02:42 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:02:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488c55bf92a0c0c872918095830a67f20f7404f86708c4f1c76a3927bc0d4d1e`  
		Last Modified: Tue, 27 Oct 2026 17:51:07 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b3ac096b2fdf95808fe6d46d1efbde7874c9b459dc56bacc137fd702960331`  
		Last Modified: Tue, 27 Oct 2026 18:02:47 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa63e06f8d83da89d4e528d572b63894012a10211b43b7530d26bfc219f49f10`  
		Last Modified: Tue, 27 Oct 2026 18:03:00 GMT  
		Size: 253.8 MB (253828243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57798a8ff53f1935f08da41caa3ad71c6f1a6f4733eca2da4a7c67fd591319ab`  
		Last Modified: Tue, 27 Oct 2026 18:02:47 GMT  
		Size: 340.8 KB (340803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3af715e643183e63538bc94fe0837611cb8e9593b642b3694f8fdc42264a30`  
		Last Modified: Tue, 27 Oct 2026 18:02:47 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
