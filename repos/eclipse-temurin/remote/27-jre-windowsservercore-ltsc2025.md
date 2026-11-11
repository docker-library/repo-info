## `eclipse-temurin:27-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:af7e6db63f6d093f1955e97fb45df9aaec018878497711a3fbc4a2c64e0a7deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:27-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:f3b7710673483ec65a3019761cf93e150d89ead3276535c19f4ccf9809a0e5d4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2510055913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64ba909ac6cace66c831ef35f74c6f58f8cc0aa1935e88f23b574250ebe39ba`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:51:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:59:29 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 21:59:50 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_windows_hotspot_27.0.1.0.2_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_windows_hotspot_27.0.1.0.2_1.msi ;     Write-Host ('Verifying sha256 (8ae1de5a3b1ee536b433fd1a5215f9f1f8500c333cb3aab310afa9952944602d) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '8ae1de5a3b1ee536b433fd1a5215f9f1f8500c333cb3aab310afa9952944602d') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:59:55 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a83429793a4ac5ba618a8a7b01ad93ab0c9830a822cad537bfba6753945f3`  
		Last Modified: Wed, 11 Nov 2026 21:52:16 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c466a1f6d42359b8a28d60f7a45eb7d6a75b867edc6dc53e994385b1ced7e2a8`  
		Last Modified: Wed, 11 Nov 2026 21:59:59 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7962b94fc4cb2e4d52b3e515e196b7ba192140d819849a486c75e7c88043a87`  
		Last Modified: Wed, 11 Nov 2026 22:00:10 GMT  
		Size: 102.4 MB (102360959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce4518a80cdb1ff89ec491d1f002162a560ea822c9cabc81e80dd0a9a8ecff2`  
		Last Modified: Wed, 11 Nov 2026 22:00:00 GMT  
		Size: 361.5 KB (361458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
