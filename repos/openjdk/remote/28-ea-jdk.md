## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:876b9041711b59e8028e2bde29db0f39b20bc5bb7781179cf694b95b72ddc9c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:5c456f520a0d07609d5f6d1ace1024b64a594a261803e4fcdcc2b66db5a4115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.6 MB (324614008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7891ed2c8851ff35acdf293a727e325e7b58d16bad13de7d6b5f09c0430a6c47`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:28 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:28 GMT
CMD ["/bin/bash"]
# Fri, 16 Oct 2026 20:32:20 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 16 Oct 2026 20:32:31 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 16 Oct 2026 20:32:31 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:31 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:31 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:31 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9f79e87364384938c129a36c63059f3b9f44b0ecc5bf0b9328aa7de55fbf2483`  
		Last Modified: Mon, 12 Oct 2026 19:10:38 GMT  
		Size: 44.9 MB (44901103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c691381896f889c5f304e5e35706b8ff9e0080e990accbb3693fc5f72a7a00ea`  
		Last Modified: Fri, 16 Oct 2026 20:32:55 GMT  
		Size: 36.9 MB (36877985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210af991635ff153c232be23b1a97a333521e581130421614658ad875d2d1fc6`  
		Last Modified: Fri, 16 Oct 2026 20:33:01 GMT  
		Size: 242.8 MB (242834920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:c4faef0f5661daf7d2d8d67f430ccdb9e6f12734def3e9c68e199d118e0db15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767d16dff7b457a8359c400b5282939fe05d041cc9a78f8709af13ab357274fa`

```dockerfile
```

-	Layers:
	-	`sha256:7cb149b82f57641598cd9126dadb03e9d6450fcc3beb5460c5eccbdd7451a135`  
		Last Modified: Fri, 16 Oct 2026 20:32:53 GMT  
		Size: 2.4 MB (2376705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c22f98cec0d292775de5a9c8e004ae10cf97d138d7601ed94ca0c5e2a4d28a4`  
		Last Modified: Fri, 16 Oct 2026 20:32:53 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1f8969e9dce0da77ff78c8be17f3779934a75cf42eb84aebfbedf9987bc3c4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321172880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab54d394c494ddafc5fe1984ef17bd864ec384d7f74ea8584bc84e7942703fb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:09:53 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:09:53 GMT
CMD ["/bin/bash"]
# Fri, 16 Oct 2026 20:32:06 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 16 Oct 2026 20:32:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 16 Oct 2026 20:32:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:17 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cddd3cf7f96f27e9d7642af5cb3594a4f8baf2a6c7d24235bfce815f70f15fd7`  
		Last Modified: Mon, 12 Oct 2026 19:10:04 GMT  
		Size: 43.4 MB (43361849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01228dacf898730a3fcf8a109f15cce591c715482867e7dd8f435006ab828ea`  
		Last Modified: Fri, 16 Oct 2026 20:32:43 GMT  
		Size: 36.9 MB (36947364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a13d2d5d52431d324e3b862a296266ae4afce8a3ad324ae724c5c8f82ffa72`  
		Last Modified: Fri, 16 Oct 2026 20:32:46 GMT  
		Size: 240.9 MB (240863667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:ea3ae8730dee1a49d4c5f45b2117ab59d535543ec985e66393623b17c18062e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec71bd03c270a3ed4dff3e1966a585f55194fec114d08b9527cb2a8f99d00a7`

```dockerfile
```

-	Layers:
	-	`sha256:e46b376d5134699b9a698df00d1afb7e1a1a677fdff0f88d38f3a7370ea48d70`  
		Last Modified: Fri, 16 Oct 2026 20:32:41 GMT  
		Size: 2.4 MB (2376233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34521a843d6bc4dc4250275f323f4dda7c1af9f7990cec45c355dc2a0f6afb53`  
		Last Modified: Fri, 16 Oct 2026 20:32:41 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:0d758b7d71187ca224921166fbabf4141fdfb058bc13a637eb64adddb5201a66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632507622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94b7734436b28c7b0cfef328ca7fe2d8a32319f2f2dd0c45d6e11e27f386e12`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Fri, 16 Oct 2026 20:30:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:49:20 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 16 Oct 2026 20:49:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:27 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:49:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_windows-x64_bin.zip
# Fri, 16 Oct 2026 20:49:29 GMT
ENV JAVA_SHA256=b10306b75f84c95057de58f44a5276866fdcd0a274b0b52963da4adfb39fad4b
# Fri, 16 Oct 2026 20:49:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:49:52 GMT
CMD ["jshell"]
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
	-	`sha256:30233c4168f9992d50584d2d698effa4424ebdd0126152fa60d94095085a992d`  
		Last Modified: Fri, 16 Oct 2026 20:32:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b2e934efe23ab49418341a36b44294e118d58ec747620d49000be39e32680e`  
		Last Modified: Fri, 16 Oct 2026 20:49:58 GMT  
		Size: 356.9 KB (356901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3c7a64cc17f959c5669e7fee76bccf02dcf8ab85c632340a65f4b79a5b4e5e`  
		Last Modified: Fri, 16 Oct 2026 20:49:58 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2893298640b5b043341e07d2207e0e9a90140316c9551744115c434a6480eb`  
		Last Modified: Fri, 16 Oct 2026 20:49:58 GMT  
		Size: 342.7 KB (342749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f9c0be8d6721d3695d3528806e271380a50bd0bc8c66ad48e301e973f5cbc8`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74b589c6567388c05d9b15db953930d3df30b2280a2bd8002b83669e523aa4c`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77da8f26fbe29fbd54a51c6f0c38989e0128e9b5d178f3c719d70ba3d7841eab`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550dfdd63e513b2da150b30b3d6a220fb6e4d4d10e090f9bc04986cc29bd0a28`  
		Last Modified: Fri, 16 Oct 2026 20:50:13 GMT  
		Size: 239.8 MB (239805937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84262ecfe874adb07b1e168b347a6fda70177abe60cb3e14a1f87368281ad81c`  
		Last Modified: Fri, 16 Oct 2026 20:49:56 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:2d31b1914a384a6643456c5810bacade3997f3cf305fc96f8a3f21b718a7cde1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466749359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71459c333a64b642fdc30394f7aebdd4895c8e4bbd5b629669be672bb5456dc6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Fri, 16 Oct 2026 20:29:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 16 Oct 2026 20:50:55 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:50:57 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 16 Oct 2026 20:51:04 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:51:06 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:51:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_windows-x64_bin.zip
# Fri, 16 Oct 2026 20:51:08 GMT
ENV JAVA_SHA256=b10306b75f84c95057de58f44a5276866fdcd0a274b0b52963da4adfb39fad4b
# Fri, 16 Oct 2026 20:51:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 16 Oct 2026 20:51:33 GMT
CMD ["jshell"]
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
	-	`sha256:5c8aa03da74b5d0234f4f699ca7462ab937696ca4ba6a968d2c542a67f99f054`  
		Last Modified: Fri, 16 Oct 2026 20:31:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4f2a6ff6e932a3614b31d1ccea86a46fe8ac93663ec66fd9351171f6c35423`  
		Last Modified: Fri, 16 Oct 2026 20:51:39 GMT  
		Size: 346.4 KB (346391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01868da6834b3cb03d883423280d8c8559e079badf08f2e04825c753d40f40cf`  
		Last Modified: Fri, 16 Oct 2026 20:51:38 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b5cfc96fd53f924d88af18a477a9fad3d1a6b61e3b5721a7ca15910a0b78bb`  
		Last Modified: Fri, 16 Oct 2026 20:51:39 GMT  
		Size: 325.9 KB (325906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc585666f7b8fc0652b29077a3a208bd92170ffbb2a2454cc6652eebbb0e2e`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fee8c8f16bb54f2bd796c168ddb408555bf8cd3a16c9b3c14d9728d0c6c03c3`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3fb5c2b5f8f6b4743b3082b4bdfb6db44bd9c31f5bf47c5b6f43c6420629c8`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a449978e943c64ab2ea4a0199a26232d8a04e2780bf3f7053b7c3cbd56437f`  
		Last Modified: Fri, 16 Oct 2026 20:51:53 GMT  
		Size: 239.8 MB (239783726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdc9d8977b1f02cb095eee3a1f46f672d51c2466794f77aa82618dfd73a85d9`  
		Last Modified: Fri, 16 Oct 2026 20:51:37 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
