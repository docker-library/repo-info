## `eclipse-temurin:8-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:5e81036b4cd069869e8142c7691e4cff287c4869b7a2d8ddab5afb55468f35be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:8-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:e091e51993937a8b6dadf172c66cbb1ba6a1e18ff522a088df4ab4fbc722ac93
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2437465824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f04938abf9dab74468ee3d65bc2fe9467438287c6f7b01c6e49d66c892f22b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:04:30 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:04:51 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u512b09.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_windows_hotspot_8u512b09.msi ;     Write-Host ('Verifying sha256 (77a730e65149c4cc426209672c7bd1b996ba6423e04c563c381ba083278cf165) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '77a730e65149c4cc426209672c7bd1b996ba6423e04c563c381ba083278cf165') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 22:04:58 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac -version'; javac -version;     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6bb1dc16f371997c336e92ee761f9edcdbcf95b66ad066bcf91c5ffc952956`  
		Last Modified: Wed, 11 Nov 2026 21:49:08 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9accb2ac634c4605b1aac775c778e5928fcba12547093a1719476c2135267eef`  
		Last Modified: Wed, 11 Nov 2026 22:05:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f780d2f08c187d21ffb9f119cac44aa0bbb7ac5086a9b8bb7d1310aae1fcfad4`  
		Last Modified: Wed, 11 Nov 2026 22:05:13 GMT  
		Size: 190.8 MB (190774311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289eb9810549da735a700f8fe78febb716d5498ccd03380bf7decfa9ef880f6d`  
		Last Modified: Wed, 11 Nov 2026 22:05:03 GMT  
		Size: 341.1 KB (341142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
