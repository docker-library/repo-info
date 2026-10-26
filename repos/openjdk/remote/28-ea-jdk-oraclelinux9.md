## `openjdk:28-ea-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:a8e90c065925d3e1c2efda74c027716432c2731126e933d118f9cb64ee8094d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:03df19906e9292091eb99fd7a5824e1a7599de06c8cbce23ed263d7da46f3f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328689727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3ade008d0062f65be88b79ae4cee9bd93ff69cebe77e42f88be238aa75b583`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 17:18:23 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 26 Oct 2026 17:18:35 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 26 Oct 2026 17:18:35 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:18:35 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:18:35 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:18:35 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:18:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0487ba57428baffd608bd44823f8aa0eeab23db12b5e8612c6be4b8282ed46`  
		Last Modified: Mon, 26 Oct 2026 17:19:01 GMT  
		Size: 38.3 MB (38264592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eafef461f855a709469c2aafddd82551fbce6f65fdb870f0c14e632922628849`  
		Last Modified: Mon, 26 Oct 2026 17:19:05 GMT  
		Size: 243.2 MB (243175967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:b9052ac5a22853e88c4939ce30ed6ccdd3e9c47a50892e8ab593c5ed6f157e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395f9a112a5513a0d522cb00fc36c83475a6c75c57c933c543a315e64dd2bd5c`

```dockerfile
```

-	Layers:
	-	`sha256:9417b4e4eb4b325ff96588a5c0f860d8923d1fd85517c87bc5de425e93825b67`  
		Last Modified: Mon, 26 Oct 2026 17:18:59 GMT  
		Size: 3.7 MB (3656672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7484945cdf3e09f5d01952bef4e819dae82085b2605dcb10d7f5c461e37de19`  
		Last Modified: Mon, 26 Oct 2026 17:18:59 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:13e7ef3ef3f389bf0f667e164270411c41942a65560436e8c14210778ae2dded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325645567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a3886952bdb114d0777b595716cdd6a1649d2d13851406de4e6c0c2df1a2a6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 17:18:23 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 26 Oct 2026 17:18:34 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 26 Oct 2026 17:18:34 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:18:34 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:18:34 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:18:34 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:18:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e20f43ed5f390f66f469cb34352499cf3682db8bff225f0f005ee8ef09a47da`  
		Last Modified: Mon, 26 Oct 2026 17:19:00 GMT  
		Size: 38.7 MB (38661708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aa8ab29ce8980e77d0ebd2e0ecdca171d0c3cae4bda3e1aaa5cb76a133e06`  
		Last Modified: Mon, 26 Oct 2026 17:19:04 GMT  
		Size: 241.2 MB (241183674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:86d27557938cefd05e8256693cc78b914e3e3209745b7d7388cd305e4d40c88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22293c2249ef2f896380ee118d9bb90f99d872f23f5d6b400d0d1f61bc5f1ed5`

```dockerfile
```

-	Layers:
	-	`sha256:eb1fca6268407a92e5930416dffbd34b339bca745dc1057d6d800c37af757360`  
		Last Modified: Mon, 26 Oct 2026 17:18:59 GMT  
		Size: 3.7 MB (3654282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3240c3b383e77157832e8b040ff94e984caae0d38744026433f3a319c762b28d`  
		Last Modified: Mon, 26 Oct 2026 17:18:58 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
