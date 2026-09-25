## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:0c78456ecd014249524b61a5759702ef215988f31194c0dcd068e73a87fbf616
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:7cb28164765f2b9aeae80e36af907e72fd990274f192ca6559473a7663330014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324547154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7b812d8422300fcfcb4c28b3e7815479cddddc7327c9b86e9e734299d1d056`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:08 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 18:05:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 25 Sep 2026 18:05:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 25 Sep 2026 18:05:19 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:19 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:19 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d624c29b96864298c383ac9b17d9f3f75bc3bd0a4e34fdf02641996376806498`  
		Last Modified: Mon, 21 Sep 2026 23:04:19 GMT  
		Size: 44.9 MB (44858468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5744889242b5c53890c1821f18f658e5976116fe6db145f4bc9032bd1121be8e`  
		Last Modified: Fri, 25 Sep 2026 18:05:44 GMT  
		Size: 36.9 MB (36876347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e21121c66b1fbcb3b5b061c834356ef09926f636121960d079f96897f2d10a`  
		Last Modified: Fri, 25 Sep 2026 18:05:48 GMT  
		Size: 242.8 MB (242812339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:324fd3276a2080aac34dd949fc1a9c734c23ac84856e4f00211e7e0de39e708b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be91682b70199ff09e33d3ce1d53f4d8321c5cd9da1ca1c47755022f2edef18b`

```dockerfile
```

-	Layers:
	-	`sha256:76bb8ec28d6b46be0eeb7404bacd5a4c97a86f3bad989249fbd96288efa254e2`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 2.4 MB (2376689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b291abd44972a9a129f0bfeb287913ec6dfa9cfe2de272c1242e694fd4c04df9`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:675df230bc863d94ae42732c8b1060c680b2c7e3bc85031df33fa6483f9201dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321129016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904343060e178853083ff25c4adcaca62b5fd85b97414c1d2882a08f7845c1a5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:03:43 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:03:43 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 18:05:04 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 25 Sep 2026 18:05:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:17 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65d9e9baa87f15f9db4cb1d85886337ca58865ec36d7c01695e8ed25ffa616cb`  
		Last Modified: Mon, 21 Sep 2026 23:03:54 GMT  
		Size: 43.3 MB (43326589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc8941e57cc6b27c26bde597f8eb37e0523c236182b649414b06aec3fcd3971`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 36.9 MB (36931692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d00918d04bc06484580ecab9f3d9a4b743e911416854d9c206b4db5fdc8da71`  
		Last Modified: Fri, 25 Sep 2026 18:05:46 GMT  
		Size: 240.9 MB (240870735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:910269136fd4d557b995f80cd0b5e3b7fecdf541228060b7bd3e7497d6c6d7a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be03498ca7c2cbce2800f12cf615c428f404141327ead4d6771fe5679f1b0fd3`

```dockerfile
```

-	Layers:
	-	`sha256:5f6d2c61c6697d582d595ba2bf1c69d4d0c3420bb20b5e004c90299141e2a78f`  
		Last Modified: Fri, 25 Sep 2026 18:05:41 GMT  
		Size: 2.4 MB (2376217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48ad3a6c94227e1424dad5913679306773a7cd2c19214fce4a86f197279c9804`  
		Last Modified: Fri, 25 Sep 2026 18:05:41 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:2228b97b7e14fa5551a135c0220b5836b072b58236d1991f065b73dc57021a97
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698152554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d681aa2fa385b8b7ec280a1e577c74cc6c29cd114f33a126a2421c69f510becd`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 18:22:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 18:24:11 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:24:13 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 25 Sep 2026 18:24:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:24:20 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:24:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_windows-x64_bin.zip
# Fri, 25 Sep 2026 18:24:22 GMT
ENV JAVA_SHA256=16ddf389a8cd7a2b99ff3b3aebd13bf08fe7b680bf4f37eaf3147f8b5e7729d5
# Fri, 25 Sep 2026 18:25:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:25:02 GMT
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
	-	`sha256:219fcbfdaca01d3425457ba2beb6bac0cc76ace5134c4e0c8bc4ef9192b76da2`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca0bf4745d31165c51eb0d256bcb50e650b77b5c84dcf9b56b6e804cd00f394`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 389.1 KB (389062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ce743866e5f8a19ab0475071850e4b2b1b85073674eb53713da087c3e8a75`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b08ab6b6ea5cde9cd3b3c2515d6b12f96562234955ee5b0a050fd02d9bffb3e`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 375.4 KB (375404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012e73e819d9012d3e9d93396c9e499b00f250dc8f587e4cc536257dd363e435`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0b8b66671e131d5d7276202e6a7a76a20fcd7cb34133c2ddbe37868ff14c16`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9437322d287780262f76ca6d071feb412b7c133b0a7081ae087125681661b25a`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70af59dac41a35bd5e4de3722bcfbba465e0e1b9991fa81cdae150b852a3644c`  
		Last Modified: Fri, 25 Sep 2026 18:25:23 GMT  
		Size: 239.8 MB (239750714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb50aa845a07f06370c8bd840b442f7700af1941a7bd3159581d2d3c7bcf29de`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:952236de4faf2a6f82cdf73300a690dc338f490b776935bdef71f7312049f9ad
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459927112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb939eafc954f1e252a48a160da6915c6ac560ae47a33f66a111d9fb170266cb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 18:45:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 18:47:11 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:47:12 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 25 Sep 2026 18:47:24 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:47:24 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:47:25 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_windows-x64_bin.zip
# Fri, 25 Sep 2026 18:47:26 GMT
ENV JAVA_SHA256=16ddf389a8cd7a2b99ff3b3aebd13bf08fe7b680bf4f37eaf3147f8b5e7729d5
# Fri, 25 Sep 2026 18:49:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:49:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d626303cd7cbfc0dc8498a12cdfb6b2a5c53d9334e1f1e714cbc3749efe2705e`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f95653cb1a9200e0c73f9d552e44aed6cd13d8b778da61dd97e5e842f1d185b`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 362.9 KB (362868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8caa259c0c5fe8404a68423ef7954e99640a9fdf2c9ab5f29512c485139d6926`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7d33e79e1ac4d07451034cc26852be0e3ea93608ad3e556af98dcbd293e5c`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 339.5 KB (339545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f72c627d0aff6443f78570c7e1e3d331550f2642fb3bf069051127d1742c655`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1cafaedd3643f4ffccfa9798acd9792d1c139f572983251ffe9842845de7cf`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dccaa74de4eda4e561f80035a5f051e14a55cc19ddf23bb276d4f0126b1b209`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47b8a8aa88c05c2ae320bf5cacbc700840763a4a231c62178a4582eec8c5907`  
		Last Modified: Fri, 25 Sep 2026 18:50:26 GMT  
		Size: 239.7 MB (239728132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17dc5a495ad1279f7a99a3f42a2ea56f70a47de6aecf0ff2e395d10e42bcdf68`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
