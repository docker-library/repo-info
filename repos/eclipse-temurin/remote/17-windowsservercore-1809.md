## `eclipse-temurin:17-windowsservercore-1809`

```console
$ docker pull eclipse-temurin@sha256:d66d20b4340c11502f33ed37284846d3ef79adc170801a154d01d7227a36c45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:17-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:d52e7c642b413b11bb42f72784e5f7decd09ba9db3a16f7daadcf4156d932fb2
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2064449972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a62a5e1f8f0f9fdf817912923a5fc1e70d56fed5c40cf6a5abd306ec5baf471`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2023 18:27:38 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:28:45 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jdk_x64_windows_hotspot_17.0.6_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jdk_x64_windows_hotspot_17.0.6_10.msi ;     Write-Host ('Verifying sha256 (943152d548f8dd24e3c07e67ddc17262d15dc390197cb4ef330867fe4130e590) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '943152d548f8dd24e3c07e67ddc17262d15dc390197cb4ef330867fe4130e590') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 24 Jan 2023 18:29:19 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 24 Jan 2023 18:29:20 GMT
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
	-	`sha256:a15284b7927c9ba6dd25e0a56353605eafcb8cd2de671394d4a8596b8e6d578e`  
		Last Modified: Tue, 24 Jan 2023 21:26:40 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c8467812e46355a1ae4d85d27244142b4a0381cc7439ab77e170cc9a1d2b93`  
		Last Modified: Tue, 24 Jan 2023 21:27:13 GMT  
		Size: 352.6 MB (352580532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3379b2886e9cec92ae0da0346436dbfd684c5a941a9f1bee040de3f6221a40a5`  
		Last Modified: Tue, 24 Jan 2023 21:26:42 GMT  
		Size: 3.9 MB (3921284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d270f11528fe8f50082581bd2a3d326b6f5e06e760054721d6a675833186d8f5`  
		Last Modified: Tue, 24 Jan 2023 21:26:41 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
