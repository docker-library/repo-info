## `eclipse-temurin:8-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:6fb8be320402c3137025f297a44e7f46c768400648bf06caee77a609e76dabfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:8-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:fcc3ba53420cb13f111c6f1e1e851adb2fa81538c7250a8c84935380e0b88c4d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2464339670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10797871fe3cd664c2a3ddc5d0095b44b0d40d9e572ff70b2cf20e2ad2e01ba6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:49:46 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 17:50:07 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:50:13 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76701a8c26ff18a752c2ad3c6ece4a3f716cd6a4ba8debb82fa4ea6207245f1`  
		Last Modified: Tue, 27 Oct 2026 17:50:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f7d438f718b2d89d72dda3314ed0857db45482dd743c23539e83489253a656`  
		Last Modified: Tue, 27 Oct 2026 17:50:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb97b0eb9d6fa0293f44b392644073bbb6e50e23c20b1304e6774b330dbbc904`  
		Last Modified: Tue, 27 Oct 2026 17:50:22 GMT  
		Size: 71.9 MB (71935232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e34bfd127e70581e2b89502f9dd6b48d2d7b949fd0c10f2cd818f70dec1f04e`  
		Last Modified: Tue, 27 Oct 2026 17:50:17 GMT  
		Size: 352.8 KB (352779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
