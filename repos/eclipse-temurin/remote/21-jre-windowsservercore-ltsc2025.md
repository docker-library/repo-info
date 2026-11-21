## `eclipse-temurin:21-jre-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:b33b8737f770b128871bc55ed839099c2d401e875df9f38111f5030fa6e8af0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:21-jre-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:a8a4e2d5cee67220aec25e3f21ec57b1bcdc6e1ba099d2a33427cdcb30a98fdb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2491506585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2623cbc93a8dab84a576096542c00a12dd907bf4c5dd6b3aa05b03f8fd90ba`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Fri, 20 Nov 2026 17:47:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 18:07:08 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 18:07:21 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_windows_hotspot_21.0.13.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_windows_hotspot_21.0.13.1_2.msi ;     Write-Host ('Verifying sha256 (edd761b200d7896fc40382bc14c3e077c3d4d3011682157d4db6f487e2bce081) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'edd761b200d7896fc40382bc14c3e077c3d4d3011682157d4db6f487e2bce081') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 18:07:26 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db086638f6f91244687f5b84d15d8afb613d43d605bba629586e81087b2ed0e3`  
		Last Modified: Fri, 20 Nov 2026 17:49:03 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8818947a2d9fc944c3206b5159e685504209658dd9c090b6d60dc07c003176`  
		Last Modified: Fri, 20 Nov 2026 18:07:31 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0665cfae1e241858cb600324dd595dbbd111f0c99cc3364914b13086603db14`  
		Last Modified: Fri, 20 Nov 2026 18:07:38 GMT  
		Size: 84.1 MB (84064350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735e8869e95ec58ebb8d8b2a14228ddfddba5b0e9d885feb4ff2d685c7badd3a`  
		Last Modified: Fri, 20 Nov 2026 18:07:31 GMT  
		Size: 372.0 KB (371982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
