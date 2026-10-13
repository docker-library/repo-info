## `eclipse-temurin:21-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:8839e41023b4eb5106e1357df4362f2a960043bed1bcfe73c6e9ed3c4999fd43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:21-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:78932059fa782419a376eb0a24619af9b35812a90db17a4e9dd929c7511cdc3d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2310445188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77531c5331a83a98a05d6929c04c445547b7b5ed4325d27db4dffc441c4de10f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
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
# Tue, 13 Oct 2026 23:05:45 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_windows_hotspot_21.0.12.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_windows_hotspot_21.0.12.1_1.msi ;     Write-Host ('Verifying sha256 (536eeb1dc3f743e5932a92e3549430fc75392c5d379101c1456a1c201aa6e66b) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '536eeb1dc3f743e5932a92e3549430fc75392c5d379101c1456a1c201aa6e66b') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:05:50 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:b7960fbd795999d7c5544d51fb327a6695a7104509815be37ec92649ef10e83a`  
		Last Modified: Tue, 13 Oct 2026 23:06:01 GMT  
		Size: 83.8 MB (83816396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620210853b961fbea85e6176321b15d81339144918d98245271e729ece97afa1`  
		Last Modified: Tue, 13 Oct 2026 23:05:54 GMT  
		Size: 340.7 KB (340702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
