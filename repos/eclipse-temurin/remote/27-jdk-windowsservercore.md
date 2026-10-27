## `eclipse-temurin:27-jdk-windowsservercore`

```console
$ docker pull eclipse-temurin@sha256:00943099ec408ca80baeaa4fc2c6612830a73e191d370ace69f30150892e1e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27-jdk-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:bc89975a7da5b6e41c6329992d43b43ebb389229f584c8161b66b73ff40e7975
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2649162625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30c19b984137b9f0eda8ba4e4efec66b753dd73557e731289dd576d70a2e59d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:57:46 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 17:58:12 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_windows_hotspot_27_35.msi ;     Write-Host ('Verifying sha256 (801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '801670bad7d9d49c46b8c0ca9b1205662a49f73180f471e486f87ebd2b642b61') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-27' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 27 Oct 2026 17:58:19 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'javac --version'; javac --version;     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
# Tue, 27 Oct 2026 17:58:20 GMT
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
	-	`sha256:f76701a8c26ff18a752c2ad3c6ece4a3f716cd6a4ba8debb82fa4ea6207245f1`  
		Last Modified: Tue, 27 Oct 2026 17:50:17 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0d6567aaca603fcee9297cd5d2b3c11c17cbe0ded525eea277bba0829d9aa`  
		Last Modified: Tue, 27 Oct 2026 17:58:24 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9ce2344859cdcf0640c9b6372ec21e1cfc5507869a643cd00e92e2179c7978`  
		Last Modified: Tue, 27 Oct 2026 17:58:38 GMT  
		Size: 256.8 MB (256757004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866203443085587d4ad328bf7f42123b2617dfcbf69299d75ced46dfdc6908aa`  
		Last Modified: Tue, 27 Oct 2026 17:58:24 GMT  
		Size: 352.7 KB (352677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635a82b071736b19eecbcc242aa89d43644ca8c6696b58838fe931915461d1bf`  
		Last Modified: Tue, 27 Oct 2026 17:58:24 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27-jdk-windowsservercore` - windows version 10.0.20348.5773; amd64

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
