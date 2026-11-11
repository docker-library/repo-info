## `eclipse-temurin:17-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:9a482b5b012ebe8b517b13f25ee5d2e4adf85ffa6a03ef87133bfdad49336671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:17-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:df8dc7c60f9e454646bf307b80dc0d2b73909883138c36fd66bb750c9fd27e7a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2764221040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a979e81e0e8558e87676965f74ad645fac97e5a5dea31f4d6cd53868030c5ac`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:58:41 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 21:59:05 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21_9.msi ;     Write-Host ('Verifying sha256 (9f06b736ef2bd07aaf82f1bd575dc92108b442b97f5d4308eb3816613c086977) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '9f06b736ef2bd07aaf82f1bd575dc92108b442b97f5d4308eb3816613c086977') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:59:12 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:59:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166b0f52b5a4f4d55b3f8b9ed128b5f17a93a0a32109f41ec036982179aecd0d`  
		Last Modified: Wed, 11 Nov 2026 21:52:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513bb30e77cb93de018db13cf7bc31c5f38da6e4c809c3520124d9b7a8991efd`  
		Last Modified: Wed, 11 Nov 2026 21:59:16 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fa2f4a762d8e8122b579a62e64dab4f7899fbd456e776ea0612479e1fd25a`  
		Last Modified: Wed, 11 Nov 2026 21:59:31 GMT  
		Size: 356.5 MB (356524434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8804011dfeda3bdeb6b5e2cd9d8fc8fa91b3f356ea07cc543689bafbebe350`  
		Last Modified: Wed, 11 Nov 2026 21:59:16 GMT  
		Size: 361.9 KB (361855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e6e5efc223f69916196a47702795772b35df2d03ce396e0f84f2826359b64a`  
		Last Modified: Wed, 11 Nov 2026 21:59:16 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
