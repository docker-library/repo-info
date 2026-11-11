## `eclipse-temurin:17-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:66a4cd055f72b373de45a895c888ffebd471579d092dfa461e086e891680b505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:17-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:9e57cf7ed247e44cd853616847cc1a0ddae8fbb3aef0d808e7895dfd03f8a3ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2603194767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd234d62f6f0e377cfd160d1c782f02f147e818272085124c39648f2d4d671e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:05:49 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:06:15 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_windows_hotspot_17.0.21_9.msi ;     Write-Host ('Verifying sha256 (9f06b736ef2bd07aaf82f1bd575dc92108b442b97f5d4308eb3816613c086977) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '9f06b736ef2bd07aaf82f1bd575dc92108b442b97f5d4308eb3816613c086977') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 22:06:21 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:06:22 GMT
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
	-	`sha256:187f3e50fcd898470cbc250bb15657febeabd96181945a53520f63dd4f29fb46`  
		Last Modified: Wed, 11 Nov 2026 22:06:25 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0c294f6b42d2a44b5fa0cabb1adba1a4ba5d3e7afc3a6fbca36d4d853bc738`  
		Last Modified: Wed, 11 Nov 2026 22:06:40 GMT  
		Size: 356.5 MB (356502350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b983a550b5bde7c53cdb2975bb54e26bb409545ae2956aa768c8685273f2ba`  
		Last Modified: Wed, 11 Nov 2026 22:06:26 GMT  
		Size: 340.7 KB (340703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1037230ab60f9ed246cddc1f056cf82a3b47d0d5422edc610d03c654579c420c`  
		Last Modified: Wed, 11 Nov 2026 22:06:25 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
