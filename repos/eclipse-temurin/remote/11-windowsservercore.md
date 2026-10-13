## `eclipse-temurin:11-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:f28312a3351d48b55de6285300f67206eadf28d81af950abaf62fe811d8f1e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:11-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:288cb4680117ff6171493eb468a0e3cfd1d318648eb0069286e454bc231ad68e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2596356579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da55b22ba2870d692f5f3f3940e1732e3a61956cac52d24ceafefbd9cdc0564`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:37 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 23:03:01 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32.1_1.msi ;     Write-Host ('Verifying sha256 (253989adc3097a52f81560e32986d829bdec6b949b4595a3489220f74d801cdb) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '253989adc3097a52f81560e32986d829bdec6b949b4595a3489220f74d801cdb') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:03:07 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:03:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e95023274ece6647957c3d14136b20bde6aadcbb4815dfb4e59868b214db45`  
		Last Modified: Tue, 13 Oct 2026 23:03:11 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725f83193c8e4270d75f9851d47b12b8c19bd6ee1138cee81cdedec564868068`  
		Last Modified: Tue, 13 Oct 2026 23:03:27 GMT  
		Size: 369.7 MB (369726425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32f89a53ffd8162b2af85e921fa9e0424598d3e5346b387b7133eaf7f359d24`  
		Last Modified: Tue, 13 Oct 2026 23:03:11 GMT  
		Size: 340.7 KB (340742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26a410d85f7c019ba9c51ddc30af751d6538d0869f414570061cfc1186a6fc3`  
		Last Modified: Tue, 13 Oct 2026 23:03:11 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
