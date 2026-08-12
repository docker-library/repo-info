## `eclipse-temurin:26-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:eb989d5cfccfda2f859e55b869df31875bcc4e16cf03c8782a5133d152656537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:42381f8af19f35aa2c5bea6b5e03ef7b9dca7c651c6f68b78f340fd246efbe34
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2288238156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b738b954dd9a494ca20682213cb9c3e42b57f80df783c3d5ef76df438c37a141`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 18:24:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:24:36 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 12 Aug 2026 18:25:32 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_windows_hotspot_26.0.1_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_windows_hotspot_26.0.1_8.msi ;     Write-Host ('Verifying sha256 (400bdf064a84e8cb47d442a054d8931fbfdf81a867ecb68c5b99541db32fabab) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '400bdf064a84e8cb47d442a054d8931fbfdf81a867ecb68c5b99541db32fabab') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:25:41 GMT
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
	-	`sha256:034e5ea7c53223eee5f7d7db61b99554a8d31c226fa8d96d3da763b49a28dc39`  
		Last Modified: Wed, 12 Aug 2026 18:25:45 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cbae858ba96910d60e2f28ea74e096caeb11faf61e3f4d6213d70bc073e717`  
		Last Modified: Wed, 12 Aug 2026 18:25:45 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71de2e7f84f2d03b40a90329ae8bb34bce7fd2372a65ca5d297ad7d11820cb19`  
		Last Modified: Wed, 12 Aug 2026 18:25:54 GMT  
		Size: 103.9 MB (103897511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a8ea143c4aeabd6d8d2903072b1119ccead6d487ec8617336f8e6e6c55850`  
		Last Modified: Wed, 12 Aug 2026 18:25:45 GMT  
		Size: 340.6 KB (340609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
