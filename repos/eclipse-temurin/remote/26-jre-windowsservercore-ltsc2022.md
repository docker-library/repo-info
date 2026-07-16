## `eclipse-temurin:26-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:e86c1d8356da20a65205c5ec7dfffe53eb2e21fe5ccd3d0dd3b922be2d67107b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:26-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:c14b2c8fc637e6d48a4bdfc50adc923bed03153bec7f0e8f72dcf6b2c47b3bd6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2261939759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae85858fd16d278b88686b29317882f0f858cbbac2597cd2edc96958f9d4e6d6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:05:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:23:20 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 15 Jul 2026 23:23:36 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_windows_hotspot_26.0.1_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_windows_hotspot_26.0.1_8.msi ;     Write-Host ('Verifying sha256 (400bdf064a84e8cb47d442a054d8931fbfdf81a867ecb68c5b99541db32fabab) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '400bdf064a84e8cb47d442a054d8931fbfdf81a867ecb68c5b99541db32fabab') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-26' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 15 Jul 2026 23:23:43 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:7b4a59d3fdf16bdd6c3433f7b37792e581df6942f1ca741d1647e745928aed8a`  
		Last Modified: Wed, 15 Jul 2026 23:23:47 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08da1f4f7e0080641d06e1b1008fbc0874bc64ef433bc43d3dbca3512991573`  
		Last Modified: Wed, 15 Jul 2026 23:23:55 GMT  
		Size: 104.0 MB (104022337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468a4a4d479b74fb134aeab2d280a69d029375cec890fa4b411b51bbbedb7979`  
		Last Modified: Wed, 15 Jul 2026 23:23:47 GMT  
		Size: 361.6 KB (361639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
