## `eclipse-temurin:27-jdk-windowsservercore-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:9bb1cd5589432b733ece5536ca3f6a8f9ea96d5e57f576dd2cb327bcb328d462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:27-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:fe2d2e3e96f8c6979b037e4bce251bc10a62c15908435ed6387fb97159773dd6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2664548622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69aff2844c075603add1672f715c408259d1e1ec6867793389857635ded1ca4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:59:20 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 21:59:42 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_windows_hotspot_27.0.1.0.2_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_windows_hotspot_27.0.1.0.2_1.msi ;     Write-Host ('Verifying sha256 (bfd9e7b7f49dae72535e7d65620998d3d286ec92ad68b9e56c188cc8c8d6d479) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'bfd9e7b7f49dae72535e7d65620998d3d286ec92ad68b9e56c188cc8c8d6d479') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 21:59:48 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:59:48 GMT
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
	-	`sha256:7a3ce7203ccd0953944d4c903698aee6382f7a7866b1f9d6fc4f6b334276300a`  
		Last Modified: Wed, 11 Nov 2026 21:52:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc80aeec058691f3ba9641d1c77d70b5670bb6bb409fb1ee41f4eb8a46ad6f6`  
		Last Modified: Wed, 11 Nov 2026 21:59:52 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75c5b844553cd41ec2854fa16d494dc1d89ee314565a612c584a28a2323cd5e`  
		Last Modified: Wed, 11 Nov 2026 22:00:12 GMT  
		Size: 256.9 MB (256852184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e0a2f98e41b837d29c83cddcbb24b245c8c343eae36dc1b3918cc0bdffe322`  
		Last Modified: Wed, 11 Nov 2026 21:59:53 GMT  
		Size: 361.7 KB (361688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7466464003b3716cf22d9927fc8561b1db03cff6aa1d0d1ee87454e5215ef498`  
		Last Modified: Wed, 11 Nov 2026 21:59:52 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
