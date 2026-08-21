## `eclipse-temurin:8-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:110445980c47fec9e2d6e08c62371158d716dcbdfda7d0b6f9ff07284a693fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:8-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:45c8c066673483bce5694ebf1079e207fa16b367753ee0c08db58a7b128a060e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2256260763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e6ffef6a9f70ceb011afc1e5d7ca1539a945baaa05b6b85015193d5a3a9e3a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 21 Aug 2026 17:46:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 18:16:46 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:17:51 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_windows_hotspot_8u502b07.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_windows_hotspot_8u502b07.msi ;     Write-Host ('Verifying sha256 (d10ea23f35e10be60775bdff2ea858f4d56fd59e2d7b2c75b61412465fea1fe6) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'd10ea23f35e10be60775bdff2ea858f4d56fd59e2d7b2c75b61412465fea1fe6') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 21 Aug 2026 18:17:57 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434a4b389be160fa579bc402c8d442a0687c758845e3fc8c8a01a5f97fbebc99`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a300a8c2508b631b97bd44fdb9c8ce24b903330a9b28d260efcec16920dd7065`  
		Last Modified: Fri, 21 Aug 2026 18:17:15 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411b4529127019f3f954f1349faed6df3dd841b26467252145f144e4786c8e2`  
		Last Modified: Fri, 21 Aug 2026 18:18:06 GMT  
		Size: 71.9 MB (71907541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b54a5a677839b12fc5928fb577045196c5accdf3a50557f5a09fab28872ad8`  
		Last Modified: Fri, 21 Aug 2026 18:18:01 GMT  
		Size: 353.2 KB (353196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
