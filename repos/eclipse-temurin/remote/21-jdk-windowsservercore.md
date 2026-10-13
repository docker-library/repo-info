## `eclipse-temurin:21-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:c2c3669be80add846c97b4c59569c9c5e2c5c7dab3b1ab978abc096ea2bf6ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:21-jdk-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:77bdaa376f26d312a8ef7e9ea60c6813e6986f373201414413d09fd237d20140
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2607648370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c72ed3e3e78f06185d92f6633a43e258df622106e13579ff25c165dee2ee171`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:04:27 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 23:04:50 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_windows_hotspot_21.0.12.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_windows_hotspot_21.0.12.1_1.msi ;     Write-Host ('Verifying sha256 (454cfd334b9ca91c96dd8c2de97fcef6b9f1f98be9172ff076711f1c6b44e4e0) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '454cfd334b9ca91c96dd8c2de97fcef6b9f1f98be9172ff076711f1c6b44e4e0') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:04:56 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:04:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3f6d100207547955a1278c1b40af90098757780b2db15625c4025a19062c53`  
		Last Modified: Tue, 13 Oct 2026 23:05:00 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258c26f5e2115185cc3834ed395a8119ae358d062ebd7c754474c0006b7b9b35`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 381.0 MB (381018285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b978ff7256888e97e0f2c6c4006d01ed56b74821b0c01d6af062121937e7f3`  
		Last Modified: Tue, 13 Oct 2026 23:05:01 GMT  
		Size: 340.7 KB (340674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3977cbdec49b431493ee6e7a94f7e17d7b0414fd43686fadee1f318af92a18e0`  
		Last Modified: Tue, 13 Oct 2026 23:05:00 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
