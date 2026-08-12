## `eclipse-temurin:11-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:d9f36e118feaa91b1cf1ba39435bc87f41733f1a73dedec134bf493c260a517c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:11-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:52c13b0413e7ab721e2f6ef043c4ec84cb7f88b783e73793e4937d9d8aa33a41
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2810906262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2af48b364b6e496aeef8065a1ed46860f764252d745753a1d1348e8253ddb56`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:37:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:44:15 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 12 Aug 2026 17:44:54 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_windows_hotspot_11.0.31_11.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_windows_hotspot_11.0.31_11.msi ;     Write-Host ('Verifying sha256 (432d897f39766288a5747ec5f4927136ce89b743df2ab436cf7d230fbbcd596a) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '432d897f39766288a5747ec5f4927136ce89b743df2ab436cf7d230fbbcd596a') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:45:00 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:45:01 GMT
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
	-	`sha256:ced9a03eae92e9718b89c9ca456d9c2da3765689b921390d3b25bba8111a232a`  
		Last Modified: Wed, 12 Aug 2026 17:39:05 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6968925ca264d1b1704a0c89fb4bd4e638010a55cb6cfc92c55c90e2fe346ec8`  
		Last Modified: Wed, 12 Aug 2026 17:45:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e776b1878dac5e9e48dc6a58dff6a6aa20b8e792f3b06c38833097149b3db4cd`  
		Last Modified: Wed, 12 Aug 2026 17:45:24 GMT  
		Size: 369.8 MB (369757886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061b97c13e4d36ab35538a9f61c465fb2f139a0646246e88bb58d3f2b1b6a677`  
		Last Modified: Wed, 12 Aug 2026 17:45:07 GMT  
		Size: 359.1 KB (359071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a0ab8792b6c12bf554ecd4cd0ab0061a0c8281fafcc320272225da538a61b4`  
		Last Modified: Wed, 12 Aug 2026 17:45:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
