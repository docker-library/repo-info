## `eclipse-temurin:17-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:9fd71ba6f210c25b1196eebe808ff22b991a6180ca5fea7b1a3d4e6b30349882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `eclipse-temurin:17-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:862e2d85bb82681e5df1191b2bf0b2ee644cdeac9768112d4d2d2c80243db045
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1739394234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a3e1c230d94e0de88e5befee3c1cf5aa9ec70885b216057f55bb291925aac8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 24 Jan 2023 18:25:50 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:26:57 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jdk_x64_windows_hotspot_17.0.6_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jdk_x64_windows_hotspot_17.0.6_10.msi ;     Write-Host ('Verifying sha256 (943152d548f8dd24e3c07e67ddc17262d15dc390197cb4ef330867fe4130e590) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '943152d548f8dd24e3c07e67ddc17262d15dc390197cb4ef330867fe4130e590') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 24 Jan 2023 18:27:28 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 24 Jan 2023 18:27:29 GMT
CMD ["jshell"]
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
	-	`sha256:8830e93fb764dea9de9f63b52f734b2b249fd7c23c2ee647ffa3c922ac10d43b`  
		Last Modified: Tue, 24 Jan 2023 21:26:29 GMT  
		Size: 352.8 MB (352783211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62710a73f6f6a039d3d1c31d45113b875e3aa27ce8ba7de9cd492b9da267e1e`  
		Last Modified: Tue, 24 Jan 2023 21:25:55 GMT  
		Size: 577.7 KB (577689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fdb70250ada8cfff4dcdb414595973742a1fcac49a15973281d89a5cfcfc48`  
		Last Modified: Tue, 24 Jan 2023 21:25:55 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
