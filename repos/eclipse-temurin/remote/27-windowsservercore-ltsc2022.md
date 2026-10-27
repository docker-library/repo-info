## `eclipse-temurin:27-windowsservercore-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:be73f944af6ee3d3c94c13e5a57913a8abc09144310a58fc14242ec637303385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:5520f3032d501dbf336acd302164675ff7c71b60796d76822289bc7b36cfc5b2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2484145847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a074b03be4e3458582fbb2a6924c71be8acc047798f19239481f13d0fbd0d9a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:03:05 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 18:03:24 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 18:03:33 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:03:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578554637062e77bb1ecb2ef376ce01bd36311579fe4538bfabdccb9b18d5abf`  
		Last Modified: Tue, 27 Oct 2026 17:51:10 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f0b5c9ecffed2885fb789f823d504a752f0790f2818af30788c7795949c54`  
		Last Modified: Tue, 27 Oct 2026 18:03:37 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8991955ec0648b01bfbdb1ad6e2d9c16035d0e53b55ecf39be5318f6b6a092`  
		Last Modified: Tue, 27 Oct 2026 18:03:52 GMT  
		Size: 256.7 MB (256745113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3744de4e6bf908bc2465e746ca7a5846de487b93d718b2b40dc762b37a3cf`  
		Last Modified: Tue, 27 Oct 2026 18:03:37 GMT  
		Size: 340.6 KB (340613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16193659672e909e439ed36b2ed67d4937e68323cff24d1b1d49beaeae6c3e`  
		Last Modified: Tue, 27 Oct 2026 18:03:37 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
