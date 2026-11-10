## `eclipse-temurin:8-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:f7709f55812060d7956a881fae768b26263ea10de4011d86525c689e00466c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:ec76bd88f0f42d5bb4af343ed0471869be744f8ac418a3ad1c2a837cd8f6fbcf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2299379887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf6f5ac54fe54760ad68e7f3f64a35935354a1d77ee7bceec40bdf8841fd7251`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Mon, 09 Nov 2026 23:25:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 09 Nov 2026 23:25:37 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:27:50 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_windows_hotspot_8u512b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_windows_hotspot_8u512b09.msi ;     Write-Host ('Verifying sha256 (c60f51ed33d483cebae883d22cba42fb956c79a42150b22fe42341967973c129) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'c60f51ed33d483cebae883d22cba42fb956c79a42150b22fe42341967973c129') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 09 Nov 2026 23:28:01 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b2d7331ea15d2dc2b49c7af28d0a3bffd84f72755a279f20c845b52eb82c84`  
		Last Modified: Mon, 09 Nov 2026 23:28:06 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099e40f9778be73cf06690e3662db760a09fdb9d6f624a6ac187f20415538379`  
		Last Modified: Mon, 09 Nov 2026 23:28:06 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8894e9af77a82842a4145f38cc9d1615ed01e9f5bffea2bc64ce603c0fd55168`  
		Last Modified: Mon, 09 Nov 2026 23:28:11 GMT  
		Size: 72.0 MB (72000523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfabf4abd0fabf7e8c2d029a86dc76e10ed34e21c91c1908deda2fc33ab871b`  
		Last Modified: Mon, 09 Nov 2026 23:28:06 GMT  
		Size: 320.6 KB (320578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
