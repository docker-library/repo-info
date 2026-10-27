## `eclipse-temurin:17-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:1dacb0b04f8df2c50ca9376dc791128a89401333cc6da414d026eb3bf06c1dbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:17-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:385feb3f1fb248f22dec63fa04157499eaa940fd74716d6d772d3947612dbc18
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2583281946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc3544c024558351841936798fa231735397fcbbdcc6e470fa22e08dbb4e2cb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:01:35 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 18:01:56 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (a6013774c5e4a34951e11c1997d8b4641d2de7736d3eac839231f4266bd1116f) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'a6013774c5e4a34951e11c1997d8b4641d2de7736d3eac839231f4266bd1116f') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 18:02:04 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:02:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181ee9f6ffd0723d844a7907cf31bb25142495506b6ec2308bfc26e848bbc440`  
		Last Modified: Tue, 27 Oct 2026 17:50:05 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b621b4c081e89d28fac33d8e538784029cb24b487a568fbcc4af1ad149d2ca`  
		Last Modified: Tue, 27 Oct 2026 18:02:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1036fed914294d068fe063d6ac90fb03860d4c56e389155411a6d54b21962399`  
		Last Modified: Tue, 27 Oct 2026 18:02:24 GMT  
		Size: 355.9 MB (355882738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39565877840604e9f1d3754fdaea7f0cf430609c761f60212234b49dcd5c69c`  
		Last Modified: Tue, 27 Oct 2026 18:02:09 GMT  
		Size: 339.1 KB (339136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d0892f5fd6acadfe92722fc073833bd1de59815f1d29bd90dae76710eeb448`  
		Last Modified: Tue, 27 Oct 2026 18:02:09 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
