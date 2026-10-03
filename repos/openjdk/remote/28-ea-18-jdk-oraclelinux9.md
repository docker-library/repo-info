## `openjdk:28-ea-18-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:ed83a39f28ffb27991547f1d4dc1ef39341d25bc6c90da5970d01cf1b0404d85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-18-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:150a4e10d69d060f7713c755ad5a9409c4b2e5d6660fb2bde710be42b5912e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329061625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d04d8642e3ccaccad8ec4f1283d372b446c596928dc0e011d04b3f1fd86637`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 29 Sep 2026 18:06:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 29 Sep 2026 18:06:05 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 23:39:01 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 02 Oct 2026 23:39:13 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 02 Oct 2026 23:39:13 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:39:13 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:39:13 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:39:13 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:39:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0da02031b8109b1e4f838db1d6ebbebafcce8f05b799018f73cb97e201d2c663`  
		Last Modified: Tue, 29 Sep 2026 18:06:16 GMT  
		Size: 47.9 MB (47941627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce181543f5dba6f6df6137f4d70df407f65387dc2d04152eab10382095fd5b4c`  
		Last Modified: Fri, 02 Oct 2026 23:39:40 GMT  
		Size: 38.3 MB (38279149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8b5c26612e4585cc7607526e804e1dcc4e8c93884cf44270b6b4fb0ea465dd`  
		Last Modified: Fri, 02 Oct 2026 23:39:45 GMT  
		Size: 242.8 MB (242840849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-18-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:5a2eaeb599913e168067fc824801777c42a9ead4ecb501849398108c09022717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa0027bd5faf34c972d799355f07bcb6f7af773925f81bf4f2a6057ce8f336f`

```dockerfile
```

-	Layers:
	-	`sha256:457405695fe2f7e3d128886c68a8dece9bcf5bfbed22c1897a04b120bcbab974`  
		Last Modified: Fri, 02 Oct 2026 23:39:38 GMT  
		Size: 3.7 MB (3656652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c98a66643f14bf3152375e0e475549df1c89a9cb1737eea440c072beb7d8275`  
		Last Modified: Fri, 02 Oct 2026 23:39:37 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-18-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:df251effd8f3951bd28d44310f0f93a5468f589143df1825f8c375d286338645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.1 MB (326065530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510a8c9071c5166e081c38454ba9a278d5633185d70fa02b5b96a9629790c4e2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 29 Sep 2026 18:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 29 Sep 2026 18:04:02 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 23:38:40 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 02 Oct 2026 23:38:53 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 02 Oct 2026 23:38:53 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:38:53 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 23:38:53 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:38:53 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-x64_bin.tar.gz'; 			downloadSha256='9901071672629d07caff1d5d50db34cecabf36aa3336e9fad4dbed5e8876fa40'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_linux-aarch64_bin.tar.gz'; 			downloadSha256='2303bdc1f3afaebd79e81fbcf4d5ca707c9bc645170f0e3a328ba717f6916b9d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 02 Oct 2026 23:38:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7411e35d6d4eea8eeb20d02d7532cb2bf74ebb746bccf80d7ec7d4d5f99efff`  
		Last Modified: Tue, 29 Sep 2026 18:04:15 GMT  
		Size: 46.5 MB (46485404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd15a5c9703f19c58f645a2c3f63287747092d029f2a1f05d03d34d51be34831`  
		Last Modified: Fri, 02 Oct 2026 23:39:19 GMT  
		Size: 38.7 MB (38672442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120fc7ef6df0f3f810cb3d15e35d50b28a9844c880e067bee67cb839680a78a6`  
		Last Modified: Fri, 02 Oct 2026 23:39:23 GMT  
		Size: 240.9 MB (240907684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-18-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:3515994a039cbb1cd044ed734e74ccae1050d27e74c364034a38d88662006027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5bc180773430ebe50290b2a2197892d00fff3c9e6d0cbbd7cf29eebbfd34f1`

```dockerfile
```

-	Layers:
	-	`sha256:b89d9b27c6d3f8bcccc28fa7fd8c594cbc7fdcf64d0604085683334e8f57ef1b`  
		Last Modified: Fri, 02 Oct 2026 23:39:18 GMT  
		Size: 3.7 MB (3654262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b18c422e847693e05c78434d2263bc7523de8725068fcc9873351dc0196d753`  
		Last Modified: Fri, 02 Oct 2026 23:39:18 GMT  
		Size: 15.5 KB (15461 bytes)  
		MIME: application/vnd.in-toto+json
