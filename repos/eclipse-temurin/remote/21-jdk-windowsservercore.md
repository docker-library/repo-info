## `eclipse-temurin:21-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:8325342fab6adf8c10745d8a6e4b01ae66e83839f9135c5e6317e97e4e1c6536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:21-jdk-windowsservercore` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:c302552a957b13f0e25bc218d8b8a8e66a86c4dac957548747394464e0c77c90
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2789426804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcffd335b7045d8ebe88ba29271e7414e60e90217ae586eab36c283095b605e1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:58:46 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 21:59:30 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_windows_hotspot_21.0.13_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_windows_hotspot_21.0.13_9.msi ;     Write-Host ('Verifying sha256 (9dcbb8ebe24aa9ee5a47a7fab2106a7c8988d7acee461260fef107411df91dc5) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '9dcbb8ebe24aa9ee5a47a7fab2106a7c8988d7acee461260fef107411df91dc5') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:59:37 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:59:37 GMT
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
	-	`sha256:128c6ce62eb80a0881ffc531fecb0f2f2ef37f7e576f7f2141355c9711bc9371`  
		Last Modified: Wed, 11 Nov 2026 21:51:59 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b4f33460c4aaf64280946931fd66151a413821888a0080df43d1e5db616558`  
		Last Modified: Wed, 11 Nov 2026 21:59:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e44b049c291a3be0d34ad6e7577914f7779a978d3a5af74184e42b6a78a9ff`  
		Last Modified: Wed, 11 Nov 2026 21:59:59 GMT  
		Size: 381.7 MB (381730782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b44c49e032a11deb099e23350d74c74feb80b97bea4bb705805925dacb4681`  
		Last Modified: Wed, 11 Nov 2026 21:59:41 GMT  
		Size: 361.3 KB (361251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980cd1f02a27b438661f67a82ff4fcdf15a29afcbf4dc66fd987767fbbc98e84`  
		Last Modified: Wed, 11 Nov 2026 21:59:41 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:21-jdk-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:e4b2b87052b6dcdfc1bda274faccb7f7645cc944df8d8077f4a7c837e2f42533
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2628415691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8234fbc9fe8b033b4545b1130623d1e0705724d6391de18102e612a9ceb00e0`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:51:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:06:27 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:06:52 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_windows_hotspot_21.0.13_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_windows_hotspot_21.0.13_9.msi ;     Write-Host ('Verifying sha256 (9dcbb8ebe24aa9ee5a47a7fab2106a7c8988d7acee461260fef107411df91dc5) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '9dcbb8ebe24aa9ee5a47a7fab2106a7c8988d7acee461260fef107411df91dc5') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 22:06:58 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:06:59 GMT
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
	-	`sha256:59f4d5422eed2c478715bb4732415753d4fe16fb151638b8a66d61f84668b2e1`  
		Last Modified: Wed, 11 Nov 2026 21:55:04 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9de1785d04befc0b1e179b0e7c62b9e35ec83a115029ecc66329e9fed9d00c`  
		Last Modified: Wed, 11 Nov 2026 22:07:03 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381b8af6d9b0c70c7aeadefe5e1c04101cf7179538015b384fb57c269aa81367`  
		Last Modified: Wed, 11 Nov 2026 22:07:20 GMT  
		Size: 381.7 MB (381723155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f993de3f8e297f35552eecf2e82cb3ae04d977da8b54eeb632b526eaa40c29b8`  
		Last Modified: Wed, 11 Nov 2026 22:07:04 GMT  
		Size: 340.8 KB (340840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7d1f56f138a67ca2d53692a07211e3e407ba0336ea598f0dfa03851aa9fc34`  
		Last Modified: Wed, 11 Nov 2026 22:07:03 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
