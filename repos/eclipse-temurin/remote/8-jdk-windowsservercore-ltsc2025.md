## `eclipse-temurin:8-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:4a28be5edf83687d08a709a78370c4eca6e0798c6c76454f23ff627f941a042d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:8-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:b0e3600f88bdcf722a12d23f4876afea1c3a67fe51cd353a6d26c2bf991c41e6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2631841402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5da4a80d87e4e9ae7581e99b6f71a443a9d6abe79413f3a2e4625466fc94c1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:37:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:37:33 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 17:38:51 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u492b09.msi ;     Write-Host ('Verifying sha256 (e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e931546f0557e0735472e99c5f0a62d34854ab8a2fee9709bfcbc7ea6dcc5172') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:39:00 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:ced9a03eae92e9718b89c9ca456d9c2da3765689b921390d3b25bba8111a232a`  
		Last Modified: Wed, 12 Aug 2026 17:39:05 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308d81125d6c81d4b7c9322b914ad3bf41122ac3cb5b71f0740cf7da8af2abc`  
		Last Modified: Wed, 12 Aug 2026 17:39:05 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5159ffaeddc32b12619d3e70606103d864c79e140dfdcc7e77f171a859efa6c6`  
		Last Modified: Wed, 12 Aug 2026 17:39:15 GMT  
		Size: 190.7 MB (190694362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2093172ea90f38d9d5a341deaae608662b0541b87f1b9d917b36b426efbfd32`  
		Last Modified: Wed, 12 Aug 2026 17:39:05 GMT  
		Size: 359.0 KB (359037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
