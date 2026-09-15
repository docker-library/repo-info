## `openjdk:28-ea-15-oraclelinux10`

```console
$ docker pull openjdk@sha256:9cb042a97968b04db670e2c47f9f64c2d7ab3f8ce15a522f7e492be59b2ea4ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-15-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:57f72d2a7f8a5eca7dc441c3c184f9660df03a307f118875798cac22d02a201c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325828095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937d5678b6ac1bee35b66937780c70616ed77f42f3049a21f68e977ad905b216`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:54 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:54 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 21:38:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 15 Sep 2026 21:38:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 15 Sep 2026 21:38:11 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:38:11 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:38:11 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:38:11 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:38:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51ebae28b522ae451dcb4755f40b850034b90aac9a5ee084d5cf00124019006`  
		Last Modified: Tue, 08 Sep 2026 18:58:04 GMT  
		Size: 44.8 MB (44848156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424e12366970b79e8b4de5e8db81689379d76021834d945778e0e6e723a61f76`  
		Last Modified: Tue, 15 Sep 2026 21:38:35 GMT  
		Size: 38.2 MB (38239703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7d511f6a51183b079d08582bdfa28b81db9b52ed12aa7d3f22a5b35e3c59a3`  
		Last Modified: Tue, 15 Sep 2026 21:38:41 GMT  
		Size: 242.7 MB (242740236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:c79b6fe49f3e370911c03405cc167123c08620fc1c2632b37a0dd59ab563e25c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2457d281a6699b1cf0172dfecc5969b9b55f09969e331b943ce2f0645488a7c9`

```dockerfile
```

-	Layers:
	-	`sha256:3d02315abe864210384dc07757550c126be2ea84781a76618d573c8fe8a97149`  
		Last Modified: Tue, 15 Sep 2026 21:38:34 GMT  
		Size: 2.4 MB (2404039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c06da016c0306d49b48078883d78e75bc465a240d64ac02e2fb6316c54db15f`  
		Last Modified: Tue, 15 Sep 2026 21:38:34 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-15-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a90dcb74f4d91ba2c62d6046c64eddb6dd652282e2d20754e02c5fa6b59d21fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.4 MB (322400478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6d6aec45402293c70a5f93b94c6a82a0d5c62aa429a8f6c0b291818b6443609`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:06 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:06 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 21:44:01 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 15 Sep 2026 21:44:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 15 Sep 2026 21:44:20 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:44:20 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:44:20 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:44:20 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:44:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d69eefe7b81f7db3bb7240d32dae9ece515d7146f3e014e0b6e59b31a41a9bb0`  
		Last Modified: Tue, 08 Sep 2026 18:57:16 GMT  
		Size: 43.3 MB (43305657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9549bdb1fdf3be7226f57f58b811a32324aec167a6c88a689c7735c9f979104`  
		Last Modified: Tue, 15 Sep 2026 21:44:46 GMT  
		Size: 38.3 MB (38295594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e229deff07bf5e7072431644f9bf105c948a57c5e8a4043bedc7e59660bffce4`  
		Last Modified: Tue, 15 Sep 2026 21:44:50 GMT  
		Size: 240.8 MB (240799227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:bcf51f92846465c623d020236935aa2b01ad51fb289163e06f5a9afbd60135e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e78a9a907a96227be145cd7ffc24bb0ccecf5d6e94bfea04bc6df4047328386`

```dockerfile
```

-	Layers:
	-	`sha256:73ea4ee9c49a41e6f73f3279df84aa0fa400d72fd84f531b86bf392b294741ef`  
		Last Modified: Tue, 15 Sep 2026 21:44:44 GMT  
		Size: 2.4 MB (2403567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d793e5bf63c3d7ba0d595d90a7765064d1ad8c1cd5af0ddb5895b5235efb5f07`  
		Last Modified: Tue, 15 Sep 2026 21:44:44 GMT  
		Size: 18.1 KB (18065 bytes)  
		MIME: application/vnd.in-toto+json
