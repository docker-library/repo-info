## `openjdk:27-rc-oracle`

```console
$ docker pull openjdk@sha256:adc759fb90854d3adf01a36f40e7c2e91f022cf356dd10c823a6fe4db9933e1b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-rc-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:46baef3eb49cb41f59d186f6a76b99d85da5f11c019c5c30a3aebfb3f3aacd33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310109329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9588f13c7bbde3c5036e2afd07370892a521b3aa2e6eb0206dd58de62d173a21`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:54 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:54 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:21 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:29 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 08 Sep 2026 19:15:29 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:15:29 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:15:29 GMT
ENV JAVA_VERSION=27
# Tue, 08 Sep 2026 19:15:29 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:15:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51ebae28b522ae451dcb4755f40b850034b90aac9a5ee084d5cf00124019006`  
		Last Modified: Tue, 08 Sep 2026 18:58:04 GMT  
		Size: 44.8 MB (44848156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0861bf89cf8b8b11657c9414e65c4bc341a7e3e01b76b797c873fac672a5e53b`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 38.2 MB (38239869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e40e2d964766df3fa94e79a373b89ff13c44cc7888a90ffc85ed23efcd9a6b3`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 227.0 MB (227021304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:e6d1bfaea7e89b20762685e162328d484fecca8116984ae61b1dd1fdd40eff04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec4681e1fd1767a296aa57972de99b57c25df80ea84822d56062035f2dd67f9`

```dockerfile
```

-	Layers:
	-	`sha256:143445ad2094f91f49dd817b9e9e301db233199613d8f01ee08715feff76aa5b`  
		Last Modified: Tue, 08 Sep 2026 19:15:49 GMT  
		Size: 2.4 MB (2398888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3977f31382cfd2a6952bcb5120b062c6c1512a53ba2df4c2161ce8ae7bd6b1ae`  
		Last Modified: Tue, 08 Sep 2026 19:15:49 GMT  
		Size: 16.0 KB (15986 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-rc-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:909e84de0a133bf408af9349de5462155369ab0c72c4c0acb8b3a184b865d2a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306598338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90e0e9ad19b514e3d2df252837d1f6ccaa304869bb599d6b69763cbca830586`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:06 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:06 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:16:42 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:16:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 08 Sep 2026 19:16:51 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:16:51 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:16:51 GMT
ENV JAVA_VERSION=27
# Tue, 08 Sep 2026 19:16:51 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-x64_bin.tar.gz'; 			downloadSha256='95fc37eb3a18a27a26d5904c2d89d52bace8dafa9a078ca27f4747fbc4bf070b'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_linux-aarch64_bin.tar.gz'; 			downloadSha256='da4e9dde1fff90204739e969187bab4751bd59a2a1c479672e1a1810f7dd23ea'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 08 Sep 2026 19:16:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d69eefe7b81f7db3bb7240d32dae9ece515d7146f3e014e0b6e59b31a41a9bb0`  
		Last Modified: Tue, 08 Sep 2026 18:57:16 GMT  
		Size: 43.3 MB (43305657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f170ab1ceaf99503ae82698141ef6e3780679bcb972756e7057091178206eae6`  
		Last Modified: Tue, 08 Sep 2026 19:17:14 GMT  
		Size: 38.3 MB (38293370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e993ba3d05a8a5c5facbe6ed168311f677493c8f47185a1d592d0cc2308c9ae4`  
		Last Modified: Tue, 08 Sep 2026 19:17:17 GMT  
		Size: 225.0 MB (224999311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-rc-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:21ce5b1068179a30c2d7811996fe1818183cd8dc882a190752d84dcbe9053f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce792ee44de91fe1b58dea9fe4782830cbbb49706e56a9ebbf05a26f06e45d5c`

```dockerfile
```

-	Layers:
	-	`sha256:4915848069a3bb571e0d771b2f18e2b11b669061c8bf4b9f75b7b6e7353c3190`  
		Last Modified: Tue, 08 Sep 2026 19:17:13 GMT  
		Size: 2.4 MB (2398344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b74a101eb2ea9f550a5f322934f7cc2e4578f28fa02c7893458f8e766f01bfb`  
		Last Modified: Tue, 08 Sep 2026 19:17:12 GMT  
		Size: 16.1 KB (16129 bytes)  
		MIME: application/vnd.in-toto+json
