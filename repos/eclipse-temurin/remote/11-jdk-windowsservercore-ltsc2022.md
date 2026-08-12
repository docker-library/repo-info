## `eclipse-temurin:11-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:fce3aec2b15b88330cdbdd7ccb2eaaa75e21354bedc8c23177936af6baca44da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:11-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:e4ca529bb72c7d6573f4893239b39b97c7f93b17382ec39d87a4b54bdfc2911e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2554073269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c139894e70ef1b224151ccf8f0abefdbda00238f8b358958933d2e16ca2def8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:50:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:22:37 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 12 Aug 2026 18:23:25 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_windows_hotspot_11.0.31_11.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_windows_hotspot_11.0.31_11.msi ;     Write-Host ('Verifying sha256 (432d897f39766288a5747ec5f4927136ce89b743df2ab436cf7d230fbbcd596a) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '432d897f39766288a5747ec5f4927136ce89b743df2ab436cf7d230fbbcd596a') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:23:33 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:23:33 GMT
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
	-	`sha256:22e05ffa1d42945055559d13c674b9b9745fe283b847111a7d27cac84f7749db`  
		Last Modified: Wed, 12 Aug 2026 17:53:15 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e63d71e8aa7f4fbb9a51c9266ba919bb1549128974493c42a7146e385b1102`  
		Last Modified: Wed, 12 Aug 2026 18:23:37 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da385d277114304386039f515e07d039f8a6b869b0f33a097ea0a135fb82f86`  
		Last Modified: Wed, 12 Aug 2026 18:23:54 GMT  
		Size: 369.7 MB (369731148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5960d12adb524254e047154eb72e1482fa141144a5278f31b745a945b1a7951`  
		Last Modified: Wed, 12 Aug 2026 18:23:38 GMT  
		Size: 340.7 KB (340714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f34b546cdb3de80f6a88e49daa3c240b66b79f1e2be8307f28d246031c0f93`  
		Last Modified: Wed, 12 Aug 2026 18:23:37 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
