## `eclipse-temurin:25-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:6dac105fef682a452d12a86fe2ae4b01f80ab650a15afc32c0ec39d3498dd312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:636fb18a0c1aeac926dc9856fcc212d60ef659b4907a07450cf055b0a90c3f39
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2328713475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a93cfaa2ed1a305b50ff70af5828fcfc440c58ed033f6a126b1091b399364aa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 29 Oct 2026 19:12:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 29 Oct 2026 19:12:49 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:15:42 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_windows_hotspot_25.0.5_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_windows_hotspot_25.0.5_8.msi ;     Write-Host ('Verifying sha256 (503f1c8ce75378b1dfe89485abdbc2cb1588600937cff87e8a63d70ca5873139) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '503f1c8ce75378b1dfe89485abdbc2cb1588600937cff87e8a63d70ca5873139') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Thu, 29 Oct 2026 19:15:53 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:3bd52eae8a1476a72d2d525090d243ea8ffd348e0bd11099c7d7a775e9d614ba`  
		Last Modified: Thu, 29 Oct 2026 19:15:58 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8ec0f42a995213b8f7257f6c03aab67d116ebd000de979cfc271b010394b35`  
		Last Modified: Thu, 29 Oct 2026 19:15:58 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0a7aa61cd2c32e97af814656202bc4fd3a19d4514bf5cb0c2b40e2d9d97533`  
		Last Modified: Thu, 29 Oct 2026 19:16:07 GMT  
		Size: 101.3 MB (101348194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94ac288abf8a86e7b213ea6b1e3fdc265d2237b5f6aac163eba3ce9eefec102`  
		Last Modified: Thu, 29 Oct 2026 19:15:58 GMT  
		Size: 306.5 KB (306517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
