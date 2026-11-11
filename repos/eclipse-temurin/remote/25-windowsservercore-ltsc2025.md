## `eclipse-temurin:25-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:9d18186bbb3bd0048ddf3e2898632eb4702c81ae1ab22be5cd9bfea515f54856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:25-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:a572dedde88835b602e384feb4855831c770895e814908334557817a65ffd48d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2661786503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2d075dd9dc8b5cf9f4b3c84b3d53990228c45df2a8c2d66caf26e083a5f9a6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:51:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:58:50 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 21:59:18 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ;     Write-Host ('Verifying sha256 (e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:59:25 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:59:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dff2b4a9d6a8bcd5fbd4993043b6ae33f3dda4bc68422d6dbabaf42bfa048a1`  
		Last Modified: Wed, 11 Nov 2026 21:52:14 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936eaa02f245ab25045f8d1ac0539d979af3a3ca02466089d4da7434c32794a5`  
		Last Modified: Wed, 11 Nov 2026 21:59:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c441a3ccba5311eea34f7e09a69369a6a9265031d0265628662445811ec3200`  
		Last Modified: Wed, 11 Nov 2026 21:59:44 GMT  
		Size: 254.1 MB (254089984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a0b4b91a4109b018058efb5c5a9f9e5527f1dcdece3779b5f0e02139e4bd9b`  
		Last Modified: Wed, 11 Nov 2026 21:59:29 GMT  
		Size: 361.8 KB (361766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03a9583045042389a838cdeeadac1055fa7fc98d611b0b3222e6cef9c4929af`  
		Last Modified: Wed, 11 Nov 2026 21:59:29 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
