## `eclipse-temurin:27-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:578868b3fb6e72d2b5cbec17b90fb4fb03dd4508736097eb3ea94f8fb3384e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:b89d78166811cda86f20352b9b12e12efca59a0d418f02343d1b7fc29c7d81de
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2329774792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e437d66b07043e05435f34e3bf0ddb13cbbb69386eda40245289d064fc150a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Mon, 09 Nov 2026 23:25:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 09 Nov 2026 23:50:59 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:51:47 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_windows_hotspot_27.0.1.0.2_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_windows_hotspot_27.0.1.0.2_1.msi ;     Write-Host ('Verifying sha256 (8ae1de5a3b1ee536b433fd1a5215f9f1f8500c333cb3aab310afa9952944602d) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '8ae1de5a3b1ee536b433fd1a5215f9f1f8500c333cb3aab310afa9952944602d') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Mon, 09 Nov 2026 23:51:57 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:a4b2d7331ea15d2dc2b49c7af28d0a3bffd84f72755a279f20c845b52eb82c84`  
		Last Modified: Mon, 09 Nov 2026 23:28:06 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6058ef5af7c923c82552f5a85b7ac053acb62611e6e9a1e00eae9a13847a63`  
		Last Modified: Mon, 09 Nov 2026 23:52:01 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c171a458bd1e3eec3b6007f8f56a28df60f471dbc7e2245eab6c9ebecf6d9c8f`  
		Last Modified: Mon, 09 Nov 2026 23:52:10 GMT  
		Size: 102.4 MB (102360003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87f6aaed6307a6ae257e9644690041c07fdbe1acc94147659e8216ae3e56f6`  
		Last Modified: Mon, 09 Nov 2026 23:52:01 GMT  
		Size: 356.0 KB (356005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
