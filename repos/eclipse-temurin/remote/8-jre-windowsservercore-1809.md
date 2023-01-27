## `eclipse-temurin:8-jre-windowsservercore-1809`

```console
$ docker pull eclipse-temurin@sha256:188c6b4d11e94d440928761e3c9f94b4b009d57c41c0b15ea76690e81301c9d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:8-jre-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:a0d19631156010d7ba504f4c1e21a6e038b9e6a9712b20d90de30a1385c165ca
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1780344773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f186127300b571e66203384038a6e7f76c0897a74766592fe9091b77a8028330`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 25 Jan 2023 19:18:03 GMT
ENV JAVA_VERSION=jdk8u362-b09
# Wed, 25 Jan 2023 19:23:42 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jre_x64_windows_hotspot_8u362b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jre_x64_windows_hotspot_8u362b09.msi ;     Write-Host ('Verifying sha256 (fc4b3811a2cb08b1acbb6fc752ef6b2b52375406b6618baa2901f69ba0e03b9f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'fc4b3811a2cb08b1acbb6fc752ef6b2b52375406b6618baa2901f69ba0e03b9f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 25 Jan 2023 19:24:10 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
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
	-	`sha256:46926c9f34dca001f4b94a6069d20516ede7f169793724e50c6d8b0f12d8e03c`  
		Last Modified: Wed, 25 Jan 2023 19:45:36 GMT  
		Size: 72.0 MB (72047964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f557e4ea07cd0fdcd5a1ebd2a742b7a869c2f13ce831079f852f6c0a11b3d215`  
		Last Modified: Wed, 25 Jan 2023 19:45:27 GMT  
		Size: 350.0 KB (350017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
