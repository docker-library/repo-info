## `eclipse-temurin:25-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:d044c297bcd5f4a9293b3c287888953cc08871b8bfc26937917ef90d123e4227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:25-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:f496b95d2a7f93f8bdde175bebb55d329208e83b2d4acc10e49d61fac518a7b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411756738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cefca4e87532f2857b4578d3ef50e49c202a11c0d11eb53241ac491653a613f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:05:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:22:21 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 15 Jul 2026 23:22:41 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ;     Write-Host ('Verifying sha256 (4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:22:47 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:22:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcdf0d30539dd8057458012ecb38d8b289902f8ebed3f36a067d7a932499d490`  
		Last Modified: Wed, 15 Jul 2026 23:09:52 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980d042c306c68f40d182af04952ecd80ff7b4a5637acc9664ad51dac310c973`  
		Last Modified: Wed, 15 Jul 2026 23:22:52 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65ae45297e3426236c21c29b1e0160bed8642324f4f4b4141587619a012a2b`  
		Last Modified: Wed, 15 Jul 2026 23:23:05 GMT  
		Size: 253.8 MB (253846295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0bcee087126ce21cae871285a2550bc04be129c664cade0d04be4e58407edf`  
		Last Modified: Wed, 15 Jul 2026 23:22:52 GMT  
		Size: 353.4 KB (353411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be8e8a14f23232e3f80d4878d6af6a9a1bfae91e25204893e11f81d5e9c1135`  
		Last Modified: Wed, 15 Jul 2026 23:22:52 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
