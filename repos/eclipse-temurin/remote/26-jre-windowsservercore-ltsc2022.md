## `eclipse-temurin:26-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:b9edcb83f68fbbd352d7b3546948c8648401ba1df44f47aa84e389e688a2dffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:88c0ab3a0f1c8627d4322979102ea9fda303f06303af233ef0032ae741ff758f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2323748788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37597319156b284998973a96c3662debc2edbcbfc86f8ef4ff791f2581ccb8b7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:35:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:46:39 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 22:47:01 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_windows_hotspot_26.0.2_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_windows_hotspot_26.0.2_10.msi ;     Write-Host ('Verifying sha256 (b35b3ded4429c10442e7809bf38b0000fc58d944b08e354c872938d638de4ee6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'b35b3ded4429c10442e7809bf38b0000fc58d944b08e354c872938d638de4ee6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 09 Sep 2026 22:47:08 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:390c3dd940ecf265b861931ae3dc9b5172a4e1d3a6a62ef3d59a7d2e3180d1a9`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912fcc4c071c2c05e778f4ccae48650a7a67c86b566b235b1395d9fffab56b84`  
		Last Modified: Wed, 09 Sep 2026 22:47:11 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c53fbc99368c30cb5c26192bddf7ed5a7d733da3f50d4f024d9d7bb4ceae16`  
		Last Modified: Wed, 09 Sep 2026 22:47:20 GMT  
		Size: 103.9 MB (103916980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b721f3dfde4b0fa159cbff693ba2719fa32b656f3e6164556bc6b361a5dc03`  
		Last Modified: Wed, 09 Sep 2026 22:47:12 GMT  
		Size: 340.5 KB (340467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
