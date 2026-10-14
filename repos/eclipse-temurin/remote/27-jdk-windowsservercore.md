## `eclipse-temurin:27-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:cce73be03bf0ae2a080496bf64de20b6a33061bdd84eb955e5ec2316bb7d46e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:27-jdk-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:13f739753ed40bcd56a58fc1aa2731411cdb85b96921b351ba726ca4952a4c87
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2649089243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c708aa0e0c2c5aaceb4157db9ff8bddc020f944c1a0e8887077748811094560b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:03:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:10:28 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 23:10:46 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:10:51 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:10:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3eefa66abec721679c9887cafac6bee200779a314a0042e7975a7884b959c1`  
		Last Modified: Tue, 13 Oct 2026 23:04:01 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff4ca9f5688afb83f2a9a50c5f56f18c727b5c5770d0c9fc2aeca2e59cd09e`  
		Last Modified: Tue, 13 Oct 2026 23:10:55 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8409dff10245332953d39af9ff41f598c893d854b1d250d24dc6687f8794e7f1`  
		Last Modified: Tue, 13 Oct 2026 23:11:15 GMT  
		Size: 256.7 MB (256738718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffc3502effd79e4dcf37c6574d90788b44f2fdf7ed5a254d167042446ff850d`  
		Last Modified: Tue, 13 Oct 2026 23:10:56 GMT  
		Size: 352.4 KB (352372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ccde2cefd95bf3a728b168d67a61466dc30f4c28cbb7f049f2df8643680d6`  
		Last Modified: Tue, 13 Oct 2026 23:10:55 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27-jdk-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:400f888fe25faf54603046e950a0302f8fa4c284af178838cca15de89700c8e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2483357691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aea9a3aa494f9fe61d1e5facfd24fe5b5f52092c538fa66c133b78b80fd9ff6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:09:59 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 23:10:20 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:10:26 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:10:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251a8a5b1fe96d35845fb548d2c34fb7d09b88c05efbd15f7493713fc6debc0`  
		Last Modified: Tue, 13 Oct 2026 23:10:30 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303b39f317ff786a09ae0c1b9b8542474a0d42e636758d76d83b48cd44f7fef`  
		Last Modified: Tue, 13 Oct 2026 23:10:45 GMT  
		Size: 256.7 MB (256727968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd2f7e55933c57e78b42503db79797621faad2b221f3a3bd7f74ffee7d11f72`  
		Last Modified: Tue, 13 Oct 2026 23:10:31 GMT  
		Size: 340.3 KB (340339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ff8d122614aca4d95d6a473ff0f72d8e8ca41ebf041754c042811c240227cc`  
		Last Modified: Tue, 13 Oct 2026 23:10:30 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
