## `eclipse-temurin:27-jdk-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:cd5d8c489c554a795645d830b3e9b2f279fd70a52e0a394209d7292dbbdfe5d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:27-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:0a15cf824ededa075c3b199484db103706eff9e46f648791f9cc27cb246a5b19
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2503505848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bcc63e1bab5ae75c7eb84eb80f84a5b95d9b53c66571ce0aa7ed61701e13c9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:07:46 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:08:04 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_windows_hotspot_27.0.1.0.2_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_windows_hotspot_27.0.1.0.2_1.msi ;     Write-Host ('Verifying sha256 (bfd9e7b7f49dae72535e7d65620998d3d286ec92ad68b9e56c188cc8c8d6d479) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'bfd9e7b7f49dae72535e7d65620998d3d286ec92ad68b9e56c188cc8c8d6d479') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 22:08:10 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:08:11 GMT
CMD ["jshell"]
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
	-	`sha256:3e4ef424dfaba895bf0c6c2b9e302375628dafa983e3fd708e8b0acb5b57e943`  
		Last Modified: Wed, 11 Nov 2026 21:52:23 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067e40f22be3358c61bbd4f490a904a628be51cc589d340b6973fc692baad3b2`  
		Last Modified: Wed, 11 Nov 2026 22:08:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24d8941c1f84a5817891574e8a462dcf3089ac98ebb8022e14f6346de39f9dd`  
		Last Modified: Wed, 11 Nov 2026 22:08:28 GMT  
		Size: 256.8 MB (256813505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01865f058e304cca391b7767a8fb78d08e8e1cc021d376451e3456bee4ea79c`  
		Last Modified: Wed, 11 Nov 2026 22:08:15 GMT  
		Size: 340.6 KB (340621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5346230d733635c262d80335cf735f276300141587399039a27a341eaee8c71`  
		Last Modified: Wed, 11 Nov 2026 22:08:15 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
