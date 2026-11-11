## `eclipse-temurin:25-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:d9b74d80c27d0e412f66e6c4d43d5df3c9f174e31f88f3f99eb075b1a6edd400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:25-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:2a1d31c70d85b3dbaa2a8aaa3aae4e3125442172988613a3c9cbe5fb8dba9360
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2500750429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50d513f94f11db1fa1ab959c46b49168e0c799a6ba424931d8d2d8f6ac0db5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:07:14 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:07:40 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_windows_hotspot_25.0.5_8.msi ;     Write-Host ('Verifying sha256 (e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'e1d3c94032579dc16af9abb311f4552ba271466b74c8767e8ce39585a4c64d40') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 22:07:47 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:07:48 GMT
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
	-	`sha256:3f6bb1dc16f371997c336e92ee761f9edcdbcf95b66ad066bcf91c5ffc952956`  
		Last Modified: Wed, 11 Nov 2026 21:49:08 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f582648b91456d9c43a33a86c6ce9625b8835aef99fd5db2391917f87d38a`  
		Last Modified: Wed, 11 Nov 2026 22:07:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c13b8af7b23a2025764297d335cc789f5374324699b2dbf0e8c7f07aea612b`  
		Last Modified: Wed, 11 Nov 2026 22:08:06 GMT  
		Size: 254.1 MB (254057807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232f5280bdd488c37a70949fed0d6ac075c8443dae769752109d6ea24aa57f56`  
		Last Modified: Wed, 11 Nov 2026 22:07:52 GMT  
		Size: 341.0 KB (340957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14127e35f5c149777f7bdcf08b85f12111ee767f43884128aa791c2ab04ad0e8`  
		Last Modified: Wed, 11 Nov 2026 22:07:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
