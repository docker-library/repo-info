## `eclipse-temurin:8-jdk-windowsservercore-1809`

```console
$ docker pull eclipse-temurin@sha256:0bf2038c5917b9f432ffdd462705a82c8bf3c097e8cf751c87a87aa6412cbe67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:8-jdk-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:6b2ab037348b4cbc9260044e89dd252561ed046212564095a0c2d6b1b0ef82a4
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1899359282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da5316af1d406106937eee0a5d0db42298189558ffe30cdbebc527542020808`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 25 Jan 2023 19:18:03 GMT
ENV JAVA_VERSION=jdk8u362-b09
# Wed, 25 Jan 2023 19:19:16 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u362b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u362b09.msi ;     Write-Host ('Verifying sha256 (07d6ff7bb5400a618e7e8c6e6104c04c1df6141fa85026526676aa8af011e44c) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '07d6ff7bb5400a618e7e8c6e6104c04c1df6141fa85026526676aa8af011e44c') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 25 Jan 2023 19:19:57 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:f54684fead305d5992d854551bcea7be93b4f2b676fb3560e6055cbe914c072f`  
		Last Modified: Wed, 25 Jan 2023 19:44:11 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af9104d3b16a771336b999a7381434ed58dbe176c0d5f693b8da1504e8c5039`  
		Last Modified: Wed, 25 Jan 2023 19:44:30 GMT  
		Size: 191.1 MB (191063779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd71b3a97aede6e4bb2c6d2fd1a67da32558ffb3c63d27c8c561e63e532de8`  
		Last Modified: Wed, 25 Jan 2023 19:44:12 GMT  
		Size: 348.7 KB (348711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
