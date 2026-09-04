## `openjdk:28-ea-oracle`

```console
$ docker pull openjdk@sha256:689dc9e620f0710b253429673149c7f0dd3a4569bd7fee3624c31a87ec914bff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:84f4949d82e88b6a1b805da54d76e6aba87f2bcaa6f4db8a37d1fb280125b8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325643260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3b4add149d1f6241b51e451b408f1fe849ac66c2f311c0e2f40dc16d8971594`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 21:06:56 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 04 Sep 2026 21:07:06 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 04 Sep 2026 21:07:06 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:07:06 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:07:06 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:07:06 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:07:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cce60a0e304da619332a6afd7ab7fa7f8a8cdcb38b581c86c907b6bd22ef5b74`  
		Last Modified: Mon, 17 Aug 2026 21:45:14 GMT  
		Size: 44.8 MB (44847732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17781ae73a44fc83b2e58291ca12f158129c6e7adb552298c7b10bae8bed9fb`  
		Last Modified: Fri, 04 Sep 2026 21:07:32 GMT  
		Size: 38.2 MB (38243204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab0da9b7d7dfd2074d82e8ad39da17c93e8dcf0bb43e49a447cb0ec43eed749`  
		Last Modified: Fri, 04 Sep 2026 21:07:36 GMT  
		Size: 242.6 MB (242552324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:8d1598fd9a85f910c4a968a330a752533278f2dded3e0a92ba422f30c4c0fbb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69b23394ee7c8844659157d8f295ffd3b2eef0156cf029683e6495ed3e3a843`

```dockerfile
```

-	Layers:
	-	`sha256:43c1b33607126d86df189378312511e8794a214d5ca5538a0ccdd78b2cda8292`  
		Last Modified: Fri, 04 Sep 2026 21:07:30 GMT  
		Size: 2.4 MB (2403394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dadea0be4532fed8ea91fb6386b6ad1ad2525043335acf4d6e9a3a1d2fa0c0f`  
		Last Modified: Fri, 04 Sep 2026 21:07:30 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fb417d8a026144936abc761195e99f0d93f5729d18703a718179c1e351e09666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.2 MB (322224133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24573ccf13e2f5f7ec7b63ccc271cca8a8d595bc5b5b606bdd2f990e7bb54493`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 21:45:04 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 17 Aug 2026 21:45:04 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 21:06:26 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 04 Sep 2026 21:06:37 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 04 Sep 2026 21:06:37 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 21:06:37 GMT
ENV LANG=C.UTF-8
# Fri, 04 Sep 2026 21:06:37 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:06:37 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-x64_bin.tar.gz'; 			downloadSha256='9ce46af61f5bac746fdeddc1921b9f69c77732b8e3ebc98b99c4059c4a8441d9'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/14/GPL/openjdk-28-ea+14_linux-aarch64_bin.tar.gz'; 			downloadSha256='7edaebae503b6555db0e8cb19e65a5406e26b76254f40586da02bf31e26e4219'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 04 Sep 2026 21:06:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3b022e171bc331184ff5e191359e6a1e28b82390c5069e1dbe6e1bef22061cc5`  
		Last Modified: Mon, 17 Aug 2026 21:45:15 GMT  
		Size: 43.3 MB (43303666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071d0b2e91c5b03d268fd4807dfae4a8f2e43ba9a4dfb5dbb73d9e4f8c65d2d5`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 38.3 MB (38292533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7497bac6a82310fdc4f73ef51bbacefd4833bb3c7dfea975a6812aea3c6fd52`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 240.6 MB (240627934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:2794c01589cdf729947cf5011a6f33ebf90057659941229b8ca9412a022b2e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb474b5c8a6ab3e0e55fc5219490327bb05c8fffaa0295613db9f628f29d6eec`

```dockerfile
```

-	Layers:
	-	`sha256:014d52acaad28520a3e04029e2ed5eea00156424c306cdf8278fae0d1f758b9d`  
		Last Modified: Fri, 04 Sep 2026 21:07:02 GMT  
		Size: 2.4 MB (2402922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef335a5292a28b8e5124cb80e30e311a759c15ddcae1ec2de5661df8d2e4b6e9`  
		Last Modified: Fri, 04 Sep 2026 21:07:02 GMT  
		Size: 18.1 KB (18063 bytes)  
		MIME: application/vnd.in-toto+json
