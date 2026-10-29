## `eclipse-temurin:21-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:a0a57d7e2a9d2bc2950bbe5bfd06df71eb3c91dc24a3bd80c46e338eab99bde8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:21-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:671529d276c97d6565e10d16c836ccd5a01860b52cba01293140561f7de8e193
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2774068693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414dc901febc2893920103ba680d08a75eeec7d2098f52bed10958b4bf11dc01`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 29 Oct 2026 19:04:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 29 Oct 2026 19:04:18 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:07:10 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_windows_hotspot_21.0.13_9.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_windows_hotspot_21.0.13_9.msi ;     Write-Host ('Verifying sha256 (9dcbb8ebe24aa9ee5a47a7fab2106a7c8988d7acee461260fef107411df91dc5) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '9dcbb8ebe24aa9ee5a47a7fab2106a7c8988d7acee461260fef107411df91dc5') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-21' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Thu, 29 Oct 2026 19:07:18 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Thu, 29 Oct 2026 19:07:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c9d3ffdbe5cb8e04fde88d334ee32a6915608836e1f9ce7839de633af55a93`  
		Last Modified: Thu, 29 Oct 2026 19:07:23 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019917112bbe7976351a89098b80b01b80a40fcc542d1695894f8a046aadc657`  
		Last Modified: Thu, 29 Oct 2026 19:07:23 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67327ffeb4e133fce1aa6fd4b675d24d6dd7a8dc7ecd7b4638e74097191ad88b`  
		Last Modified: Thu, 29 Oct 2026 19:07:41 GMT  
		Size: 381.7 MB (381702788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6756121d103f2a7a386159e4cf37e6c8dd57373c24fbd44893a76d5418e7bbe6`  
		Last Modified: Thu, 29 Oct 2026 19:07:23 GMT  
		Size: 312.9 KB (312901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727f7e2f4fa47b7bc2ddadfa49b30500620af41ae01ebdfa391fa0fcbdfe7fe8`  
		Last Modified: Thu, 29 Oct 2026 19:07:23 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
