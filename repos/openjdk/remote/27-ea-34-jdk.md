## `openjdk:27-ea-34-jdk`

```console
$ docker pull openjdk@sha256:8d2558214b2510a4c1d535d5dae03936f48c260ce4773617a8afe18ab77d200b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-34-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:3042b504de8ce86609b9241508e29be350ca96e9164b84d2bd078d496732f9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308717325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8e8e2aeda71893e17e5a5d1ba8cdb8ab398ce249026e6c95e346548ac6fed6`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 18:17:15 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 18:17:15 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:32:51 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 11 Aug 2026 18:33:00 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 11 Aug 2026 18:33:00 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 18:33:00 GMT
ENV LANG=C.UTF-8
# Tue, 11 Aug 2026 18:33:00 GMT
ENV JAVA_VERSION=27-ea+34
# Tue, 11 Aug 2026 18:33:00 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 11 Aug 2026 18:33:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8869116c72eb0208bf65c15fb660ea2461928387f7c3b91735d8027eb2dd78af`  
		Last Modified: Tue, 11 Aug 2026 18:17:25 GMT  
		Size: 44.8 MB (44842311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1772e2d579140fa01a43d1370087be62b5a0d761992440322c1152384f7de1`  
		Last Modified: Tue, 11 Aug 2026 18:33:21 GMT  
		Size: 36.9 MB (36855481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5df92ba39cef83c54945a4b82a8912465383d56474d1c9e0ee1ad353707152`  
		Last Modified: Tue, 11 Aug 2026 18:33:25 GMT  
		Size: 227.0 MB (227019533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:02412e9544460bfdcb3cc77ebd953e24f83ad424b2ed425f825ce9d1688a10a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313a34068fb3ef2fe940f215abaa2d562f8d7ae23607263236fe96408015c15d`

```dockerfile
```

-	Layers:
	-	`sha256:49947c4140682f95a77b94782f696ec5a779b5a8c6656bcae2e37e70f7baf0e2`  
		Last Modified: Tue, 11 Aug 2026 18:33:20 GMT  
		Size: 2.4 MB (2373384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce93eef9d93c81f936588ac041a94cc21dd6bebde40d9820df3952e6099f425b`  
		Last Modified: Tue, 11 Aug 2026 18:33:20 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-34-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:15660d75fef92ad1cc231fac1ee7ad31c995cdf1f3f286e1c21462465b9cd8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305206722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceca85c310b3b831a68b534331e34c28629f19561cee86b92b7d296389c8787f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 19:03:33 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 19:03:33 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:16:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:16:21 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 11 Aug 2026 19:16:21 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:16:21 GMT
ENV LANG=C.UTF-8
# Tue, 11 Aug 2026 19:16:21 GMT
ENV JAVA_VERSION=27-ea+34
# Tue, 11 Aug 2026 19:16:21 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 11 Aug 2026 19:16:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75e2e264185d605b1e57b358d6b88ce16ac44eb08d2511cce63afbde52c76548`  
		Last Modified: Tue, 11 Aug 2026 19:03:43 GMT  
		Size: 43.3 MB (43301375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f94ce5cb22659357e1095733223d5819c68501fea05db79d4623900db1d4f5`  
		Last Modified: Tue, 11 Aug 2026 19:16:43 GMT  
		Size: 36.9 MB (36907786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d096bc87c6d82b29809f2b11b4835f60d82918eb95318e2e581bf4c51037a60b`  
		Last Modified: Tue, 11 Aug 2026 19:16:47 GMT  
		Size: 225.0 MB (224997561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-34-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:22f47003a04f9dc57bb597beffc414b2b36d77d02e6bf7a3d7dcc1dec258a41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98edc928795dde68d6f128ca71bf38af960924e58d83310098d37c6831ee1231`

```dockerfile
```

-	Layers:
	-	`sha256:59730ad1a39a5403bc6c8a108b1df6921970e6700ad1d8ca12dadd05dcec1abd`  
		Last Modified: Tue, 11 Aug 2026 19:16:42 GMT  
		Size: 2.4 MB (2372912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a9e07cfc3aa902f167c31be8e397a9423851c95850149fe6d4d28f8c3b3694`  
		Last Modified: Tue, 11 Aug 2026 19:16:41 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-34-jdk` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:7a678720934942d40b6d39242779b091371804053792c50aac965867172e5798
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579314321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fbf8f8bbac349a73e243c1c1636b9d95aa3dc7531340dd4a784f342f95fd16`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:42:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:26 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 10 Aug 2026 23:42:33 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:34 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:42:34 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:42:35 GMT
ENV JAVA_SHA256=4fed0bc58b30accb04efc3aefa04dcaac86ca3dbc15bdbec92db68dd751bc2db
# Mon, 10 Aug 2026 23:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:56 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77630d3f681a34a366ef81359995b54c48f3e2da89c3d196ed04b6894cc38234`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 377.1 KB (377104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2608e143d887607dabbc50e4053caaec4bb61654c0308805b5e83a07bb9835f8`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290e6895ef169b7e9a30c72c3062a0998176185d02c47dd94ad011449d999db1`  
		Last Modified: Mon, 10 Aug 2026 23:43:01 GMT  
		Size: 370.7 KB (370670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accde6daa585d1def73b1a2a4049d96ca57da549d0c2d8dae2e6d601adcbd20d`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc0b62696aee8d4bc1348cb60049460662de02b7955023a86ca79f4e1b60291`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25071b3be63e9f00d62dbfcafca1ce4bc49ea68cae292c09e10a567bcc5226`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab27429788c6c214d792943b1c8c6a004538c7e0230625dfcdf3372a97ee2693`  
		Last Modified: Mon, 10 Aug 2026 23:43:13 GMT  
		Size: 223.6 MB (223550657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c97c66502bf59c1159254b29b560df3daedae82c334e4290b75b50e55ffd38e`  
		Last Modified: Mon, 10 Aug 2026 23:42:59 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-34-jdk` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:90a4b8dc2ac6f0b734f1f3ead66e8b414edeff982c1c9ae5d721e21fdbef1c6e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2381950525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d42461c74992f6664559d93d5b359a67652926e0343ed02107e06aaacf2bf6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:42:25 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:26 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 10 Aug 2026 23:42:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:42:32 GMT
ENV JAVA_VERSION=27-ea+34
# Mon, 10 Aug 2026 23:42:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_windows-x64_bin.zip
# Mon, 10 Aug 2026 23:42:34 GMT
ENV JAVA_SHA256=4fed0bc58b30accb04efc3aefa04dcaac86ca3dbc15bdbec92db68dd751bc2db
# Mon, 10 Aug 2026 23:43:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 10 Aug 2026 23:43:45 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71b872bc96399e2d64b58bb443a4817d6b4e541758e59694c01e9636c63cded`  
		Last Modified: Mon, 10 Aug 2026 23:44:01 GMT  
		Size: 502.5 KB (502549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb76c6160024247faf4559e8d2bf6a8940847826b2979272d355674117313f9b`  
		Last Modified: Mon, 10 Aug 2026 23:44:00 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa7a16b69183c44a4250747f701f04e8297429647598335fa135927dfbedad`  
		Last Modified: Mon, 10 Aug 2026 23:44:00 GMT  
		Size: 351.4 KB (351400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1287f7430a7762f25f1034fb41232904d2ddb432fdcc78ba77e003500ac38bda`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b761181ceff6e0f91abdfb2d0b15df625cdecbc253df7c32b8dc4b33eb21c7ac`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4e009101c58f0866e3a890af2457e80e9143b7a223e8d0021d9dfa347d8140`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb597dea0eeb95e9d05e9217a7cd38b5763e8f7ab565cc75e5388b8f9edc76d4`  
		Last Modified: Mon, 10 Aug 2026 23:44:11 GMT  
		Size: 223.5 MB (223535567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbcf58e073652a1095266e77fc6ac491ecb73019f509b6edafdb134a7ab5b9b`  
		Last Modified: Mon, 10 Aug 2026 23:43:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
