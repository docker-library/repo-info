## `openjdk:28-ea-jdk`

```console
$ docker pull openjdk@sha256:d2ef958db2535d180c50e588cd3c2282bad062ca15de8313ea5dc23759293730
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:792e10af7e94a1f624d300b257d46848663b8a06f9a8e23b42e54d712e2eab2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324214661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1052deb4b086884f37977cbd14454957d3d4fe0477be144cc4633c28c7c7075`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 19:27:51 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:28:03 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 31 Aug 2026 19:28:03 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:28:03 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:28:03 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:28:03 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:28:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34379ebd27484a2811df8658810122b69160c1660de1b7c1a92752592d6b19ea`  
		Last Modified: Mon, 31 Aug 2026 19:28:28 GMT  
		Size: 36.9 MB (36855003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f80e5e858098f4a3c8df88be5310a59fe13f165025cdf7ffc69bb2575f15f1c`  
		Last Modified: Mon, 31 Aug 2026 19:28:31 GMT  
		Size: 242.5 MB (242511926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:9057f061ee291543304f132ebac2120848b924cc70780527ccc40e8b273555c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9cd071408fd1a1cc0e915254fd690856c282f3e116fb49445f7ceea0f872c7f`

```dockerfile
```

-	Layers:
	-	`sha256:6338a9d88415a046ac6dc78f7f43ee9aeb936ae11db18f2c8015477da505b066`  
		Last Modified: Mon, 31 Aug 2026 19:28:26 GMT  
		Size: 2.4 MB (2375970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca77c484e6ae6f1e63ddc552cbaf0575a77c0be4b81b63acbdebb2978bf58d3e`  
		Last Modified: Mon, 31 Aug 2026 19:28:26 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fe3aa3b55f38762827062de2c9f1247dd34fd3e20adad581b4f84ddc634d0b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320831531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bafe5a3c1536c8fac4a9b0e11630254ba2898b3abd3ebe3a3f898212576852c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 19:45:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:45:21 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 31 Aug 2026 19:45:21 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:45:21 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:45:21 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:45:21 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:45:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3b022e171bc331184ff5e191359e6a1e28b82390c5069e1dbe6e1bef22061cc5`  
		Last Modified: Mon, 17 Aug 2026 21:45:15 GMT  
		Size: 43.3 MB (43303666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ed3b0e49e9e59a188a713468e0315c8473d2e99d7241ca51a54dfa9ec78aa7`  
		Last Modified: Mon, 31 Aug 2026 19:45:46 GMT  
		Size: 36.9 MB (36917290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1c33db96de324544e00e9ca42f255567b5d6e8361f93e049d5df9ae98d2a6a`  
		Last Modified: Mon, 31 Aug 2026 19:45:49 GMT  
		Size: 240.6 MB (240610575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk` - unknown; unknown

```console
$ docker pull openjdk@sha256:57ee6d1892162ee234764123bd0fc18a2bb53c22154fdfe1cfbe29cfaa4f89be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bf7364c2f04dbbc2187b026a7b96f970f177322ee3d911256e5375e14aa672`

```dockerfile
```

-	Layers:
	-	`sha256:b6f7e0c9a74ab8178faedc004112d14c4bf901e9c02261fa535eb0b2495a1472`  
		Last Modified: Mon, 31 Aug 2026 19:45:45 GMT  
		Size: 2.4 MB (2375498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c4a3cbed3b0256ef40bf8d48f01576311e346e29c897a8e6e7bbab598f0edb`  
		Last Modified: Mon, 31 Aug 2026 19:45:44 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:15a9fb17fb69085f2cbbb62bfb5c4f98269ca86ca369bf12a1b2032ceacb5d61
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681054127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2eaa10692dd530923bac332a25895e969cf63ee41666412a05080d5a6d3e56c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Mon, 31 Aug 2026 18:26:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 31 Aug 2026 18:59:40 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:41 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 31 Aug 2026 18:59:47 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:48 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 18:59:48 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_windows-x64_bin.zip
# Mon, 31 Aug 2026 18:59:49 GMT
ENV JAVA_SHA256=ce62b045ffcf2b48561efc5b705bab8d43142df4fa0515352a1359db8ad0a6bd
# Mon, 31 Aug 2026 19:00:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 31 Aug 2026 19:00:14 GMT
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
	-	`sha256:d5a39e9d992a670491d7af72f74377f6cbb8c42ce70306ef7deea2b5087c7447`  
		Last Modified: Mon, 31 Aug 2026 18:28:48 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e08e7e322b144faaf9079cf65a3960eb9b0baf1d1d2e17a82e37331a20feb68`  
		Last Modified: Mon, 31 Aug 2026 19:00:21 GMT  
		Size: 387.8 KB (387775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121a92c65fbf280e53931194e775129a226ff593730a750f1dc5ca89f296fe1b`  
		Last Modified: Mon, 31 Aug 2026 19:00:21 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16468d29f42a649c584a70f4e34fd9214953b3e56c3eb76289476b74e3c48761`  
		Last Modified: Mon, 31 Aug 2026 19:00:20 GMT  
		Size: 373.5 KB (373531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b525f52b7c92826c8972dbbcf8c636c0e59aeb5be3bf999daab34325a98368bb`  
		Last Modified: Mon, 31 Aug 2026 19:00:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98cc74ab70fd451080ceb4ea0cce3f3a655ecd9fda4e91ebf92b0ee0ba2bd9a`  
		Last Modified: Mon, 31 Aug 2026 19:00:18 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565e067daa3cf1681accce790d365a0dc71d7a79b5cd1f6141e6fca3cf753f3b`  
		Last Modified: Mon, 31 Aug 2026 19:00:18 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92984678248bccd0c5ebfc325a1c1e575e2c6d441452108617d1ad5d4dfc737f`  
		Last Modified: Mon, 31 Aug 2026 19:00:35 GMT  
		Size: 239.5 MB (239499590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f71519464439aa7d7e35acbd954a054da79ec269ce1d1eb6cfa6b115f882706`  
		Last Modified: Mon, 31 Aug 2026 19:00:18 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:6b0a40b981354c0d1ecb5d4adea94d44dae645d890d19ba9bfae67abbb0236d0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424186424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdb40980e7aace4586968d5f3d61dc4bdf0c0093cb154c99583a0dd26bf882b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Mon, 31 Aug 2026 18:26:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 31 Aug 2026 18:59:38 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:39 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 31 Aug 2026 18:59:44 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:44 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 18:59:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_windows-x64_bin.zip
# Mon, 31 Aug 2026 18:59:46 GMT
ENV JAVA_SHA256=ce62b045ffcf2b48561efc5b705bab8d43142df4fa0515352a1359db8ad0a6bd
# Mon, 31 Aug 2026 19:00:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 31 Aug 2026 19:00:21 GMT
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
	-	`sha256:21b2ea1d639a201f8e1b5a8001cc6f8075c453851bcc9f6d7c97c6966fa37ac7`  
		Last Modified: Mon, 31 Aug 2026 18:28:59 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f91679579246b111e70f5b4c51e6650e7f180d400768e0421dceead65c76a06`  
		Last Modified: Mon, 31 Aug 2026 19:00:30 GMT  
		Size: 361.2 KB (361242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639c4b4994b4d14d1702609918c2811ff90ec197790a643a80453572d9692281`  
		Last Modified: Mon, 31 Aug 2026 19:00:30 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba305481158e46e750962385a63ddd6d76e3f82a8834f0ff1fc297d4cfbde43`  
		Last Modified: Mon, 31 Aug 2026 19:00:29 GMT  
		Size: 339.2 KB (339220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cad8d69610eff92333b20da61258733ffc79140959a900d7fe111c9fa2df9e7`  
		Last Modified: Mon, 31 Aug 2026 19:00:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce283e3bd2187acab6c27e3923a3eb011d297aa3ed3cb7d398a395767e8f44d`  
		Last Modified: Mon, 31 Aug 2026 19:00:28 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721a58e168bd549054a1fc14e0b20bb7b08ee8708a2b00de1fc5188f47ba0520`  
		Last Modified: Mon, 31 Aug 2026 19:00:28 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3d351a13795e077e1323d6b25624043f65bd66293dc7590e221b0fdcf52e2c`  
		Last Modified: Mon, 31 Aug 2026 19:00:43 GMT  
		Size: 239.5 MB (239480747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dc06ef1a4263dda84ee805d38cb95cbbd1c386387573cd3a12e099d6b85693`  
		Last Modified: Mon, 31 Aug 2026 19:00:27 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
