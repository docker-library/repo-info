## `eclipse-temurin:26-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:ce5ece2707a26d779089d2982d4145ad80e041ef7bac8be8f40056641ee9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:26-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:0168c1abfb15ef48c2403fe364fc95aa428a0b4ab9c75ffd693c8f67feabbe43
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2700947407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126f6ba150b48418cda8c6037b704a6eb595ee200e5a7fa0a4b0af134cc75abb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 21 Aug 2026 18:21:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 18:21:15 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:22:13 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ;     Write-Host ('Verifying sha256 (80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 21 Aug 2026 18:22:19 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:22:19 GMT
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
	-	`sha256:88e170fc9e2147a0e9a90b726a0b15d26bfe26e3e266e75bb0cff43805b67558`  
		Last Modified: Fri, 21 Aug 2026 18:22:23 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b6a9a261a664c8687a4f92f9741a77e640efc1b9b117fb0decfe46be0b56ff`  
		Last Modified: Fri, 21 Aug 2026 18:22:23 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62150498bfc9283db90d171e9c21267640eadd9e5a4e7be1403b9897fded2ee`  
		Last Modified: Fri, 21 Aug 2026 18:22:38 GMT  
		Size: 259.8 MB (259775013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262d4c032015eccdb5d01bb43c4c35a5900874660abe5a1d66ad959e46ed9850`  
		Last Modified: Fri, 21 Aug 2026 18:22:23 GMT  
		Size: 383.1 KB (383114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fdb42a63c80a7ebe40877db4389d90860ebf23035a27f3cd14d36a25e4f9c7`  
		Last Modified: Fri, 21 Aug 2026 18:22:23 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
