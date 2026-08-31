## `openjdk:28-ea-13-oraclelinux10`

```console
$ docker pull openjdk@sha256:154e9ba1b8be6875a78d5e6897afbcd9ec854d3d94881dc294cbc74d01adffaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-13-oraclelinux10` - linux; amd64

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

### `openjdk:28-ea-13-oraclelinux10` - unknown; unknown

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

### `openjdk:28-ea-13-oraclelinux10` - linux; arm64 variant v8

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

### `openjdk:28-ea-13-oraclelinux10` - unknown; unknown

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
