## `eclipse-temurin:21-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:39d93b1bf5f5404142bc294429f948b657344fa85a203fad1122aecd934e3bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:21-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:cce896328a35c3344b4ace40c1be637e991cb18ff817e9480c380b24910eb88e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2524940284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa75c58253daf0021b6774995ff8c1933e1e51fc6359e55da3eaa4e99ea645c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:45:46 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 12 Aug 2026 17:46:15 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_windows_hotspot_21.0.11_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_windows_hotspot_21.0.11_10.msi ;     Write-Host ('Verifying sha256 (570b2b7f4d39638afe416e14285e08f27fd14995e0716dcbc07f936a5b91868a) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '570b2b7f4d39638afe416e14285e08f27fd14995e0716dcbc07f936a5b91868a') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:46:21 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:7c130f2a1aeaab8878e1b0043170b6b4fc6a37bbb862bc134e6b03d3044c5f38`  
		Last Modified: Wed, 12 Aug 2026 17:37:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd9ded5209b45b59cec7974d94e71e53a67e6e12b5ac3aebeed4a1b46ede56c`  
		Last Modified: Wed, 12 Aug 2026 17:46:25 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4300f9c19c238e419e1eee831942727bad5f57eaaafa208a23246a97e5998e3`  
		Last Modified: Wed, 12 Aug 2026 17:46:33 GMT  
		Size: 83.8 MB (83793147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f0dfaf893d04d345d81b7ea57c48c2e897e27228072657f511273721597ecb`  
		Last Modified: Wed, 12 Aug 2026 17:46:25 GMT  
		Size: 359.1 KB (359068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
