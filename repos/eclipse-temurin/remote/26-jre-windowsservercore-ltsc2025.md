## `eclipse-temurin:26-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:e70c65b43f49d9fd953b5db708fe436d3ab49c37ac050e43a6a80a22e9909c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:9f4086aab81e6b21b33ad7296f0ddd487a4e69d60b9cd3be4e409d3b5876605c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2561996184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753ea8733f0b9a6cae2b8b80a215d1ee4a226361a41559bc279c8ff7a49c43d0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:38:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:44:50 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:45:05 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_windows_hotspot_26.0.2.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_windows_hotspot_26.0.2.1_1.msi ;     Write-Host ('Verifying sha256 (c7191815084be6cea5ad5a24953c4e73bef6a7bc81d6ea37fc634af36ed6e273) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'c7191815084be6cea5ad5a24953c4e73bef6a7bc81d6ea37fc634af36ed6e273') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:45:12 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:5e5d96f899e62ecf5bfb5a20b03bc5f7191d67493ef1a3a7dfe8b4d15c7e55f3`  
		Last Modified: Fri, 25 Sep 2026 22:38:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f41d91345525e920b4c04b1be8bb5fa542f916d636611e7c716d27f0fb4b8ed`  
		Last Modified: Fri, 25 Sep 2026 22:45:16 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76087147657626f5770fe0125d5a195f7b92638c28ddfdebf3ccf9363d5ca78c`  
		Last Modified: Fri, 25 Sep 2026 22:45:24 GMT  
		Size: 104.0 MB (103979775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ce5c98eb15c242a469c6cb50baf02fbf5d6217eb9c815227afba9d232b5184`  
		Last Modified: Fri, 25 Sep 2026 22:45:16 GMT  
		Size: 384.2 KB (384176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
