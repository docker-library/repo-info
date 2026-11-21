## `eclipse-temurin:21-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:4dce593ae94d4de63b82f8af90901e19f7901e6ac86ea5bda3fa02619c63d8aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:21-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:64fdb6637e16a94f840c669002fbcfc42d27e845695f35a49448a601da3292f0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2330513987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab44f14474da79b079504647a6517957779578bcd43e5aa7e1dce58567df7a7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 17:44:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 18:07:47 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 18:08:01 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_windows_hotspot_21.0.13.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_windows_hotspot_21.0.13.1_2.msi ;     Write-Host ('Verifying sha256 (edd761b200d7896fc40382bc14c3e077c3d4d3011682157d4db6f487e2bce081) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'edd761b200d7896fc40382bc14c3e077c3d4d3011682157d4db6f487e2bce081') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 18:08:08 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:011f09ac6385499bf4f76b8174f8848f53fdaa2e589cb2ed65c359c22909f086`  
		Last Modified: Fri, 20 Nov 2026 18:08:12 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c55aaf2586798b730273c25a5ffd5476633f65827842fef05893ee88a8482e`  
		Last Modified: Fri, 20 Nov 2026 18:08:19 GMT  
		Size: 84.1 MB (84065023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6458f270e526e7314efc0058c2d02a9c819c7f568896dea2e42f7cf7c42cab`  
		Last Modified: Fri, 20 Nov 2026 18:08:12 GMT  
		Size: 355.6 KB (355644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
