## `eclipse-temurin:26-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:ee7c3299d58a968e0100cdc0d34e79fbb094ff0bb26ae466341a2e621a257e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:26-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:bd3f683b393024daa248ea1843cb54e90a6922709a714393ac6e163b40219c54
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2417675643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c060b54e3956dd8ebc4f8add3fc853a5a4369e99db25f0609e057d0f083cc0`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:22:58 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 15 Jul 2026 23:23:25 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_windows_hotspot_26.0.1_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_windows_hotspot_26.0.1_8.msi ;     Write-Host ('Verifying sha256 (d09792de6d928826a285421af01c9334118904b540a6bc3bfbd225f362e22670) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'd09792de6d928826a285421af01c9334118904b540a6bc3bfbd225f362e22670') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:23:35 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:23:35 GMT
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
	-	`sha256:5c00ba1350c35eeae49e5f2370495fe0e2dad23cdc65dc7b0b7ac20efa44792f`  
		Last Modified: Wed, 15 Jul 2026 23:08:39 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00092b329247caf92ec0cfcb061dd66d6d90caddfe78d831caf65364b3ed9d59`  
		Last Modified: Wed, 15 Jul 2026 23:23:39 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d22e7f37a3f7c22b17739c3ae8c488ebf931ee31303c3977b609ac26395396a`  
		Last Modified: Wed, 15 Jul 2026 23:23:53 GMT  
		Size: 259.8 MB (259767174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28529046a6a0ca2c188772b8c55d613ea2e5c6767b952c7bae989af08bc7c120`  
		Last Modified: Wed, 15 Jul 2026 23:23:40 GMT  
		Size: 351.4 KB (351377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfeeafca216e13ad00557c64932bcea4d1718208e0fac2c8cdd6ff0adf93b36`  
		Last Modified: Wed, 15 Jul 2026 23:23:39 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
