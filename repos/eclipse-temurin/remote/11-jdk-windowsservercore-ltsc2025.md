## `eclipse-temurin:11-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:156ae17fab47c1c7be90bbd58f4b6bebb338fe8e839b10a251ea3bfd40ec5843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:11-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:5afbff0b9057c113cad54b230e4fb8971bee9f0a8af2f3488dc63504858199eb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2827712824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6725dc311e7b4099e965bbe006f0f803e394bd9be35119443ddeb0bb37781e7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 23:26:53 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 09 Sep 2026 23:27:37 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_windows_hotspot_11.0.32_9.msi ;     Write-Host ('Verifying sha256 (f6079d2975e9b7f9707b18ec6a24841fa327aafa749b032c4ab74cdf9746b76e) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'f6079d2975e9b7f9707b18ec6a24841fa327aafa749b032c4ab74cdf9746b76e') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 09 Sep 2026 23:27:44 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 09 Sep 2026 23:27:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6c18118c1d9968c2710004fd8173e7903da0b92056b14671b9327eba39798e`  
		Last Modified: Wed, 09 Sep 2026 23:27:48 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df43d90782cc41bdded5a1e6810a13a58d132ce960aee1b19acc9bbeb43c522b`  
		Last Modified: Wed, 09 Sep 2026 23:27:48 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48843f473a33e4cfe7d37015351fcc40f9597da595e84f4484c2bf4ecdfa61ef`  
		Last Modified: Wed, 09 Sep 2026 23:28:05 GMT  
		Size: 369.7 MB (369719738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46d8af9a8f9b43126f5ad12e3e441f7137c2352e11018f521cd41171ca4b669`  
		Last Modified: Wed, 09 Sep 2026 23:27:49 GMT  
		Size: 359.6 KB (359580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba96e0f53ae29feacceac78f9dcf4268bfc44ab52ae0f0bc6b45b96bf06da33`  
		Last Modified: Wed, 09 Sep 2026 23:27:48 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
