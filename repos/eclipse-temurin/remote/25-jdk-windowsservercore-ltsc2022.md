## `eclipse-temurin:25-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:b75c97d80ec0f0de4d32dfa0c3b232bc800ee6c902ba60bdec88c110394a1a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:25-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:0968a8a82b2d354e7463121129e42ff6fa0849f7810d1a632d4f21d645b4ef4c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2438071930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f326d264043583fddf5949ee50d3e618d8b99be23ae3224998753cd80429b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:29:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:23:38 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 12 Aug 2026 18:23:57 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_windows_hotspot_25.0.3_9.msi ;     Write-Host ('Verifying sha256 (4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '4027451a84f7871a07a5e1d07b77914ca5d6bac91ca9f7026c1b1553701a0876') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 12 Aug 2026 18:24:02 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:24:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e1b28ed0ae3810fc60b70ae721befaf7ae0262b232808d6fb32800f97198e9`  
		Last Modified: Wed, 12 Aug 2026 17:31:51 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442743b68210bdbca7c9aae95cdde8763285a6a8629ce6ec0439391ffd9c2ab8`  
		Last Modified: Wed, 12 Aug 2026 18:24:07 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb58e8477e207f5f030f63eb6d843f0122fc706bac63eeb7ed2f36bd43c2b91`  
		Last Modified: Wed, 12 Aug 2026 18:24:21 GMT  
		Size: 253.7 MB (253729649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9b8012fddc1a74ea2176341d143e538bd822e1521a7b987623916621539949`  
		Last Modified: Wed, 12 Aug 2026 18:24:07 GMT  
		Size: 340.9 KB (340948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae588f45093a5103e6a6aec209ec079cb08ead716c16daa2a2961a2a65bf12a`  
		Last Modified: Wed, 12 Aug 2026 18:24:07 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
