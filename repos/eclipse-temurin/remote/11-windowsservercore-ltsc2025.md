## `eclipse-temurin:11-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:ec09883f4f121258741197f86e37707294b9b7771d5e0a507df73de3b8575d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:11-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:d0d0d9e473052f49f3524a5ff6b11c2c60b7974975696846df55c0c2ec7c0502
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2827785016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8c6407eb45443e7125fb140b55b0b837f69c21584b0b817e244cba4c5220b7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:15 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:37:15 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32.1_1.msi ;     Write-Host ('Verifying sha256 (253989adc3097a52f81560e32986d829bdec6b949b4595a3489220f74d801cdb) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '253989adc3097a52f81560e32986d829bdec6b949b4595a3489220f74d801cdb') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:23 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 25 Sep 2026 22:37:24 GMT
CMD ["jshell"]
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
	-	`sha256:d26f4edc007fded73bfb0ee1bd7d29aea1666ebc957d533996f2da07221678f5`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4407bb9dca6a784541eb8095a1e5d430dcbefca3bb4c36ba7cb2d196d1996ec3`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f53a3c8a2996ab48f3fc4abf280bb394cef0219ed2e3fd217ab03ceb077b33`  
		Last Modified: Fri, 25 Sep 2026 22:37:45 GMT  
		Size: 369.8 MB (369767250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd7bbee23f74ca3e1aca9866008597e5aa50ab4676249bedcb4fd154c93733c`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 384.2 KB (384246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc03b76ed23b537aba37f73b7d316b299fbc8d857062d4274a41c13d44d05438`  
		Last Modified: Fri, 25 Sep 2026 22:37:28 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
