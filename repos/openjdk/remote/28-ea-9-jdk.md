## `openjdk:28-ea-9-jdk`

```console
$ docker pull openjdk@sha256:c2252940f33cd7ca0cb9be94b764ef1aa87f1cda38a76e1dcf0740218fe2de8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-9-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:716147bcec4f1622dbbe89d37474b5c1a6171d1e8aad25beb079e1229efe69f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.0 MB (302997562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8645aec8c17c871bffbcb91e6236333db28f8f69d7adaa808fcf1dfc0f40c3cf`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:18 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:22 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:30 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 00:59:30 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:30 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:30 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:30 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d388d57415441a06a1888e329820afa4bba363ab7c862943257494dbab9408a`  
		Last Modified: Thu, 30 Jul 2026 00:14:28 GMT  
		Size: 44.8 MB (44841721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c1674555087ea9c6615216fda60769d217cd1e75be5b1b97d8107ebd67406`  
		Last Modified: Tue, 04 Aug 2026 00:59:51 GMT  
		Size: 36.9 MB (36857529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba8274585963c085564f1605a0abc152e98ee3d97582b9b1e7c9c4c5c1cd50d`  
		Last Modified: Tue, 04 Aug 2026 00:59:54 GMT  
		Size: 221.3 MB (221298312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:3716098333179c6daa8341071311c4365ae742e6e06a698b6a42ed1b4ffe4b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ab371bd19f8534587f618636a827769907c4579de6658ff3de7d5891468910`

```dockerfile
```

-	Layers:
	-	`sha256:0d99f2d6f15f2c556e01b5a962609bec546e5890306a225658d4749e4ddc1f69`  
		Last Modified: Tue, 04 Aug 2026 00:59:49 GMT  
		Size: 2.4 MB (2373357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:204ae085302e2d5aaa775eacfeb08e8796a680c472025c778cb0b9dd5dfcb225`  
		Last Modified: Tue, 04 Aug 2026 00:59:49 GMT  
		Size: 17.8 KB (17828 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-9-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0284dc25959507fc1318610deb28d437b25733b6f4f9d2ca79f6982a8cdfd662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299575591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8f4bff7d94b51a8de90d9ec12538cbbd35818595d9e5cca08bce742496eadb`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:51 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:51 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:04 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 00:59:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:17 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed93eae7dc6be36bbac5b8f89929169c9a2af6619e473c01bfbf8b59d48775df`  
		Last Modified: Thu, 30 Jul 2026 00:15:02 GMT  
		Size: 43.3 MB (43302953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7be53bd4ff59bfd1066acd3d9204863693d9c21508bcd2be8e4c7692b71d21`  
		Last Modified: Tue, 04 Aug 2026 00:59:39 GMT  
		Size: 36.9 MB (36913849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8790b5a0e8d6e5e3963dc410540e7681a5637e76720407d783e2af3b0c02042`  
		Last Modified: Tue, 04 Aug 2026 00:59:42 GMT  
		Size: 219.4 MB (219358789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:5cb8f63d74da89083d81a2547d601640e769b1dd06bb6fa77e236c46c72e8d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c410b6c15b1d59b7a6f62662aa02543e8fae0aa31860f89f6c5a66e869eff3b`

```dockerfile
```

-	Layers:
	-	`sha256:3a6167d08a61a58257a1c5540d8091436a59f3bff9ea1e8fd728d059b6b9b469`  
		Last Modified: Tue, 04 Aug 2026 00:59:37 GMT  
		Size: 2.4 MB (2372885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfcc84fba5e63e87ed2f63b2c95cf8f06fa1bc5227aebc45a1aa533e416088d4`  
		Last Modified: Tue, 04 Aug 2026 00:59:37 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-9-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:b5b39870b0b155ee51f6bd9364068357f7e43f0108cd0d2beceddb105c9dae40
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2574121069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd712783766c280afa37458e8331574ef9778294b75ce7e15440d4cbad433d2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:59:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 01:00:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 04 Aug 2026 01:00:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:27 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 01:00:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_windows-x64_bin.zip
# Tue, 04 Aug 2026 01:00:29 GMT
ENV JAVA_SHA256=141ba918a0869fa95529b3623e5ef3454fa8020cad9bac478ec7d19b05afd271
# Tue, 04 Aug 2026 01:00:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60df8d634e35b2ece020a146c81635e30c8a5b08942c08b5ff719d86ad78580`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00c9b404eeea081ed8b12e3fadc6fba1861ef19e81002d2082e9d72366b96c7`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 396.0 KB (396022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abc2f5ffff1e1b0fb6c984342dcb28761d25b7c1fd9e8019f7d391ba47e6b04`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10edc5c1093eb79a880cc1fb8b54794d23d4113491d514c77cfae1840871e3d8`  
		Last Modified: Tue, 04 Aug 2026 01:01:03 GMT  
		Size: 384.4 KB (384412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4fcc964c66f92c1c8c55174443cb4d114d1ebde9eada005e32700294bde5b1`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80989dd47bb2c3f8067ddae98ca87a9f7980b6f0ac1978b018ffd0fe8a5589b4`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e429ac06955035c91aa6275c66c3e586dfff8bd66ff643290780d442f4234ad4`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6524e8fe6ba8c16fa22698da799fe5670d8120f910a8244589b37ab86d0ef312`  
		Last Modified: Tue, 04 Aug 2026 01:01:15 GMT  
		Size: 218.3 MB (218324691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4944da752cb139094ba45d69e09448d59a905e59dc0ea84e6840e1ec55dc68`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-9-jdk` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:c7bf568b33195c8f1b72e5b49b1fb9a41a9ab7ada1eb58a56f28a6390b595f7a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2376715932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2383b9dd54e3e60d32f91ed4fe53a034c1a4c6c7cb8bfd746cc568329886849f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 04 Aug 2026 00:58:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 01:14:32 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:14:33 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 04 Aug 2026 01:14:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:14:39 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 01:14:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_windows-x64_bin.zip
# Tue, 04 Aug 2026 01:14:40 GMT
ENV JAVA_SHA256=141ba918a0869fa95529b3623e5ef3454fa8020cad9bac478ec7d19b05afd271
# Tue, 04 Aug 2026 01:15:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:15:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2129f3cb38f49afd6241a71e794f810c9057f1c491a226396cf51cd8e29083a6`  
		Last Modified: Tue, 04 Aug 2026 01:00:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b26ffa08d3434e3b8074cf448b49983690f183c2c5a7bffb37e18bc45763ba3`  
		Last Modified: Tue, 04 Aug 2026 01:15:36 GMT  
		Size: 509.5 KB (509474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5496e86c98e8f60283ced1afe7169ce599835f7b1ea1bfb40fe022e9ccbef9b`  
		Last Modified: Tue, 04 Aug 2026 01:15:35 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be38d206bf760c9f9d44451ab6c34176cf539b636b0a9a2d04133b2f1820cb`  
		Last Modified: Tue, 04 Aug 2026 01:15:35 GMT  
		Size: 350.9 KB (350937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c29b3a1954f542598b21b2d2e52dc2b7c170a2a76fdb274b0156ffdd119a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92847958816de375d14c423b3e41236482011bfebc79f144e748620fac5fa647`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5825cbcf15becc0bfe929ea459fd9bba0364d03362a2b4896d8278d7255e18`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58efab5e65fd172919858a00dd1f4790d6b0512fdfd236082e7a1903d25176f`  
		Last Modified: Tue, 04 Aug 2026 01:15:47 GMT  
		Size: 218.3 MB (218294600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1768889d04d96f000463b85e2294f1d29e161b5bed4b369f0378955077eaa430`  
		Last Modified: Tue, 04 Aug 2026 01:15:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
