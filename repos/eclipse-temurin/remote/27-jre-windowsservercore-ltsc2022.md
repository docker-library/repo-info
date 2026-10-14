## `eclipse-temurin:27-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:02b51e393b2721aa1d7236877c4078828c430a700b1438761137b07970e663bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:27-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:7268bb7aa31eaa1d7683c471c76fe0ecbb65f3aa13e432c4f29dfa16a5e930fb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2328910951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15dcc8fb3611c9e8db8bc493bf519b25ac4eee92dd3b25e983606ac0f6a6e996`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:09:59 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 23:11:13 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:11:18 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:5251a8a5b1fe96d35845fb548d2c34fb7d09b88c05efbd15f7493713fc6debc0`  
		Last Modified: Tue, 13 Oct 2026 23:10:30 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f7acaaefbf7fc0ef722ce76c715450984390fc54f093081e805b201542255`  
		Last Modified: Tue, 13 Oct 2026 23:11:31 GMT  
		Size: 102.3 MB (102282369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea817f84af40b2ce4b89831e81a82a144e09f4d4ab58ee06c3094cc62c43610`  
		Last Modified: Tue, 13 Oct 2026 23:11:22 GMT  
		Size: 340.5 KB (340517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
