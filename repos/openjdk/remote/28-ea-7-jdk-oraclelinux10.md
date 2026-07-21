## `openjdk:28-ea-7-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:3bb5d85da7dd9b4f4708eeba80fe1b591e1f355a12cd71f7f573995ae848fc27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-7-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:a098dd77c7ca385ed5285680cf39e68c69c63b9857d51a136dab0d496b1f4428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309162176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621b29dbbcf4f5f475ea4ff5d45868eba65925900c851b7412c297d29a05eae3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:50:20 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:50:20 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 19:10:20 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 19:11:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 21 Jul 2026 19:11:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 19:11:17 GMT
ENV LANG=C.UTF-8
# Tue, 21 Jul 2026 19:11:17 GMT
ENV JAVA_VERSION=28-ea+7
# Tue, 21 Jul 2026 19:11:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 21 Jul 2026 19:11:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:df759467e6bbd20071f2c29724e5d041a3291f7473f57c7186fc4d31f0aca1a0`  
		Last Modified: Tue, 21 Jul 2026 18:50:30 GMT  
		Size: 44.8 MB (44832339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e84ac769025b735ad963c991fc844729d330bf00b06c1a99cdc3e0af9fc380`  
		Last Modified: Tue, 21 Jul 2026 19:10:55 GMT  
		Size: 36.9 MB (36854490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf453b16e78b882e871779df7f6333723956d29f929dc569c36955dde6010e6`  
		Last Modified: Tue, 21 Jul 2026 19:11:42 GMT  
		Size: 227.5 MB (227475347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:4dc6144c2a6395586554832133f21fadef37d2b34aaada5021c0cbf41eb6af9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e8806ee56caebbfa6410ee24e1597f8113ab52a4976b96dec06e695899c421`

```dockerfile
```

-	Layers:
	-	`sha256:e0e9b435d413d7f365480344f8d0dbabe29d8ee4ca783e50b9b9e2d4002829ee`  
		Last Modified: Tue, 21 Jul 2026 19:11:37 GMT  
		Size: 2.4 MB (2373333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a679ce4d8bc50100fbc292ad500f70fc939a9a2c81ca8524c90debf3e502998`  
		Last Modified: Tue, 21 Jul 2026 19:11:37 GMT  
		Size: 17.8 KB (17829 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-7-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ad48824426404c6fa8f63192da01b7ad552eb34c8f171b57d4a53291e0515de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305713541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1186a2c47c51f9a02c6e88adfea4594727dccb0e55378ff1fc9ad64703a05`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 18:52:18 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 21 Jul 2026 18:52:18 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 19:10:56 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 19:11:52 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 21 Jul 2026 19:11:52 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 19:11:52 GMT
ENV LANG=C.UTF-8
# Tue, 21 Jul 2026 19:11:52 GMT
ENV JAVA_VERSION=28-ea+7
# Tue, 21 Jul 2026 19:11:52 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-x64_bin.tar.gz'; 			downloadSha256='dd4e1eccff978244037ccc2f0cc2bbc5a8763edd9734aaf4276e32df4a758fac'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/7/GPL/openjdk-28-ea+7_linux-aarch64_bin.tar.gz'; 			downloadSha256='27f51da33f338b8f7fceaed8bd13c79b9c19a07cfd33f2f6cf03750f56debeca'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 21 Jul 2026 19:11:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69697324910cd47582b011f7d2dbbd4188f1ca0467757cf5ae705e312d03c95d`  
		Last Modified: Tue, 21 Jul 2026 18:52:29 GMT  
		Size: 43.3 MB (43287893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4792d47620872b62ba02bc240adad146c152d03519562f02b977a4476bb07dc2`  
		Last Modified: Tue, 21 Jul 2026 19:11:31 GMT  
		Size: 36.9 MB (36903105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1544074ad5c13d1a0f8f5c0fc99e51b3ef05ee19b2dc926059e8fb7893efd1c`  
		Last Modified: Tue, 21 Jul 2026 19:12:17 GMT  
		Size: 225.5 MB (225522543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-7-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:d73512ca3b590f623ecd5fcb5f3d66e563b521247084f7e10a3d49747dcdca35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401042838b0baf333ebedcca93e5f7bc7c8169d954bb81bca57f95959a1ee89c`

```dockerfile
```

-	Layers:
	-	`sha256:1792293d8e9b42136d22af1d47c416dd584d7e805283c7eb2d9b0bb8ff6abb98`  
		Last Modified: Tue, 21 Jul 2026 19:12:14 GMT  
		Size: 2.4 MB (2372861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca6d6c844bca3e3434d8a6b6fdc62991dabaf3eb4cace9d954311ae99bfb1989`  
		Last Modified: Tue, 21 Jul 2026 19:12:12 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json
