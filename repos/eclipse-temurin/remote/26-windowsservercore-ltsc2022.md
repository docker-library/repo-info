## `eclipse-temurin:26-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:2dce298944d9964e52e59da548e5cf11dfb395e3570f9dcc7e934ba5833ef541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:26-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:3a6716c9b443ef4120202c2a7dec86689f439c3387897a2f1c80089ac815dfe8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444099588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf6704ad5993bfe28b4b5adbe20ab81f0333eebd12babd74f16a9d9719e494c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 21 Aug 2026 17:46:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 18:23:53 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:24:12 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_windows_hotspot_26.0.2_10.msi ;     Write-Host ('Verifying sha256 (80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '80ca3c0874a4287c007f99ebaa5ea0e9ef73166c9b2a850009aa1e0b62648e57') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 21 Aug 2026 18:24:18 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Fri, 21 Aug 2026 18:24:18 GMT
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
	-	`sha256:434a4b389be160fa579bc402c8d442a0687c758845e3fc8c8a01a5f97fbebc99`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238985ea27c5c34a422c9a8ae661685acc4273ccaeb3013b0e6e430e1d60565c`  
		Last Modified: Fri, 21 Aug 2026 18:24:22 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8905f9eb17c583ead4ac49c97769df2d4ae4514345111606fb65153cccd849ce`  
		Last Modified: Fri, 21 Aug 2026 18:24:37 GMT  
		Size: 259.7 MB (259743133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a38579c6b7a24387ef194333553516891e6d45a191f0f303bcbbe8749677980`  
		Last Modified: Fri, 21 Aug 2026 18:24:23 GMT  
		Size: 355.1 KB (355098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d3243a22656d075ae3909f65d189b32b3ca45ceaf47686a98950a80fe4ec98`  
		Last Modified: Fri, 21 Aug 2026 18:24:22 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
