## `eclipse-temurin:17-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:9e32024d96928c6301cb63c79138ce6e7f90e90265172190a47dbba20487cb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:17-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:b9482fd390d69721ffb9fac90b80a7b0ead03e678259c5f88e6763097cabb5ba
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2513869650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8273a06691112e1b7e2dd79d043003cbf056f46b0072c55719ac30d0c4871ade`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:05:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:21:10 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 15 Jul 2026 23:21:39 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_windows_hotspot_17.0.19_10.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_windows_hotspot_17.0.19_10.msi ;     Write-Host ('Verifying sha256 (ccd97a7e313381a84e3567ffe10ad562884e399cc1fb1b4c5fa417de49efac78) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'ccd97a7e313381a84e3567ffe10ad562884e399cc1fb1b4c5fa417de49efac78') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:21:46 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:21:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcdf0d30539dd8057458012ecb38d8b289902f8ebed3f36a067d7a932499d490`  
		Last Modified: Wed, 15 Jul 2026 23:09:52 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdfbd1d4bc173525bae6c10617d42167d9c3e08b108c98bb7936203df1fed33`  
		Last Modified: Wed, 15 Jul 2026 23:21:50 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890d2af83b638ba99b3158c84619492b68f3480a2fd4abbee633d1c52f3d0d03`  
		Last Modified: Wed, 15 Jul 2026 23:22:06 GMT  
		Size: 356.0 MB (355959484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29043ddb9cc83aaf74bba552fdc8047a8b192f48ac6588d7fe469fde285ff8ce`  
		Last Modified: Wed, 15 Jul 2026 23:21:51 GMT  
		Size: 353.1 KB (353063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834ad76a78750aca203dc7fd1c06c9d4604df59c439364cb4fc21e5cd760e733`  
		Last Modified: Wed, 15 Jul 2026 23:21:50 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
