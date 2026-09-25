## `eclipse-temurin:8-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:822ea0ea829845fab76a000fa1b5e1c3b87aed1f33571b1bd64c396e1ea37c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-jre-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:adabe526eca83909f73c71260c8378186a1ff4132cd365eb2a6cf6266b96208c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2529974167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472c4aa5ad417e8ecefd5da5e504ea3308dc8b7915b472f63b860255dda8d975`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:05 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:36:47 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:36:53 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:3e154cb807894ea11bfd4d4476f00081c4f57645713d526558686f364d9eea65`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0faec1699e3a3cc4c5fbef9e9be7b68388d97cd520229fbf0eb0e398cb6176`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e84472fd4b648993fb6bc15b85a3b6499b7388dd21266a6629724379020fac`  
		Last Modified: Fri, 25 Sep 2026 22:37:02 GMT  
		Size: 72.0 MB (71958441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701894052a083b9a7c65f1c3f2d100cc0cb43588ef0955bfbc58cc678267e392`  
		Last Modified: Fri, 25 Sep 2026 22:36:58 GMT  
		Size: 383.5 KB (383532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jre-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:79360c961e268de2ddc469b75c067bc10854d63f96db3b84240254479b182203
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2291770476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2980397b00d52e8ef5b88a15b898df9f08cf221ddd6116aa9cace1c26f878710`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 22:36:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:14 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:37:09 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:16 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:eac52a5caae33cc726fc03270c5f2b7abdf94d381b6d048509481bc7626fca6d`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072d372e7b308db10145221f5edf73cc86756abe95320d3342b5e9629839da17`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0b215e800648d4edd80f2cd78930f59141b0161c203bb316d30eafa5f493c1`  
		Last Modified: Fri, 25 Sep 2026 22:37:25 GMT  
		Size: 71.9 MB (71924151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f225c3870da86c369846a4fcb71c65414b5db35c8b018c3b2f86028c1e68d48`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 355.0 KB (355000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
