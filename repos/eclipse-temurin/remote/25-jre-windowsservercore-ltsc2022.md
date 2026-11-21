## `eclipse-temurin:25-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:7573adb0ef96399b8a22ccd6f994e1042c4b01bdc98046a64362d0fab1f3ec83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:cb39f62e0a7c7752e0ac9b4cfbb7eee1467d7baddc201e13b43ee9540aee9e8a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2347799154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89547840745b77e96d3f626cdc73ac73192eeda3673109d47e27755d2caf97f4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 17:48:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 17:48:09 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:50:13 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_windows_hotspot_25.0.5.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_windows_hotspot_25.0.5.1_2.msi ;     Write-Host ('Verifying sha256 (914d00e351269a6f252cc12d938a7c1ce57352e856f7170f13a60145f5914fc6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '914d00e351269a6f252cc12d938a7c1ce57352e856f7170f13a60145f5914fc6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 17:50:23 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9edde7b0f89f2e291c4c0ffd329ea23e002427588c06a2d5ea91c07f3e3bcfe`  
		Last Modified: Fri, 20 Nov 2026 17:50:28 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7ffdefcf1ac6238a70f537cfdd348176752d591268681123770d9ce33baf46`  
		Last Modified: Fri, 20 Nov 2026 17:50:28 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb74a2125290fb813c59c2eead4945851314168f2922e81075d68dfb3e648d5`  
		Last Modified: Fri, 20 Nov 2026 17:50:37 GMT  
		Size: 101.4 MB (101385187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee3e40e111b95f333fdbd2a15c39df976e143851f33dfcd575c1d26e682ab19`  
		Last Modified: Fri, 20 Nov 2026 17:50:28 GMT  
		Size: 320.7 KB (320669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
