## `eclipse-temurin:25-jre-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:e92779a56bd1e9100ae22afab35507bdd5ca04f03ca92be629bb26c5acae1685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:25-jre-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:078e67000c3093c42dcaf232a01fb2dd8ed36db77a522609a0138a5e6c42a8aa
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2348048385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acfd0990d43f0a90c80992893ebcc3f7672db4c0d6699d3917571eafeb17e2b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:53:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:07:26 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:08:05 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_windows_hotspot_25.0.5_8.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_windows_hotspot_25.0.5_8.msi ;     Write-Host ('Verifying sha256 (503f1c8ce75378b1dfe89485abdbc2cb1588600937cff87e8a63d70ca5873139) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '503f1c8ce75378b1dfe89485abdbc2cb1588600937cff87e8a63d70ca5873139') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Wed, 11 Nov 2026 22:08:11 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:9cbaa04c85880eef0b86a9ffbd4d64e813279a489f3ddc32c5c00da5bef2650c`  
		Last Modified: Wed, 11 Nov 2026 21:57:44 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de01f8bc03110ddbf20926b95528f1fd99a56daadbe4d9ccf4a6112f6c80b3e8`  
		Last Modified: Wed, 11 Nov 2026 22:08:15 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55b6b2f0d5f692f6ed773521548bfd46703e4c3b26f40b0147707ce44cb42c1`  
		Last Modified: Wed, 11 Nov 2026 22:08:24 GMT  
		Size: 101.4 MB (101357026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1a6b45a05391893192378b8efcff476326aafaaba1e8336d7fb51a5cd587e9`  
		Last Modified: Wed, 11 Nov 2026 22:08:15 GMT  
		Size: 340.9 KB (340942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
