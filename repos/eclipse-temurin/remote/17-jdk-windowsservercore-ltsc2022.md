## `eclipse-temurin:17-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:7f1143cea1d298fd59df1ae151707940de9264f854e1345d2e64bdeebc0d95d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:17-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:8a004cecb68ba00fdfdb978dcee28ce1b95aca78cac03f9f82331f1217f9f1c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2603033041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4549de9b61e4ee263cc755c6e82be0531d5d7c54cee8eccaeaf224a4366ca9dd`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 17:44:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 18:05:51 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:06:59 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21.1_2.msi ;     Write-Host ('Verifying sha256 (28ef9ba7e252c9b16534694a070e0810fdcc7cdb26b72e7b1663c42f6453d45d) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '28ef9ba7e252c9b16534694a070e0810fdcc7cdb26b72e7b1663c42f6453d45d') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 18:07:05 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 20 Nov 2026 18:07:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e229b76dfa2b147ff0677c52ee37c14fb64c07928bf68cd1b93e6eb1df7793`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d9b8c4f23b29029944039dc39a8bedaab58c785735165db1a7f22db61c7852`  
		Last Modified: Fri, 20 Nov 2026 18:07:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d465515c9fb3725b8c925227c487798780a7a8b43ead2f01c5312e93299ed6e`  
		Last Modified: Fri, 20 Nov 2026 18:07:27 GMT  
		Size: 356.6 MB (356582616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b4ef4c41a9f128a609ca5d770c3106d63e93113e47a902321f9315580aa30e`  
		Last Modified: Fri, 20 Nov 2026 18:07:10 GMT  
		Size: 355.8 KB (355772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125a02b78b32be38be86e1f3353139f496a34ade6e156fc900242f3bbf5efc10`  
		Last Modified: Fri, 20 Nov 2026 18:07:10 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
