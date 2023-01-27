## `eclipse-temurin:11-windowsservercore-1809`

```console
$ docker pull eclipse-temurin@sha256:e0ae7fff8509a19b2714970311f1eda1d0daa1dfed76c6eef4a6842f45111ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:11-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:ffd63bb78f10ba4f56166e9448982a3740bdf9db811b4e3fc3e4d571eb07f380
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2075250128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef508cb63a886728ae62e2f0a26a6bbaba6d2f82b5e0dc44b78506e725ae21c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2023 18:19:00 GMT
ENV JAVA_VERSION=jdk-11.0.18+10
# Tue, 24 Jan 2023 18:20:21 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jdk_x64_windows_hotspot_11.0.18_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jdk_x64_windows_hotspot_11.0.18_10.msi ;     Write-Host ('Verifying sha256 (71e84c14606d1478147b46c3687486af0b51886192ff3b6239e51c1af413c688) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '71e84c14606d1478147b46c3687486af0b51886192ff3b6239e51c1af413c688') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 24 Jan 2023 18:20:55 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 24 Jan 2023 18:20:56 GMT
CMD ["jshell"]
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
	-	`sha256:c122bb9f0323cc695b313bd1aee8b34789794e68ea8d06ba88cc2e149af229d3`  
		Last Modified: Tue, 24 Jan 2023 21:23:37 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc26ad8eb7fd00c4b4bef63ea48c968380232ed53b1067a825fda9a175da54b`  
		Last Modified: Tue, 24 Jan 2023 21:24:11 GMT  
		Size: 367.0 MB (366953104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f304f98b71a1fe7af3b9fd91588641c0256f11f57ba2aec1f7110777757cf1`  
		Last Modified: Tue, 24 Jan 2023 21:23:37 GMT  
		Size: 348.8 KB (348825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0bf9be8a35791180b2a61a4d167c9ab9005c4ad6727308471235b4828904aa`  
		Last Modified: Tue, 24 Jan 2023 21:23:37 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
