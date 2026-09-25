## `eclipse-temurin:8-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:2e94f0b47a4d93caa558a42873be12c642ede0b3799035d6c99fe83282ecfe42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-jdk-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:c480199a38f3f60b5f19160ccc1366610795786efc22d99eb635fa87a59f0103
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2648758113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592a5c533cc4d9ae7d08e34ba9552f01acfee01b6c88d65dd7898540dfad8642`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:02 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:36:53 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:02 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:eaf51ac525448aa10fc02490d5ac25453215354b6520917e486f792b5c088bbd`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c6c80b21ab6b93cdb2838cfee084985a55f262578a3a5ffadd390cd4029fbe`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6260a56fa669fe8863150ae57b1a1d4c7f6cb053f4dbb3f613ade8fde9f495`  
		Last Modified: Fri, 25 Sep 2026 22:37:16 GMT  
		Size: 190.7 MB (190741326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c12cad5e821be3e4adcdc0414ae97d9d70c81664b08d056441cf523eafd6c90`  
		Last Modified: Fri, 25 Sep 2026 22:37:06 GMT  
		Size: 384.6 KB (384552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jdk-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:54213d466d940552088511f38eb22ef871998e1e5577643f4a049dceade4a83e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2410529945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c310059c634b6a7412de70b2e58c69f8f8a5d91b3f18b4ee864c78ab2f17c27`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 22:35:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:35:52 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:37:19 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '5115720df210f3c98b592ea2cb9981f48ba6b6942a7c40ba7fe4a59c37d5b815') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:29 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:ddc4b51fbee2add93f5e8b130c98189d632e013d1f267abc4913240f28042bc6`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555e3a71012dab4ad87d2b2d67a767c13a9e2a44a7d39e90fe2ad062c23ea158`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3883f0cf02f604be312f0f32bca7863aa2745168b32eaf92a41cbf485a931e4e`  
		Last Modified: Fri, 25 Sep 2026 22:37:42 GMT  
		Size: 190.7 MB (190718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa814a1960363589bf10d6198578ab0ba5848cb8a967df75846e2503ded2d700`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 320.0 KB (320045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
