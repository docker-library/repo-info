## `eclipse-temurin:25-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:a0b682135928ba46d70021d37cb57ba78eba8d118e9183b994a30dc4cab559a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:1bf726a665ee73fd915349264384786950754ff11bc3da9e7d80f6b60ee7573a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2500514384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d5818118deceb35fe2b0a1d5cb699ed6339c6217ca95e0dbb287cc6c3f2f87`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 17:44:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 17:44:18 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:47:29 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5.1_2.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5.1_2.msi ;     Write-Host ('Verifying sha256 (26599896b3fba3e3017c2e823a3fbb286a8a7b8a76f7dd05069e1a731f514513) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '26599896b3fba3e3017c2e823a3fbb286a8a7b8a76f7dd05069e1a731f514513') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 20 Nov 2026 17:47:42 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 20 Nov 2026 17:47:43 GMT
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
	-	`sha256:f2c0d709121941ddf657c90bd97e2dabd77c0f071970837d1d30df82799452ca`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85630b2e23eb29b2fa8f9b7b2c7308cd27369aa4222b64bc2bf052a39f113bbc`  
		Last Modified: Fri, 20 Nov 2026 17:48:01 GMT  
		Size: 254.1 MB (254098806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5cc4ccea3fb80821db4b10bc8cc1ec01cc31af3453e34200ad3affabb9744a`  
		Last Modified: Fri, 20 Nov 2026 17:47:48 GMT  
		Size: 320.9 KB (320936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2aeec67fb8e4604ee95e281c1fadc2e71dc241f98712cb120ca545330d2965`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
