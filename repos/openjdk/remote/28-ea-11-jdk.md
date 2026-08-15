## `openjdk:28-ea-11-jdk`

```console
$ docker pull openjdk@sha256:e313876b7e276c1aa3b7a78a2a8bcba86abb2ad37e9425ace1ef7387eb918912
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-11-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:c147f589138a94df74de27f6b08cdc056099ee4a10bb17b7beb3aaff9a1ac3d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324216152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecac5c9feada31b8b8d846c0b3fe1bafff377d2b94f498218017914af2418705`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 15 Aug 2026 00:19:02 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Sat, 15 Aug 2026 00:19:02 GMT
CMD ["/bin/bash"]
# Sat, 15 Aug 2026 01:10:02 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 15 Aug 2026 01:10:54 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Sat, 15 Aug 2026 01:10:54 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 15 Aug 2026 01:10:54 GMT
ENV LANG=C.UTF-8
# Sat, 15 Aug 2026 01:10:54 GMT
ENV JAVA_VERSION=28-ea+11
# Sat, 15 Aug 2026 01:10:54 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 15 Aug 2026 01:10:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ade256897cd461c9312cdc66cb3f5a44ea0a874e1a894843352f3caa6b5a2aa5`  
		Last Modified: Sat, 15 Aug 2026 00:19:13 GMT  
		Size: 44.8 MB (44842585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e21ffc9f51ec59aef4e45b0312ac58db2f43cda2da0b58522dfcfb092f4d0f`  
		Last Modified: Sat, 15 Aug 2026 01:10:34 GMT  
		Size: 36.9 MB (36855111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397aa31643af2c3ee5b010c4c5c064cce22d8d8324573e8b62b5ff770c33ce4d`  
		Last Modified: Sat, 15 Aug 2026 01:11:22 GMT  
		Size: 242.5 MB (242518456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:f4435f7cad02ed583daca70762498a980402a8113a8258798dc616a0950ae426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf7e1e30e824974a44f74b603d30ea132495683609fba46ee6708652bf96049`

```dockerfile
```

-	Layers:
	-	`sha256:21ec9abe988f1832b742b70f7b28c3cff2201eba0ec7b395437c86c8f02d3e5a`  
		Last Modified: Sat, 15 Aug 2026 01:11:17 GMT  
		Size: 2.4 MB (2375954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff45fc68a5fc02f99c1ff8e46bcfb0030b0d9807e8f7e91bde13b5e204289f43`  
		Last Modified: Sat, 15 Aug 2026 01:11:17 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-11-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b6b1e1007ba37afe8768ef3ad06cdb44e166f03e44c8cfa7214b11c025ee7cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320815496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e61ec808fed1c2075a65985a420b88e79f0dd3ae8dad8122989963e2b32501`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 15 Aug 2026 00:19:09 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Sat, 15 Aug 2026 00:19:09 GMT
CMD ["/bin/bash"]
# Sat, 15 Aug 2026 01:09:49 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Sat, 15 Aug 2026 01:10:50 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Sat, 15 Aug 2026 01:10:50 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 15 Aug 2026 01:10:50 GMT
ENV LANG=C.UTF-8
# Sat, 15 Aug 2026 01:10:50 GMT
ENV JAVA_VERSION=28-ea+11
# Sat, 15 Aug 2026 01:10:50 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Sat, 15 Aug 2026 01:10:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d0644aa4468df44c5a2d0710fb03e617decb8a8877189ee7cb7bd6d62dd0bb5`  
		Last Modified: Sat, 15 Aug 2026 00:19:19 GMT  
		Size: 43.3 MB (43301188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4e347219c4b2234fe15654d28d0ce6bb492755abcd03e132fa34db089aa7d0`  
		Last Modified: Sat, 15 Aug 2026 01:10:26 GMT  
		Size: 36.9 MB (36911131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073aeae1a09e48999c69f67bf831822f575d8e2089aa7089333bafff5846352e`  
		Last Modified: Sat, 15 Aug 2026 01:11:18 GMT  
		Size: 240.6 MB (240603177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-11-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:9e6fa1e62601765a71ecab34f8fa557abef98dd95be033309610f4f3a0d0a4ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db34f83f052f5cf1c1d1485216917a80535aa64dfe2bc69c4561270745e5092`

```dockerfile
```

-	Layers:
	-	`sha256:71a617e93355314505269023956ff0d868130a2c44b3d18a4f48f65c7a1f9e16`  
		Last Modified: Sat, 15 Aug 2026 01:11:13 GMT  
		Size: 2.4 MB (2375482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e46cefb4be6e8c21e7f549ae53bbe54f228c86f53ae86b31e2ae2a3726c4e20`  
		Last Modified: Sat, 15 Aug 2026 01:11:13 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-11-jdk` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:4dff47e9414c5e20e5899842df61f3c90c439fe49e6e247d02bcc288cee57f6d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681019342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9786bda8adf47bd6ee79eff5967cc9306cfc6364817dab57a2217699873c6278`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 14 Aug 2026 18:00:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Aug 2026 18:00:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:00 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 14 Aug 2026 18:01:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:14 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 18:01:15 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_windows-x64_bin.zip
# Fri, 14 Aug 2026 18:01:16 GMT
ENV JAVA_SHA256=8378faa16b706ea91e76075d582ab264ccc218380d7eeff8945c6cca1c752842
# Fri, 14 Aug 2026 18:02:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:02:59 GMT
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
	-	`sha256:02f2e4f1cfc41d21ba365087e6cd9d793ce8b0ecccfc78c4f8d650cbbc91eeaa`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12863d499430d5b37a8732395a769fd018d99f2f5a54972a7caed41860be9e8d`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 363.8 KB (363798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c32d035bf0ec2ab129476804e2741540b2634ca20134543c667838f591402d5`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4236a5bbcc8b25d162daa8eb1a90532373ba3efa6578055503dc391fdf4de0ca`  
		Last Modified: Fri, 14 Aug 2026 18:03:14 GMT  
		Size: 382.2 KB (382199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e839919d6b0a1c5376d4148001a3a8394fc8dd180467f731dd8ebfca5090ed88`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed48f584afc560c032625235b7b59f9d64b7ae0c1c1d5cc36c53f5e276f825`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6201bcba8aced9c5b55134f97147b6d40ecb804a6a82b97b4d83f332f75d4d80`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be42f29a2e4495935ce4c661c919e0b10a280fc5227c00861f9bd9e903e05147`  
		Last Modified: Fri, 14 Aug 2026 18:03:27 GMT  
		Size: 239.5 MB (239480167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aae888c5ec57c22e9a12301b2bcc9ce652bef6d4ad283830e60c6f3ea53a55c`  
		Last Modified: Fri, 14 Aug 2026 18:03:12 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-11-jdk` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:7247402389301f4ba067c34b00e98e559f74dce8ea17b213001a8c2dc5ed1463
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424141590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c51840bc5ef3f89a3226d2b51c9414ed77b88097973e5e7e75bacd4759835b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 14 Aug 2026 18:00:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Aug 2026 18:00:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:00 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 14 Aug 2026 18:01:06 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:06 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 18:01:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_windows-x64_bin.zip
# Fri, 14 Aug 2026 18:01:07 GMT
ENV JAVA_SHA256=8378faa16b706ea91e76075d582ab264ccc218380d7eeff8945c6cca1c752842
# Fri, 14 Aug 2026 18:01:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 14 Aug 2026 18:01:43 GMT
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
	-	`sha256:68202da1290b76eb89a7a87dc42c4f403ba09dfbd122890d3f0f1082a55466b9`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1170795bfc8847adcf5f1e070edb8ba40a0896ea4869bbd2d61ef81a5de804`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 349.7 KB (349749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adca63ee09b4852a53365a690eb9c955d1679e77a12865402bb0f3a22127a9f`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3bb21be2eb6c8a81d2d3607fc771bb944d7913e97691053a9c021963acd367`  
		Last Modified: Fri, 14 Aug 2026 18:01:50 GMT  
		Size: 326.0 KB (326007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4150e396026a700b5600edac3dbf11b031ab116430b69d4075a7488e0971c3f2`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f36d2bc63b9a1f9ea74bf0664217359d835c8d7bfd771d23e358799afa643e`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1afbddf52837d2a8eb9e5437155a6ba3e18b223b2bc4e3733ac9195e6142d4`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d55e58bb0572215fc9e9dcf380600bf4ffba877a94cd4b30f83acb1bc35e19`  
		Last Modified: Fri, 14 Aug 2026 18:02:04 GMT  
		Size: 239.5 MB (239460560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc2ad36c930abc1d4a2f2fd9885c0eaac08aa8e25580aac8e6faafda5d92e90`  
		Last Modified: Fri, 14 Aug 2026 18:01:48 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
