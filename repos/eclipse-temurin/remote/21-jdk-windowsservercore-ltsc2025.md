## `eclipse-temurin:21-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:dcd3a586f1d32d96112dabae7134ed34108f282154abdcd65758f8b784f63353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:21-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:96c80ed5af106301db736a1ccdb30e6968716023b310c42ebc0affd08723941d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2822166081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9806ee09dd7d7b0bc2b80869d325126b4dd26916fc4375e37ef9204a435bb9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:45:47 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 12 Aug 2026 17:46:35 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_windows_hotspot_21.0.11_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_windows_hotspot_21.0.11_10.msi ;     Write-Host ('Verifying sha256 (93a9c20f4ce967d78992edc5e6fdcc250a56019080553d5d20846decb51d9c01) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '93a9c20f4ce967d78992edc5e6fdcc250a56019080553d5d20846decb51d9c01') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 17:46:41 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:46:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a015ae451b345859866b403547a0ee597afc48e9bfa76cbd204aa2a403e4355`  
		Last Modified: Wed, 12 Aug 2026 17:36:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a28fbf032dde187496631493a5bbebd8499e1ec26bba1acaa5c33bb24452a9`  
		Last Modified: Wed, 12 Aug 2026 17:46:45 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500307b52dc1271eda38b9b189062e1207d02d3bd5a6ba760d17e22076a45374`  
		Last Modified: Wed, 12 Aug 2026 17:47:03 GMT  
		Size: 381.0 MB (381017549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ced41a0f961d9510fe78939f3c8dce46388202fb2fdd95b9c56438896318e14`  
		Last Modified: Wed, 12 Aug 2026 17:46:46 GMT  
		Size: 359.2 KB (359237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d848f97023d3b162b4b4b065e5a8c0568c75ed78a11719e4a28f1b6d1b6328e9`  
		Last Modified: Wed, 12 Aug 2026 17:46:45 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
