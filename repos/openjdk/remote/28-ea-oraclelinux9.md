## `openjdk:28-ea-oraclelinux9`

```console
$ docker pull openjdk@sha256:0fc62c1ab035cf2cf5330201aaac518880a1160dc57eebb57ad45321690cd155
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:a8736bb274122afa707022f4f5fa656c9cc306f0a2f6b1b04878a3c8d7290d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (328958652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987f6547ca3c6ff3a6452d41c83094f1a33cf34cec346980264cd5ce9193bf42`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 21:38:32 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 15 Sep 2026 21:38:43 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 15 Sep 2026 21:38:43 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:38:43 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:38:43 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:38:43 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:38:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f8beff8458ab97c881e9507ea59611780230c36fcfac662405525d63a471f`  
		Last Modified: Tue, 15 Sep 2026 21:39:09 GMT  
		Size: 38.3 MB (38287204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e498c40adf14996824f44682ec25b93d1c3d655334ada9643382886abed0b8`  
		Last Modified: Tue, 15 Sep 2026 21:39:12 GMT  
		Size: 242.7 MB (242740129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:75f8f41f0969cc7be4942baa0a9fcde6459bdd18e4856c93636a7359b4f276f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511a10c4df897224b43d4cfeb937a7ad43cfe67ef2bf36960e7ed95b17b704c6`

```dockerfile
```

-	Layers:
	-	`sha256:c4db26de71fe993e591b6648bf6bebc29c0a0bc478e26eb5dfdee739b4cc62fa`  
		Last Modified: Tue, 15 Sep 2026 21:39:07 GMT  
		Size: 3.7 MB (3656644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1208238a20497c573944e63ffe2a471ebcb1958ccf5643b9800be7fd0d7c0d91`  
		Last Modified: Tue, 15 Sep 2026 21:39:06 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:dee6b5f583d33f4a51800404d7f39e9e3c1b9909ebd8411272063a80f7c7c349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.0 MB (325964677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9049b7b928abb1a3d0d3261a9a656c2f1cc8571a60272fc5f40aa4d2d61b4261`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 21:44:39 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 15 Sep 2026 21:44:49 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 15 Sep 2026 21:44:49 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:44:49 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:44:49 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:44:49 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:44:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcab1315bb9168e53de30721ad4395a58e865d0e5f8713626e87f65b97fc426c`  
		Last Modified: Tue, 15 Sep 2026 21:45:15 GMT  
		Size: 38.7 MB (38687583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4efb012fbda59c281c1e0a9f94f6992e6ca391c574382c612942071241c3e7`  
		Last Modified: Tue, 15 Sep 2026 21:45:18 GMT  
		Size: 240.8 MB (240798948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:e6c05dff17f87e6dce0483b1516a3ea5a670c441db701bd7f0655c9ee842e199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:509a8334aaff04e24f44219f5cb0c8d58ccc29d20283cb1e12fc01f3a09d1527`

```dockerfile
```

-	Layers:
	-	`sha256:3f49fc05febe48b1f08e9612054e19153e8fd95acfce368ae3cb3c3301c0bb61`  
		Last Modified: Tue, 15 Sep 2026 21:45:13 GMT  
		Size: 3.7 MB (3654254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c11e0221c2cd1fd86c36ab12564e0f33743245172ff98eb9d661ac1661879749`  
		Last Modified: Tue, 15 Sep 2026 21:45:13 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
