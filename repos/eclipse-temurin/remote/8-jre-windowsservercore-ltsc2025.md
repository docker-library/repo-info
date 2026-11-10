## `eclipse-temurin:8-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:15a35b934101a54a1d3782adfd1ed55e6990488ddaac8232e6f0e00de8d93aa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:8-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:5c80525aa9e4879c68293304fa06a69a26b7ace0b7cdf3c93c51b5ba8aff617c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2464402566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095b409787f4d10853ba767376427d1b3cb8feb5e4ace226375f7d90c7c9b7fa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Mon, 09 Nov 2026 23:21:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 09 Nov 2026 23:21:30 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:23:08 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_windows_hotspot_8u512b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_windows_hotspot_8u512b09.msi ;     Write-Host ('Verifying sha256 (c60f51ed33d483cebae883d22cba42fb956c79a42150b22fe42341967973c129) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'c60f51ed33d483cebae883d22cba42fb956c79a42150b22fe42341967973c129') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 09 Nov 2026 23:23:19 GMT
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
	-	`sha256:2f770870345da60e45ba03b596bbddabda75b9fed6230cfb376758c489e7a108`  
		Last Modified: Mon, 09 Nov 2026 23:23:24 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7666fe5648a402e05c7ac25cf67cc0202302274f449f1fe55b81f62863527818`  
		Last Modified: Mon, 09 Nov 2026 23:23:24 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ce502ba0641d65160bd888e6c560fae8634508878227f0ad579a190dc7f85a`  
		Last Modified: Mon, 09 Nov 2026 23:23:29 GMT  
		Size: 72.0 MB (72014874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d925bf3c8f7f544b127fc40a0ed640474d9ecda7e967c17b0b2d3fb64ebf8ae8`  
		Last Modified: Mon, 09 Nov 2026 23:23:24 GMT  
		Size: 336.0 KB (335970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
