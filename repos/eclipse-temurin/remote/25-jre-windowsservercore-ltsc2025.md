## `eclipse-temurin:25-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:d7cd9786fd0135470811c48a0266bb64c29672a57a0dd5827794678891410048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:fbba529e4a8cddcbf70b1e1ab9a3809a3ad72e49afad347b4014bac02863d492
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2456490780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a587cc80b712d29c792313af78dd6c5bea95e582d21e63a73abcb28d2e63e3b8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:20 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:59:24 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 15 Jul 2026 23:59:38 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_windows_hotspot_25.0.3_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_windows_hotspot_25.0.3_9.msi ;     Write-Host ('Verifying sha256 (05975ec0d4df8722b30836af98d795a80f72d4cc37a2451943bd23304d5ac0fb) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '05975ec0d4df8722b30836af98d795a80f72d4cc37a2451943bd23304d5ac0fb') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:59:43 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ac4ee773ecceeadd169f6bb0593cd609a4e3a08b152c59568702f23d517bd7`  
		Last Modified: Wed, 15 Jul 2026 23:58:12 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a836ace03c60993bdb1fea7b6367639ad8df3cddb64775f3d9e10f02d98e38b`  
		Last Modified: Wed, 15 Jul 2026 23:59:47 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca751acff608eef0d712e6b1cc4eb0c62cd3cb76934b1693110c2616f11b3896`  
		Last Modified: Wed, 15 Jul 2026 23:59:56 GMT  
		Size: 101.1 MB (101106258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450593c8aa815ae95f79cccd282bf011e45061a8e3ca0b15657a8b578be3c822`  
		Last Modified: Wed, 15 Jul 2026 23:59:47 GMT  
		Size: 373.7 KB (373744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
