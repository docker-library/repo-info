## `eclipse-temurin:25-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:437777e7d28fc898a4c957488f4efaf767840087db5c48bb5f495514f4e16631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:c6cac2c970cbef79f3f58da3983267091c1c48141ab01251b65ab9c6d8084548
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2509065643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab3a2ec90d8c0dd153063552d1950414048966ebd2ad27b43d821869cab4857`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:51:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:58:49 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 21:59:02 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_windows_hotspot_25.0.5_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_windows_hotspot_25.0.5_8.msi ;     Write-Host ('Verifying sha256 (503f1c8ce75378b1dfe89485abdbc2cb1588600937cff87e8a63d70ca5873139) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '503f1c8ce75378b1dfe89485abdbc2cb1588600937cff87e8a63d70ca5873139') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:59:09 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee124fcf06ce994877ef03c64e2c448fe5d4ce41e5657d61415da28c839b8dd`  
		Last Modified: Wed, 11 Nov 2026 21:52:14 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdd463283f10b0b4195f13dee23dd8d1a24710039e299bfdae6883f555dbda9`  
		Last Modified: Wed, 11 Nov 2026 21:59:14 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597336f804cce931942538baebe7af78380805b928fbd8d1b5e795b9ac5a366e`  
		Last Modified: Wed, 11 Nov 2026 21:59:22 GMT  
		Size: 101.4 MB (101371149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0ad29aca0097692f1c4d246aa68678d92b7da16773feb08de8fb473b4b6511`  
		Last Modified: Wed, 11 Nov 2026 21:59:14 GMT  
		Size: 361.0 KB (361034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
