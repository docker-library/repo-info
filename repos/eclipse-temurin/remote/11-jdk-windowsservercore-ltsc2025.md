## `eclipse-temurin:11-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:41c1511df840dd76a4a9fa81e1191946c7aa89ddf9ad7a5a2f58bfab1431c0d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:11-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:3beae5bcdcf5b096959c1ed899fdd01a45e3cf4881d7bdb099aa721002b6ea03
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2762150697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9684371d28e7e5df5613ba35198cc140b299b4ff185196d63ae38128e83c2010`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:51:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:51:09 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 27 Oct 2026 17:51:50 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32.1_1.msi ;     Write-Host ('Verifying sha256 (253989adc3097a52f81560e32986d829bdec6b949b4595a3489220f74d801cdb) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '253989adc3097a52f81560e32986d829bdec6b949b4595a3489220f74d801cdb') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:51:55 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:51:56 GMT
CMD ["jshell"]
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
	-	`sha256:2aa9ad0640d57c2fa487f165c1468c7ed2674b4d64066156533a40544ecf660c`  
		Last Modified: Tue, 27 Oct 2026 17:52:00 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c283ea6433b52f8fb755a9c254e034b96c935ea087eb8b4729f55a2ade5c8`  
		Last Modified: Tue, 27 Oct 2026 17:52:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3f7673a3eb635cf7edd6ef28385a738c015918ad72230f9c1c94a59bfff72a`  
		Last Modified: Tue, 27 Oct 2026 17:52:17 GMT  
		Size: 369.7 MB (369745086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a9b51c9e1b01ccc58f0705c5c1645d806bde660e1438e63b6e4d387a1e9cfc`  
		Last Modified: Tue, 27 Oct 2026 17:52:00 GMT  
		Size: 352.7 KB (352665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818115389ed2e1c36e7a3ade5aff84b505266fccdc6077ecf72d8ad6b40ef1a3`  
		Last Modified: Tue, 27 Oct 2026 17:52:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
