## `openjdk:28-ea-oracle`

```console
$ docker pull openjdk@sha256:25f2442d44f69ff7e8c891a480266ba7dac5998142eb981776ea0f4e952e1099
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oracle` - linux; amd64

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

### `openjdk:28-ea-oracle` - unknown; unknown

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

### `openjdk:28-ea-oracle` - linux; arm64 variant v8

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

### `openjdk:28-ea-oracle` - unknown; unknown

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
