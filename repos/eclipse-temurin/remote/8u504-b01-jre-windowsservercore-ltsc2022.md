## `eclipse-temurin:8u504-b01-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:1a12f27cb5e4707547d4f14d749cd8bcb60dd55550d6a9b55e17c1cf45eaa62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:8u504-b01-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:865cf00e9061cdd6f1f3caa978e34e5f2e3524c1689931691218e194007ceb66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2298536387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f979a45dcb560e709c2efdc552f8e971afdea95c684f671f38e3b204cff36375`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:04:48 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 23:05:10 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:05:16 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:eae7976460aab5bc5a2a9f7770878ea253b57c4e749afaaf033568b6082a36f2`  
		Last Modified: Tue, 13 Oct 2026 23:05:20 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddadfa44fb492692c56963ee6f97e435232da1667dafe41b6e90fbf10f5ab9d5`  
		Last Modified: Tue, 13 Oct 2026 23:05:20 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c61cea937759d1ccbd0f435ade552dcfa3e6930fc59f77fba1109a0cfe88dee`  
		Last Modified: Tue, 13 Oct 2026 23:05:26 GMT  
		Size: 71.9 MB (71907688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffa898121d68a30182a7da78f8d0bf6c036dcaada6a05892a598ec8ce3651b`  
		Last Modified: Tue, 13 Oct 2026 23:05:20 GMT  
		Size: 340.6 KB (340617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
