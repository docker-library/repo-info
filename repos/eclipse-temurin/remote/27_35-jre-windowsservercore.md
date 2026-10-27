## `eclipse-temurin:27_35-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:b5c52576c156818e306ec46dab101a686cb3c7eaade4cfbc1c8da0f145128c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27_35-jre-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:e2a57ad72ef4bc21641a4240c309580327ed41ef06a8c561bd1e286d367f7d3f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2494692365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea416f53f058efe8e79770110b474a7f7aa92219663669c56e76cc7f37de05c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:48:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:57:51 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 17:58:04 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:58:09 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:51fb4fa4d06e1f2e3039238a4088d1a60c472518c21e6736054dc7ee51694ba2`  
		Last Modified: Tue, 27 Oct 2026 17:50:19 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790c0f232c98cbc72951d9f34bc134f75cd1d5eb8f15ea3e56c868abb9f8a740`  
		Last Modified: Tue, 27 Oct 2026 17:58:13 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8bb19c21adc6e482df8bb58e828cc9477c109bee7a8a8bd7f9b1907e84e18e`  
		Last Modified: Tue, 27 Oct 2026 17:58:21 GMT  
		Size: 102.3 MB (102287831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a931f8980afc0b66d114be918b7c84d5064d7baf66a48aa68abfd82abc8700be`  
		Last Modified: Tue, 27 Oct 2026 17:58:13 GMT  
		Size: 352.9 KB (352855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27_35-jre-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:6a6acf6c0ace9ea50519c4f47e9f26d227e20b053084e7623880094c8139e175
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2329680001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c0d97fea1050dbe6d8bbbe12117e294450ea1d05aca9695aa8ede00da44dbf5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:03:16 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 18:03:28 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 18:03:34 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488c55bf92a0c0c872918095830a67f20f7404f86708c4f1c76a3927bc0d4d1e`  
		Last Modified: Tue, 27 Oct 2026 17:51:07 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703e1505767b7ca7533986bd672907ff34ab5c1a5511bac8779e0aaf08989a82`  
		Last Modified: Tue, 27 Oct 2026 18:03:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62042569c0ea02ea1512bee8930bc978d909c43261f1864e0abbb3223335703`  
		Last Modified: Tue, 27 Oct 2026 18:03:47 GMT  
		Size: 102.3 MB (102280741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d75bc3bc6cbc81c7ffa5f2db83d5bf8abd6fb484ac09ae4b54b92e81c8a97d`  
		Last Modified: Tue, 27 Oct 2026 18:03:39 GMT  
		Size: 340.5 KB (340480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
