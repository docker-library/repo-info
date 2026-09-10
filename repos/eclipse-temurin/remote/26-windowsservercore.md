## `eclipse-temurin:26-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:5160a66f7963ea8188cecc894d4644e50c80d0687b7f1b0fb3946d731615dd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:26-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:178f900d250f29f4d0536392fc719b6cb0d5a950bfb2a923a414312f0664cce7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2717743473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f82d4c0ad6992daa3488b4cd51fded50a65562fa8b8f5406f92bc00b89f256`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:44:51 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 22:45:30 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ;     Write-Host ('Verifying sha256 (80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 09 Sep 2026 22:45:37 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:45:37 GMT
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
	-	`sha256:26dc355f42a5bb10dbce669ddc6a18064a7c4dc378168c05587facc071708ea7`  
		Last Modified: Wed, 09 Sep 2026 22:33:55 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a93ed9916d485d48dc57a591a0f66150ee325818bd687f93ffd003b5b5d99b`  
		Last Modified: Wed, 09 Sep 2026 22:45:41 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc650907a4a298e3c53597fc9cb1438e0f6ce175c63ecc6286637e13c5fd31a8`  
		Last Modified: Wed, 09 Sep 2026 22:45:56 GMT  
		Size: 259.8 MB (259750521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86441799869397c41a5b0cc2e47fd3b3d9f9c80dba522ab49254934a684e5c77`  
		Last Modified: Wed, 09 Sep 2026 22:45:42 GMT  
		Size: 359.5 KB (359464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33be24f124e48edecfb08271d7b6d8dd7d8bac797042812eeb3b412d5c9d4a0`  
		Last Modified: Wed, 09 Sep 2026 22:45:41 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:2ebabb1f60254542ba0f0c65f93e987e3d37923dce6c0c948ddd25202ee4c144
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2479578127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f77f77f681d27e4280dd0944d92b97e5d1fcbfd7572dc18f847ae417d3e962`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:46:37 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 22:47:39 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ;     Write-Host ('Verifying sha256 (80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 09 Sep 2026 22:47:47 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:47:47 GMT
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
	-	`sha256:786a81c2904851d2f66fc6670e36ddb5d4eda26639a62a7badebf31d08f1160b`  
		Last Modified: Wed, 09 Sep 2026 22:35:04 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc66a5a55ff2b05430d22c3dfac89304d9b2dcbf0a65ec11d4178760c9146f`  
		Last Modified: Wed, 09 Sep 2026 22:47:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ab6b69cf7c80090c816cbf1d745589a9b938256a34dc059bfa6681cf22d84`  
		Last Modified: Wed, 09 Sep 2026 22:48:06 GMT  
		Size: 259.7 MB (259744436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d08af732cd30d35f9c49e708ee95a5d8508d3ced81820a8a98ac01f30d539e`  
		Last Modified: Wed, 09 Sep 2026 22:47:51 GMT  
		Size: 341.0 KB (341036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec40d31d0d8bf6aaacc1d1f4c94e50d0620370f9da005400ee9aacae9a2817d4`  
		Last Modified: Wed, 09 Sep 2026 22:47:51 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
