## `eclipse-temurin:25-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:a970bb0f88155eaa92735acb7ac97833e412d60f35c1f724b34001043de2fed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:25-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:624860de78d65e28eb33da3db4d2e194a0d10db15c2a2810934647949b931562
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2694902851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d3ab6873e7e0a7a34dc8d5bce4057a3359f7e85fe4aa21e754f3832e370edc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:45:45 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 12 Aug 2026 17:46:28 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ;     Write-Host ('Verifying sha256 (4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:46:34 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:46:35 GMT
CMD ["jshell"]
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
	-	`sha256:61cb816025875130e64ea01cbc95b7845e2d5e93252b4b6645636df5506f622f`  
		Last Modified: Wed, 12 Aug 2026 17:37:09 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40f94257e87f40f0ea90e5431f369ff8c156c82cc593dbc32b45ffef4c840fe`  
		Last Modified: Wed, 12 Aug 2026 17:46:39 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d5107bd70bc4fa25b544be72c67ce51868a31118eceeb25dd93e9978aacfbe`  
		Last Modified: Wed, 12 Aug 2026 17:46:52 GMT  
		Size: 253.8 MB (253754274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233373cae3f3dd5fcb7f0a3046a235b1d53a43cc3f4616d3d438edaa944aca5f`  
		Last Modified: Wed, 12 Aug 2026 17:46:39 GMT  
		Size: 359.2 KB (359212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e9db1d0fb8b572570b7497192ab777cb83a345051bc7c8bd6917e30e3f4f49`  
		Last Modified: Wed, 12 Aug 2026 17:46:39 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
