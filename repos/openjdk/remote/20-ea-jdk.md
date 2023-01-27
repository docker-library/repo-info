## `openjdk:20-ea-jdk`

```console
$ docker pull openjdk@sha256:98080e77c7117d6512f1d151af2115acd8b24421d1f3422607899567c6ab7f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `openjdk:20-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:8c673f376dee9ad2f11b7d03954d78fb4d4c1d95908d618ba749909ae6e0b6ad
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254256081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1dd3b72eba6e86d6b9ad980611c8c6c1b63fbe0c9672bd8c7152e796c9b1b85`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:30 GMT
ADD file:599abbad96e264361b1bc5a7643f88354e406a2a1f55256af8a67e5a71ac3044 in / 
# Tue, 17 Jan 2023 21:49:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:26:54 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:27:24 GMT
ENV JAVA_HOME=/usr/java/openjdk-20
# Wed, 18 Jan 2023 04:27:24 GMT
ENV PATH=/usr/java/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:27:24 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 22:21:43 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:21:57 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:21:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2c57acc5afca507dabd7a22ed8ab1a978dad73d90dacad7b0b4668750f8fca64`  
		Last Modified: Tue, 17 Jan 2023 21:50:21 GMT  
		Size: 43.9 MB (43885845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8fb8780af51fbf2479bc74be4aef9eef6a67db84a17a1eadc0d9bb6464a16c`  
		Last Modified: Wed, 18 Jan 2023 04:31:02 GMT  
		Size: 12.3 MB (12251739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97a46f36b2a1e7b3223f53e8ab3bd136968a06b08a1535ef26dd0d66e289798`  
		Last Modified: Fri, 20 Jan 2023 22:30:08 GMT  
		Size: 198.1 MB (198118497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:20-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:82beef7d84c890bd11ad1751b5c3928ad98b5bf92ebf0ba68c4b235e6ea3ebab
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252468089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f88d15b1439c28fc5779655445fd7d568b0c88f47de838c3414f4211161c8d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jan 2023 22:11:15 GMT
ADD file:dc09c8b8bd2fd3e0439792a21b95984ec8104b2a384f5ea2ef173918c105da9c in / 
# Tue, 17 Jan 2023 22:11:15 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:00:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:01:04 GMT
ENV JAVA_HOME=/usr/java/openjdk-20
# Wed, 18 Jan 2023 04:01:04 GMT
ENV PATH=/usr/java/openjdk-20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 04:01:05 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 21:41:35 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 21:41:48 GMT
RUN set -eux; 		arch="$(objdump="$(command -v objdump)" && objdump --file-headers "$objdump" | awk -F '[:,]+[[:space:]]+' '$1 == "architecture" { print $2 }')"; 	case "$arch" in 		'i386:x86-64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz'; 			downloadSha256='d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz'; 			downloadSha256='6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:41:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:002eb071499b5ede36f617906154b8933e643acc41d2993585876528939fb80f`  
		Last Modified: Tue, 17 Jan 2023 22:11:59 GMT  
		Size: 42.8 MB (42775871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ceecd3085b25f549de68213105de48a98b0db45a66e38d315c34ae860197f1a`  
		Last Modified: Wed, 18 Jan 2023 04:04:31 GMT  
		Size: 13.1 MB (13068620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5763b3fc756e1c70750999d40dc956e50957100580072d482b6c79808aed8c`  
		Last Modified: Fri, 20 Jan 2023 21:49:59 GMT  
		Size: 196.6 MB (196623598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:20-ea-jdk` - windows version 10.0.20348.1487; amd64

```console
$ docker pull openjdk@sha256:27ea38b825d0746602dbc54e36d102d2503db617fe0c72f29cdcf9c77db39285
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1580855809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09e147b5120cf03c4348b7562507781facfd34da756d23298ea50592926e179`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:07:34 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Thu, 12 Jan 2023 05:12:21 GMT
ENV JAVA_HOME=C:\openjdk-20
# Thu, 12 Jan 2023 05:12:42 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:21:21 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:21:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_windows-x64_bin.zip
# Fri, 20 Jan 2023 22:21:24 GMT
ENV JAVA_SHA256=d3262d55f68f9b39161904f92008266aa3590d775dcd8fadf78291bd21be3b70
# Fri, 20 Jan 2023 22:22:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:22:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa8e5b91e3c425a756945d0dec251c1595992592fd0dcf4df0ec0a7962717eb`  
		Last Modified: Thu, 12 Jan 2023 05:22:24 GMT  
		Size: 614.6 KB (614563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e473ae08f0a0a264ab6f873890549b89c65b8bdb708438338c229d6bb80f4084`  
		Last Modified: Thu, 12 Jan 2023 05:24:23 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6f6e1b656f7612da0ef96aa76c88ddb66ccc536e23899b449c43784f4ba0bd`  
		Last Modified: Thu, 12 Jan 2023 05:24:23 GMT  
		Size: 552.6 KB (552562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43d2b3481ed9cfeb680c53bfd5d3e9c48b730d3cb531359d14696b06708e88`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cdf54d59a376e30298d4041056e329b9263dc74717e4dbf06d8d3f6de6c925`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb36605330534b2a2a4c5e5373fa8cc4b1151740bb7701a2b8ff9a982e65b14`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ddf911bacb48d90d08714e6995f9a9b1cd978be8e9226173ab293199cbd2c3`  
		Last Modified: Sat, 21 Jan 2023 02:21:35 GMT  
		Size: 193.7 MB (193651061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9137bc266b4f05c8aceb10b9beb5a0bdccfb5c0ce28fae8c11d1cde4a380f88`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:20-ea-jdk` - windows version 10.0.17763.3887; amd64

```console
$ docker pull openjdk@sha256:ebcb8052da5943dfa0877053bdb656bec6f948c3927d3ff07a050e664b7b1838
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1902080034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1c89bd5591e47ddbd2e83a6999b0b67f2028be4804645742cff306783c3d27`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:09:35 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Thu, 12 Jan 2023 05:13:49 GMT
ENV JAVA_HOME=C:\openjdk-20
# Thu, 12 Jan 2023 05:14:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:22:49 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:22:50 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_windows-x64_bin.zip
# Fri, 20 Jan 2023 22:22:52 GMT
ENV JAVA_SHA256=d3262d55f68f9b39161904f92008266aa3590d775dcd8fadf78291bd21be3b70
# Fri, 20 Jan 2023 22:24:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:24:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fe1d317f0927d209417077d671ba0fb8e3b7ff9c583727da819f0d16252e80`  
		Last Modified: Thu, 12 Jan 2023 05:23:04 GMT  
		Size: 367.5 KB (367453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204fb4de92b3c2f3fbd44e35eab6a78c6001ee4da68e9f00b462472e9636c486`  
		Last Modified: Thu, 12 Jan 2023 05:25:04 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b5262ccef5459e1e9f746ac49749d63fee0bb98296c21086879d1d379e8e7a`  
		Last Modified: Thu, 12 Jan 2023 05:25:04 GMT  
		Size: 320.0 KB (319987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5951ec2b637023493d77fe7c9057a6c778ae36082ed10f69d1588c746885e26`  
		Last Modified: Sat, 21 Jan 2023 02:21:52 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8cce3e75393b6e2bbe38bba7696a97aad6e502e58ac31ea5e4eb7579fa02c93`  
		Last Modified: Sat, 21 Jan 2023 02:21:52 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a88d4256b952df3287f5482154e6549620b6518b19a37d00d0f6a1c90290c16`  
		Last Modified: Sat, 21 Jan 2023 02:21:53 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbee345adf167061851bba6134beef9117647f725a39e81c08d6e2974209739`  
		Last Modified: Sat, 21 Jan 2023 02:22:16 GMT  
		Size: 193.4 MB (193440153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efde4bc204cf790674daebbffd1ab408ab7ef0fb44a2a8b193291c9cd581a47`  
		Last Modified: Sat, 21 Jan 2023 02:21:53 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
