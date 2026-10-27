## `eclipse-temurin:26-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:2f53373a988d77a9ea733805bfcc158148b4c4fe0ebfe80527836855e61fecd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:26-jdk-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:15f6334f2771f0f0d1e1cd79cebee2bfc93f356f7b3a2c858a6e0f00d782efbb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2652160651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfcf17a5039f5975a8a35aece4118c602ed97d595bc64d45fa2d89c52ea8da16`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:57:25 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 27 Oct 2026 17:57:58 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ;     Write-Host ('Verifying sha256 (7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:58:05 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:58:05 GMT
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
	-	`sha256:a09a3850914a10792f151aa63f7277b1d6bbb4dc55384746d126fecb192803c2`  
		Last Modified: Tue, 27 Oct 2026 17:49:51 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06ae3a48e3fa6133a52c078ceceae1cad00bab658cc0033207c120ae2c25e8f`  
		Last Modified: Tue, 27 Oct 2026 17:58:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ea632ace9b0ab8cfebcb3b5babd95c8344079a02db34b1923704be541d4d2e`  
		Last Modified: Tue, 27 Oct 2026 17:58:24 GMT  
		Size: 259.8 MB (259754938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bcac6156c3cda051ca99fef51e009152f62823118bd845dd926a817a5e44fa`  
		Last Modified: Tue, 27 Oct 2026 17:58:09 GMT  
		Size: 352.8 KB (352788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1231891eaa02a6d3ed135ec31648534e61c13a3141a25260451a3640bb62b3d5`  
		Last Modified: Tue, 27 Oct 2026 17:58:09 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-jdk-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:c7ec5bfe03a92a876ec565fa6765189d1156a32106331e48ad3b1bd225562511
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2487146945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6733ad3ab151468f29c3c298a87b33375bc856e9d8a183177de309f4b755554c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:51:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:02:43 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 27 Oct 2026 18:03:02 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2.1_1.msi ;     Write-Host ('Verifying sha256 (7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '7983e6655af9fd546d1f5d9f9aa9ef83d2b5b32b32c51c77c2d44266826f3f95') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 18:03:11 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:03:11 GMT
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
	-	`sha256:4c33846e131d5ffb4ab39bd168ff5ac88a294c9293938da526357a3bb3f2169a`  
		Last Modified: Tue, 27 Oct 2026 17:52:46 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa434d5594b786af3e832f8aeb00bd1b65e1181ce42a5026813887ddd3249bf2`  
		Last Modified: Tue, 27 Oct 2026 18:03:15 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1751750135222176c39a12559b516e3bb7e9e89529d2b3e857a50662852feda7`  
		Last Modified: Tue, 27 Oct 2026 18:03:30 GMT  
		Size: 259.7 MB (259746308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f631d50a21c1e376f9a3a55b543f461892e9185584ea696528f9f1b3daa422e`  
		Last Modified: Tue, 27 Oct 2026 18:03:16 GMT  
		Size: 340.5 KB (340541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5faad3db1bcd9abdae97bcd033e75025423cf8751142605e3e9e5ec6076ec0`  
		Last Modified: Tue, 27 Oct 2026 18:03:16 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
