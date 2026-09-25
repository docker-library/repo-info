## `eclipse-temurin:25-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:dc2a2bd998aa70375a4bda71cbac7374281b016bb01ebcc52b349f4a4a9c0379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:25-jdk-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:ef95d26bc8512fbf94b8bb493f9a23c43678df17494b0ff2c61846193f42af31
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2711879247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7645abf52565bcf7cf7a45132f8b104bb0d7d70a0cd708153bd5a138082d3a4a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:38:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:38:13 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:38:54 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:39:02 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 25 Sep 2026 22:39:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7293711e9171a8cdbcc769e8eb1b9b02c3481dcd476a0c64d641f0b4f2ca73`  
		Last Modified: Fri, 25 Sep 2026 22:39:06 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61063a7840a83b78758973ffbff865c7bcd45b73fa867ec99364419f7c0ed22`  
		Last Modified: Fri, 25 Sep 2026 22:39:06 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd46a356670737e196ec7e5642d8df62d403475a232f40658ace764aa98214b1`  
		Last Modified: Fri, 25 Sep 2026 22:39:19 GMT  
		Size: 253.9 MB (253862382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8901cac8e8e84ea84b844955d539f5d051087381535458793e7877818c4defe1`  
		Last Modified: Fri, 25 Sep 2026 22:39:06 GMT  
		Size: 383.3 KB (383323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c3bde837c1184721fd06bc05955138bf7a40e82fd3293e2d6c72172b65b6a5`  
		Last Modified: Fri, 25 Sep 2026 22:39:06 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jdk-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:fb0b5247300d5ed19ce23077b657a3df9d1cae53038b336beec13281ce12b901
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2473690415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44d5d3a5308a0b106185981b2ed70857cd6ff259b4d39cc6d2aba500992b4aa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 22:36:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:49:24 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:49:52 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '517b3590be43120c34c3891d09c97a1eddc12da982208c4f5adf1bdc1b5e3f15') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:50:00 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 25 Sep 2026 22:50:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52a5caae33cc726fc03270c5f2b7abdf94d381b6d048509481bc7626fca6d`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3969f33199381cc67ec5d726480ee7c0ab3c1d0d61b70860d84e26ccdeec5da5`  
		Last Modified: Fri, 25 Sep 2026 22:50:05 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb04c62fa680cfa5e75466371af4331afaef5f2b341dd586e1a893143f6feee`  
		Last Modified: Fri, 25 Sep 2026 22:50:18 GMT  
		Size: 253.8 MB (253841957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23c824cb6b31c889ca0eab6efd2f1f3ca78d1d4af2546a6b8b008539714d041`  
		Last Modified: Fri, 25 Sep 2026 22:50:05 GMT  
		Size: 355.8 KB (355802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c326099209b5a29218292235324299bf4def4638841cfd47cb8661e2bb5603d`  
		Last Modified: Fri, 25 Sep 2026 22:50:05 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
