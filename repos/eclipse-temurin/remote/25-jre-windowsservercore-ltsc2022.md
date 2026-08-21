## `eclipse-temurin:25-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:4875adfa412b3fdac00382a7f03b9763af031bebfc4489d626ae5216a0c5148c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:eac96add0588817f11e34c0eb0cf6dbd246ca8351228f421c6efc902cb5f0734
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285481312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd3abf96bdfb1f2f63c53bfb54a3fe6455cce10d09c78e19806d3ed0a821c61`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 21 Aug 2026 17:46:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 18:23:05 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:23:19 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_windows_hotspot_25.0.4_7.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_windows_hotspot_25.0.4_7.msi ;     Write-Host ('Verifying sha256 (a0c56fbe62dd18a7da032c1e41fd1da027530ebd472e61b5ae64581ebdcfebc8) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'a0c56fbe62dd18a7da032c1e41fd1da027530ebd472e61b5ae64581ebdcfebc8') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 21 Aug 2026 18:23:25 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:256f3fc7baff19716c244938173e8e74e758a05b4ceb6ce086157b65ae2b3330`  
		Last Modified: Fri, 21 Aug 2026 18:23:29 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d28b16797e2df3f0c64f9c959bcea87dfb8dcdebf4b10712306f5499295f30`  
		Last Modified: Fri, 21 Aug 2026 18:23:37 GMT  
		Size: 101.1 MB (101125836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4546ed55a44298c2382b09c1aed7d7044d8eca666b772bc91bd730656b2e4666`  
		Last Modified: Fri, 21 Aug 2026 18:23:29 GMT  
		Size: 355.4 KB (355436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
