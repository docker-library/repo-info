## `eclipse-temurin:8-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:427d3dc92930ed0f5710796128a5de6a1203ff216edcf63ccf341931147c445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:8-jre-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:21e8ff420f2229789c0df527a8faf20869532f933d309fa1a891ca2d90f82280
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2513069790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14a0febfc332aa1cd19905efe1b9d3f61eb37de390da9f8079ce24bda4e5103`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:44:14 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 17:44:44 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:44:50 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:ec60430df3f0a33f1554cb12017e0d893a2300d06c078a92a6b03f3951bcf4ff`  
		Last Modified: Wed, 12 Aug 2026 17:36:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abae2fa9dc41c89fa30b5d59cba45457d3cb23fdc730a39562ee22b07aa073ed`  
		Last Modified: Wed, 12 Aug 2026 17:44:55 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa12d45ca1272501e60ea69b6b6cccf7914b24b3cdeb64b4bbc1d8e19ef23f23`  
		Last Modified: Wed, 12 Aug 2026 17:45:00 GMT  
		Size: 71.9 MB (71922632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1faae71338fff43c88401497de2fea470dd5304397928ba5f558121039051f`  
		Last Modified: Wed, 12 Aug 2026 17:44:55 GMT  
		Size: 359.1 KB (359144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jre-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:d28ddb84e64518838400c99e8bf9d4d75a9fb342df2ab61cdbaa8c4c6763f59f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2256257211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5b1cf0773df9820150a2ea80f429fd28ce776cdfde03ddc357db9d097d0dcd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 18:20:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:22:11 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 18:22:22 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'b606dcaef8d8896be34e18dbd536437b03761411c7b0a992bcdd6c0962a53edc') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:22:28 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:eee2c2ede209d2087e5f4cc1fdf562f6ebe5fe7919972ac91266759a487dd4d2`  
		Last Modified: Wed, 12 Aug 2026 18:21:32 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef9a69a3c788d00573e015613a6d2ff3615f05d4de8fc3ed14e77b184790889`  
		Last Modified: Wed, 12 Aug 2026 18:22:32 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90bb1ac464585d0cf4db9eed39a1b2d01a2972ed785d7f16a62029dfdd87481`  
		Last Modified: Wed, 12 Aug 2026 18:22:37 GMT  
		Size: 71.9 MB (71916484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0471d3ddec74444d8290bcffda580165df050f076b49ac2605343a9df76a768b`  
		Last Modified: Wed, 12 Aug 2026 18:22:33 GMT  
		Size: 340.7 KB (340721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
