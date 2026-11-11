## `eclipse-temurin:11-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:66c4a7de3d19bd4d157ae913deb71515df8867c6f2bc7f9aa9ac83a8f3c4de1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:11-windowsservercore` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:0fb7376557888e6a7b5364839c1467f6681a7dfcb27934ad9ec66a414e33a691
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2777604573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6641870bd9c1ab0d77a443eac825061c8ec1e967486bbec2b72553c4c9d9a001`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:58:37 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 21:59:04 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_windows_hotspot_11.0.33_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_windows_hotspot_11.0.33_10.msi ;     Write-Host ('Verifying sha256 (54cf7f8ade921c1a31cc590f80ae4df4be174af7385d874057dbe5d9e9f3c766) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '54cf7f8ade921c1a31cc590f80ae4df4be174af7385d874057dbe5d9e9f3c766') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:59:11 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:59:11 GMT
CMD ["jshell"]
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
	-	`sha256:b2a3b6b33e939ac2fa4a081c58781a823999ca23a1b7caf4a338528815644c64`  
		Last Modified: Wed, 11 Nov 2026 21:52:38 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ace193ccc1035608859357cf8549cc1169507355058e189b9cbd9ea4f43fc8`  
		Last Modified: Wed, 11 Nov 2026 21:59:15 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea078ccf65238113777eeba35d2856843cb31a620c7c4e428d65c66112869b`  
		Last Modified: Wed, 11 Nov 2026 21:59:31 GMT  
		Size: 369.9 MB (369908244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eebddac6ba3530d4ed335a7def93f2e9780b8d64071d6fb046a92629afd5661`  
		Last Modified: Wed, 11 Nov 2026 21:59:15 GMT  
		Size: 361.6 KB (361578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f151a0729fd7d5fda1d3582e4ed052e45afe9151074c1a409a94124f6a1c21`  
		Last Modified: Wed, 11 Nov 2026 21:59:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:15a5b2af588160378838d8acd3c6cec5db5e4e98308376458fac422cad993e06
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2616572946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1da305daf9f84a30420c241abf9b80588671fedbc2c21c4ead87bb8ab1cd42`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:51:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:05:19 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 22:05:46 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_windows_hotspot_11.0.33_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_windows_hotspot_11.0.33_10.msi ;     Write-Host ('Verifying sha256 (54cf7f8ade921c1a31cc590f80ae4df4be174af7385d874057dbe5d9e9f3c766) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '54cf7f8ade921c1a31cc590f80ae4df4be174af7385d874057dbe5d9e9f3c766') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 22:05:52 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:05:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f4d5422eed2c478715bb4732415753d4fe16fb151638b8a66d61f84668b2e1`  
		Last Modified: Wed, 11 Nov 2026 21:55:04 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4828cc5b46be02455ea02eb664032540d5cb7250275fa538fd36be04d0c17d20`  
		Last Modified: Wed, 11 Nov 2026 22:05:57 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b3fe50adcd1ec771a31e3a0735f6fbf739f17ea3bc53f6b088b1b42c1ad27b`  
		Last Modified: Wed, 11 Nov 2026 22:06:12 GMT  
		Size: 369.9 MB (369880571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8f089f251d9ecd16d4ca833a87f0addcb7a3582aca6eb16e6b7ea02fdbbd57`  
		Last Modified: Wed, 11 Nov 2026 22:05:57 GMT  
		Size: 340.7 KB (340703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dc678c2b520c0d6176c15c709a43414d2e060a3af1278baabc54f45ff8f15e`  
		Last Modified: Wed, 11 Nov 2026 22:05:57 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
