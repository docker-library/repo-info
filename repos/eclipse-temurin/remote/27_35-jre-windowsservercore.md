## `eclipse-temurin:27_35-jre-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:d6d32d2f086b5564e655026cee681d4a45e209471ab7253d109d9cf6f035a0ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:27_35-jre-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:34cccdc25d4c06d19959734f5d9e257deaa2f36ff0abaf6d8290f3a8f0e55337
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2494634769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6cd6c009a84549526c5f017969d31f5bc4296917d9e60c2cc83df4e9f168d37`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:10:35 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 13 Oct 2026 23:10:50 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '65d0bd6802f06058e8f7b063127f25b3123d5cc406e8fd49208a34a0de563acf') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:10:55 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7103549189e064f3b1670e35453ec46244660445912e0bdad839508e821cb6`  
		Last Modified: Tue, 13 Oct 2026 23:03:42 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f0ca75a40142ec79ba52a3e84d730562eb5d4664d8eff073bca4daa935a4ba`  
		Last Modified: Tue, 13 Oct 2026 23:11:00 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f229f0624c32c654990cbe1e219a06880c3840dc76f43eb2213924596dfd0e87`  
		Last Modified: Tue, 13 Oct 2026 23:11:08 GMT  
		Size: 102.3 MB (102285058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1920ebc5b4c9206eb2a84cf7b848f727bbea3a68c55c37f557e6b0324e1668b`  
		Last Modified: Tue, 13 Oct 2026 23:11:00 GMT  
		Size: 352.8 KB (352771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27_35-jre-windowsservercore` - windows version 10.0.20348.5761; amd64

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
