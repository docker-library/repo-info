## `openjdk:28-ea-14-jdk`

```console
$ docker pull openjdk@sha256:724b3fe46c2f8fa000e8d675fa01ab8d7a952ff0c6cb4d2fcbd32a1389a07897
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-14-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:3afe4823addf0167da03f9eec583bb136421cb9990d5ccd162f74908f09acd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325640020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7135dbb299ab611a6419c12bbd9fe1c5922f8b7b5596ce0643689d675da665fd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:54 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:54 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:18 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:27 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 08 Sep 2026 19:15:27 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:15:27 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:15:27 GMT
ENV JAVA_VERSION=28-ea+14
# Tue, 08 Sep 2026 19:15:27 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:15:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51ebae28b522ae451dcb4755f40b850034b90aac9a5ee084d5cf00124019006`  
		Last Modified: Tue, 08 Sep 2026 18:58:04 GMT  
		Size: 44.8 MB (44848156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1423814fc7c55ee8ecc80b6e47749d6a24905cac3a8ba58fdd85720918607fbf`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 38.2 MB (38239818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085fad1b742edd77a098abd84e521cfa8660f8182126ad6d8699300cfc5862d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:56 GMT  
		Size: 242.6 MB (242552046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:9939ed147b6c9bf2d6a33dee50897442aeda901072898f56859a164d5c666244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bae2e1bb71a38004420f1941dbd439ae41a06b1afa079f227c42254ac0620eb`

```dockerfile
```

-	Layers:
	-	`sha256:464fe216505ea3f25729a23ee71096760830df80ef6850acbecafbc1f3ae1a1c`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 2.4 MB (2403402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97b71d15fa9b3a0608a83a577d51ef9899f238df95f6fa6ea84c9c242b3943db`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-14-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:186fefe88ed1164683f99a13af52dd733e1b51eab0a51fc6fdb07679015fcc25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.2 MB (322227011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a628ad76c4970eaa1d3df97efe6d586f50ace88130764fbf6017f7197723c0e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:06 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:06 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:16:42 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:16:56 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 08 Sep 2026 19:16:56 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:16:56 GMT
ENV JAVA_VERSION=28-ea+14
# Tue, 08 Sep 2026 19:16:56 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:16:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d69eefe7b81f7db3bb7240d32dae9ece515d7146f3e014e0b6e59b31a41a9bb0`  
		Last Modified: Tue, 08 Sep 2026 18:57:16 GMT  
		Size: 43.3 MB (43305657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c2fd53b163ea77214c234444ef7999a786cd0b874ce92f1478b16c2d4aeeb2`  
		Last Modified: Tue, 08 Sep 2026 19:17:22 GMT  
		Size: 38.3 MB (38293326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b252aecb247ec45c7ad9d284bed7549f5c92841820ec6fa8681a20a750c9d09d`  
		Last Modified: Tue, 08 Sep 2026 19:17:26 GMT  
		Size: 240.6 MB (240628028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-14-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:4ee1e0d87c02063b0c5532c2da82df513a2a56c318e9b513869044757605fb96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704fc84f3084568391ad3b7eb494b7429a22816e34e1f827dabff917c1148352`

```dockerfile
```

-	Layers:
	-	`sha256:f32eb06f1e18c0fab07c4bbcfcfc246c8c0c982e53816cb6dd1cc2e11ed96316`  
		Last Modified: Tue, 08 Sep 2026 19:17:20 GMT  
		Size: 2.4 MB (2402930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:735ce669a254b791bbc1cd0c2125f4b3555d74fc21d8230dd0c57a34f654ffb4`  
		Last Modified: Tue, 08 Sep 2026 19:17:20 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-14-jdk` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:98f06b5aba21e5a10bd0d035abf813aca88674ddb9b021d6f851f288c852a5e7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681056216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984bea91df3336f5106a63d15ab8e61c9e72167a10f08ce05ab5e2740699fefa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:19:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 04 Sep 2026 21:19:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:28 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:19:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_windows-x64_bin.zip
# Fri, 04 Sep 2026 21:19:30 GMT
ENV JAVA_SHA256=f6117ba09577758d39749b6abe85930a0e26712e6c86fe1e3331b55cf72a2717
# Fri, 04 Sep 2026 21:19:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9982de0c6c2988727b8bc3e87def2b5cc1d02076ba63198c337939f049774525`  
		Last Modified: Fri, 04 Sep 2026 21:20:01 GMT  
		Size: 387.4 KB (387448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772e8813aa6cbe7b1f471c1147c72cda6a044478472973eb59d3aa1254f8b0b0`  
		Last Modified: Fri, 04 Sep 2026 21:20:00 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9c3b54de4d5753585abb0e5d701f5ec5b9c76d94199074197acf8b045b627d`  
		Last Modified: Fri, 04 Sep 2026 21:20:01 GMT  
		Size: 373.6 KB (373608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db38978906f21920fc739121a871e4eee50aec2ec1bcba21b099559218b69caf`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec63e341c4d79449e596747327208a0cd01add39230c27bf466ccbeac16e4d42`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9ce7a929f474aa23b34800e970cb26518ffe8a185e27926c49bd0e5b65042e`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa0b3f31b49572fe43a8a4ea81774e6f0320c7296aa19509f792fc534a95d22`  
		Last Modified: Fri, 04 Sep 2026 21:20:15 GMT  
		Size: 239.5 MB (239502030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb0afbc0f2003cd3f6b5c9f098a4beb538188b927f424015940064ea5c9cd67`  
		Last Modified: Fri, 04 Sep 2026 21:19:59 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-14-jdk` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:507799a5a7ca7d04222e709070533173f08cb9ef0dd3c1a8ce597225de2fbc7d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe7c97f5d8371b0478fe879f3d6a18e30f62c980aa83241874c26e521d86e47`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:19:22 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:23 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 04 Sep 2026 21:19:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:19:29 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:19:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_windows-x64_bin.zip
# Fri, 04 Sep 2026 21:19:30 GMT
ENV JAVA_SHA256=f6117ba09577758d39749b6abe85930a0e26712e6c86fe1e3331b55cf72a2717
# Fri, 04 Sep 2026 21:20:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 04 Sep 2026 21:20:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae11bf5cbb8c823c24a1a4de6d558fd072d9de34b8ea0bd9a61150a6ce2724`  
		Last Modified: Fri, 04 Sep 2026 21:20:19 GMT  
		Size: 356.2 KB (356236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c321555c4844198eb0e93203dfed8e4c26cfd09e68d579d1dd015610235956`  
		Last Modified: Fri, 04 Sep 2026 21:20:19 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8153e9f72abba7f03f8015fd712ac7d8d6903ef6de8f84836e66a3d889099cc8`  
		Last Modified: Fri, 04 Sep 2026 21:20:19 GMT  
		Size: 337.7 KB (337739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bd0f36281f94f2b6893f4ecf92d45193d11901792b0bee1509b48c242615dd`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31bae5c2068a90d1a82135c171f7bf33b5d3e65ebc19151ab36d00197209da7`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51747cdc0419ece56a84fe05fad654663c0b7ac9c55142845bda07b571b55f49`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdefce48ac962d067e432ab6554ce58b1355e40c59d3e765355101399e56eea9`  
		Last Modified: Fri, 04 Sep 2026 21:20:33 GMT  
		Size: 239.5 MB (239469520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8147acaf94916746dbc0bd20e5bddad0ad2797b5e6739a908163754780abc285`  
		Last Modified: Fri, 04 Sep 2026 21:20:17 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
