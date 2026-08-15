## `openjdk:28-ea-oracle`

```console
$ docker pull openjdk@sha256:907608da09bf63cd97e96d2ecdf0067bac33d69004e34c11ce91122fe6aa8294
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oracle` - linux; amd64

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

### `openjdk:28-ea-oracle` - unknown; unknown

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

### `openjdk:28-ea-oracle` - linux; arm64 variant v8

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

### `openjdk:28-ea-oracle` - unknown; unknown

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
