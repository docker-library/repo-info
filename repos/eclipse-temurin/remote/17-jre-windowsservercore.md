## `eclipse-temurin:17-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:686d9d60a3bd26a8e4047ea9031cb353a27b5bcee181f17139d8d4b183218754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:73ad1dbaed22c2f8f14b2097a445cfd4ddfb6111ab0e25a1bbd55b991b074359
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1461293614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd4b7c01757ed01533133b0948d0de078af6b51ac3dc344a231da1dc5bc1fd6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2023 18:25:50 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:31:42 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.6_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.6_10.msi ;     Write-Host ('Verifying sha256 (ed37aab4dc54c20f54ff7ca3308691963ca517b8d15741a4f14f07857ee3a5ee) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'ed37aab4dc54c20f54ff7ca3308691963ca517b8d15741a4f14f07857ee3a5ee') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 24 Jan 2023 18:32:06 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152cd6d50ea3ba0aa932594b239d9ffd6f67b79f30e3caecb817a85de8adf6c3`  
		Last Modified: Tue, 24 Jan 2023 21:25:55 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f498269c1c735c3765ebee42ca70b3502f4a4326eb992fef6dff6581aff1d751`  
		Last Modified: Tue, 24 Jan 2023 21:28:09 GMT  
		Size: 74.7 MB (74683181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601509d3be7ca11f83827efd83e199c4e09ed31bfaa7875d08b9353f136fbe04`  
		Last Modified: Tue, 24 Jan 2023 21:27:58 GMT  
		Size: 578.5 KB (578525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:3359db2884faa9534fb28f81a138a40f50aea3e5380ed83e0a38f398bc75d027
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1785725851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2478201a19a76eba18bae21ced0292802a6535de5a47ab0fb3ef1b47aa0a9c0b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2023 18:27:38 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:33:02 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.6_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_windows_hotspot_17.0.6_10.msi ;     Write-Host ('Verifying sha256 (ed37aab4dc54c20f54ff7ca3308691963ca517b8d15741a4f14f07857ee3a5ee) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'ed37aab4dc54c20f54ff7ca3308691963ca517b8d15741a4f14f07857ee3a5ee') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 24 Jan 2023 18:33:32 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15284b7927c9ba6dd25e0a56353605eafcb8cd2de671394d4a8596b8e6d578e`  
		Last Modified: Tue, 24 Jan 2023 21:26:40 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88a58f8ac2161b7e2f48b00d6c8bee8d97be8891ed986ed1203eb652a5502ef`  
		Last Modified: Tue, 24 Jan 2023 21:28:30 GMT  
		Size: 74.5 MB (74471546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dfc34c8a9134c989f14f10ea5a825491a2179c257f8ec6ace46d9a24f17eee`  
		Last Modified: Tue, 24 Jan 2023 21:28:19 GMT  
		Size: 3.3 MB (3307525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
