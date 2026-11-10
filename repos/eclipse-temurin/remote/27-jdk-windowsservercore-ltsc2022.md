## `eclipse-temurin:27-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:eec93a887697f317eb22ee11117cf982eb3bf5a44f4d7f01f06f2e86b2701a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:15e2f64ab70942a537a6085f28bf362a0b862a3fd4bcbe630d52777611342daa
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2484258835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8b098463a96914167a86742753d7c143a2863b3042e7c38c7bf213528797e2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Mon, 09 Nov 2026 23:19:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 09 Nov 2026 23:50:55 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:51:44 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_windows_hotspot_27.0.1.0.2_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_windows_hotspot_27.0.1.0.2_1.msi ;     Write-Host ('Verifying sha256 (bfd9e7b7f49dae72535e7d65620998d3d286ec92ad68b9e56c188cc8c8d6d479) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'bfd9e7b7f49dae72535e7d65620998d3d286ec92ad68b9e56c188cc8c8d6d479') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 09 Nov 2026 23:51:49 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Mon, 09 Nov 2026 23:51:50 GMT
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
	-	`sha256:a9c9fc1662ad33df70dbeecdb1203a7c6cbe51207cad8f282456633bf1d9337d`  
		Last Modified: Mon, 09 Nov 2026 23:23:01 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a466ab33a41f38bb8baf9d126081bedc5ec216b95c9c1f5bb6891057ec0efc43`  
		Last Modified: Mon, 09 Nov 2026 23:51:53 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f42c1e6d9bc733c1b27746fac046cf653092e98bd886ed800aeb2f81a2f4c`  
		Last Modified: Mon, 09 Nov 2026 23:52:07 GMT  
		Size: 256.8 MB (256843143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2bb12b2b2ae096f5743a57f3a2b59353eb5923395cedbbb9025ad79925598e`  
		Last Modified: Mon, 09 Nov 2026 23:51:54 GMT  
		Size: 355.6 KB (355610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8900d2a3b6e5ab42aa6ee11addc90063ae862e1b21df3938bf8f53fe5aaf93`  
		Last Modified: Mon, 09 Nov 2026 23:51:53 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
